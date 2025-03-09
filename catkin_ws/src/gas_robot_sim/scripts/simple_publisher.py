#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def main():
    rospy.init_node('simple_publisher')
    pub = rospy.Publisher('simple_topic', String, queue_size=10)
    rate = rospy.Rate(0.5)
    while not rospy.is_shutdown():
        pub.publish('Hello World!')
        rospy.loginfo('Publishing message at: %s', rospy.Time.now())
        rate.sleep()

if __name__ == '__main__':
    main()