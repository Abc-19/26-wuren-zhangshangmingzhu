#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>

class PointCloudProcessor {
public:
    PointCloudProcessor() : nh_("~") {
        // 订阅三个雷达话题
        sub1_ = nh_.subscribe("/carla/ego_vehicle/lidar_mid", 10, 
                             &PointCloudProcessor::cloudCallback, this);
        sub2_ = nh_.subscribe("/carla/ego_vehicle/lidar_up", 10, 
                             &PointCloudProcessor::cloudCallback, this);
        sub3_ = nh_.subscribe("/carla/ego_vehicle/lidar_down", 10, 
                             &PointCloudProcessor::cloudCallback, this);
        
        // 发布处理后的点云
        pub_ = nh_.advertise<sensor_msgs::PointCloud2>("/lidar_points", 10);
    }

    void cloudCallback(const sensor_msgs::PointCloud2ConstPtr& msg) {
        // 转换为PCL格式
        pcl::PointCloud<pcl::PointXYZI>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZI>);
        pcl::fromROSMsg(*msg, *cloud);
        
        // 拼接点云
        combined_cloud_ += *cloud;
    }

    void processAndPublish() {
        // 修改强度值 (0~1 => 1~256)
        for (auto& point : combined_cloud_) {
            point.intensity = 1 + point.intensity * 255;
        }
        
        // 转换为ROS消息
        sensor_msgs::PointCloud2 output;
        pcl::toROSMsg(combined_cloud_, output);
        output.header.frame_id = "lidar";
        
        // 发布点云
        pub_.publish(output);
        
        // 清空点云
        combined_cloud_.clear();
    }

private:
    ros::NodeHandle nh_;
    ros::Subscriber sub1_, sub2_, sub3_;
    ros::Publisher pub_;
    pcl::PointCloud<pcl::PointXYZI> combined_cloud_;
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "pointcloud_processor");
    PointCloudProcessor processor;
    
    // 定时处理并发布点云 (1Hz)
    ros::Rate rate(1);
    while (ros::ok()) {
        processor.processAndPublish();
        ros::spinOnce();
        rate.sleep();
    }
    
    return 0;
}
