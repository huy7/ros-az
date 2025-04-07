#!/usr/bin/env python3

import rospy
from gas_robot_sim.srv import Greeting
from std_msgs.msg import String

def handle_request():
    return Greeting.Response("Xin chao toi la Huy service")

def main():
    rospy.init_node('simple_service_server')
    # Create a service server

    service = rospy.Service('greeting', Greeting, handle_request)
    rospy.loginfo("Service server is ready.")


if __name__ == '__main__':
    main()