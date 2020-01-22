#!/usr/bin/env python


# Index to Control key
# 0  - A
# 1  - B
# 2  - X
# 3  - Y
# 4  - DigitalTrigger L
# 5  - DigitalTrigger R
# 6  - SmallBtn L
# 7  - SmallBtn R
# 8  - 
# 9  - JoyBtn L
# 10 - JoyBtn R
# 11 - LJoy X
# 12 - LJoy Y
# 13 - AnalogTrigger L
# 14 - RJoy X
# 15 - RJoy Y
# 16 - AnalogTrigger R
# 17 - DPad X
# 18 - DPad Y


import rospy
from py_pkg import control_functions
from py_pkg.msg import InputStates

def callback(data):
    control_functions.update_rover_state(data.data)
    
def listener():
    rospy.init_node('control_output', anonymous=True)
    rospy.Subscriber('usr_input', InputStates, callback)
    
    rospy.spin()
    
if __name__ == '__main__':
    listener()

