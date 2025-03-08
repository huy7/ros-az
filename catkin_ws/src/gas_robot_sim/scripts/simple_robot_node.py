#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Pose2D
import random
import math

class SimpleRobotNode:
    def __init__(self):
        # Initialize the ROS node
        rospy.init_node('simple_robot_node', anonymous=True)
        
        # Create a publisher for the robot's position
        self.pose_pub = rospy.Publisher('robot_pose', Pose2D, queue_size=10)
        
        # Set the publishing rate (in Hz)
        self.rate = rospy.Rate(10)
        
        # Initialize robot pose
        self.pose = Pose2D()
        self.pose.x = 0.0
        self.pose.y = 0.0
        self.pose.theta = 0.0
        
        rospy.loginfo("Simple Robot Node initialized")
    
    def update_pose(self):
        # Simple random walk behavior
        step_size = 0.1
        turn_rate = 0.1
        
        # Update orientation with some random rotation
        self.pose.theta += random.uniform(-turn_rate, turn_rate)
        
        # Move in the direction of orientation
        self.pose.x += step_size * math.cos(self.pose.theta)
        self.pose.y += step_size * math.sin(self.pose.theta)
        
        # Publish the updated pose
        self.pose_pub.publish(self.pose)
        
        # Log position occasionally (every ~5 seconds)
        if random.random() < 0.02:
            rospy.loginfo(f"Robot at position: ({self.pose.x:.2f}, {self.pose.y:.2f})")
    
    def run(self):
        # Main loop
        while not rospy.is_shutdown():
            self.update_pose()
            self.rate.sleep()

if __name__ == '__main__':
    try:
        node = SimpleRobotNode()
        node.run()
    except rospy.ROSInterruptException:
        pass