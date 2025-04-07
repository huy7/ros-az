#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def main():
    rospy.init_node('one_time_listener')

    # Create a one-time subscriber
    try:
        message = rospy.wait_for_message('simple_topic', String, timeout=5)
        rospy.loginfo('Message received: %s', message.data)
    except rospy.ROSException as e:
        rospy.logerr("No message received within the timeout period: %s", str(e))
    rospy.spin()

if __name__ == '__main__':
    main()