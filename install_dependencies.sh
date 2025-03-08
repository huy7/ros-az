#!/bin/bash

echo "Installing ROS dependencies for gas_robot_sim package..."

# Update package lists
sudo apt-get update

# Install ROS package dependencies
sudo apt-get install -y \
  ros-noetic-geometry-msgs \
  ros-noetic-rospy \
  ros-noetic-std-msgs \
  python-is-python3 \
  python3-rosdep

# Initialize rosdep if it hasn't been initialized yet
if [ ! -d "/etc/ros/rosdep" ]; then
  sudo rosdep init
fi
rosdep update

# Use rosdep to install any remaining dependencies
cd /workspaces/ros-az/catkin_ws
rosdep install --from-paths . --ignore-src -y

echo "All dependencies have been installed successfully!"
