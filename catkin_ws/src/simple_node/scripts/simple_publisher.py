#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def main():
    #init node
    rospy.init_node('simple_publisher')
    pub = rospy.Publisher('/simple_topic', String, queue_size=10)
    rate = rospy.Rate(0.5)
    while not rospy.is_shutdown():
        pub.publish('Hello World')
        rospy.loginfo('Message sent at %s', rospy.get_time())
        rate.sleep()

if __name__ == '__main__':
    main()