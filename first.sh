#!/bin/sh

DONT_RUN=1 make px4_sitl_default gazebo

source ~/catkin_ws/devel/setup.bash 
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo


cd launch/
roslaunch first_world.launch

rosrun robot_setup_tf tf_broadcaster 



