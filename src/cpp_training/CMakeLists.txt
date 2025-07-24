cmake_minimum_required(VERSION 3.0.2)
project(cpp_training)

# 设置C++标准
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 查找依赖包
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  sensor_msgs
  cv_bridge
  pcl_conversions
  pcl_ros
  message_filters
  eigen_conversions
  message_generation
 
)

# 添加自定义消息
add_message_files(
  FILES
  Cone.msg
  ConeDetections.msg
)

# 生成消息
generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
)

# 查找其他依赖
find_package(OpenCV REQUIRED)
find_package(PCL 1.10 REQUIRED COMPONENTS common)
find_package(Eigen3 REQUIRED)

# 设置包含目录
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
  ${PCL_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIR}
)

# 声明catkin包
catkin_package(
  CATKIN_DEPENDS 
    roscpp 
    std_msgs 
    sensor_msgs 
 

  LIBRARIES cpp_training
)

# 添加可执行文件
add_executable(cone_projection src/cone_projection.cpp)
target_link_libraries(cone_projection
  ${catkin_LIBRARIES}
  ${OpenCV_LIBRARIES}
)

add_executable(pointcloud_merge src/pointcloud_merge.cpp)
target_link_libraries(pointcloud_merge
  ${catkin_LIBRARIES}
  ${PCL_LIBRARIES}
)

# 安装目标
install(TARGETS cone_projection pointcloud_merge
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)
