#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def callback(msg):
    rospy.loginfo('Message received: %s', msg.data)

def main():
    rospy.init_node('simple_subscriber')
    sub = rospy.Subscriber('simple_topic', String, callback)
    rospy.spin()

if __name__ == '__main__':
    main()
