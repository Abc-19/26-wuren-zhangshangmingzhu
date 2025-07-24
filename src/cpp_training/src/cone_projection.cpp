#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>

class ConeProjector {
private:
    ros::NodeHandle nh_;
    ros::Subscriber cone_sub_;
    
    // 修正回调函数签名
    void coneCallback(const fsd_common_msgs::ConeDetections::ConstPtr& msg);
    
    cv::Mat K_;
    cv::Mat distCoeffs_;

public:
    ConeProjector() {
        // 正确初始化内参矩阵
      K_ = (cv::Mat_<double>(3, 3) << 
     1000, 0, 320,
     0, 1000, 240,
     0, 0, 1);
        
        // 正确初始化畸变系数
distCoeffs_ = (cv::Mat_<double>(1, 5) << 0, 0, 0, 0, 0);
        
        // 修正订阅调用 (添加消息类型模板)
        cone_sub_ = nh_.subscribe<fsd_common_msgs::ConeDetections>(
            "/cone_detections", 10, &ConeProjector::coneCallback, this);
    }
};

// 修正回调实现签名
void ConeProjector::coneCallback(const  sensor_msgs::PointCloud2::ConstPtr& msg) {
    // 处理代码
}
