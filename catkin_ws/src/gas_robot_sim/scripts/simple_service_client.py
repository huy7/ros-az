#usr/bin/env python3

import rospy
from gas_robot_sim.srv import Greeting

def main():
    rospy.init_node('simple_service_client')

    # Wait for the service to become available
    rospy.wait_for_service('greeting')
    try:
        # Create a service proxy
        greeting_service = rospy.ServiceProxy('greeting',Greeting)
        # Call the service
        response = greeting_service()
        rospy.loginfo(f"Received response: {response.message}")
if __name__ == '__main__':
    main()