#!/usr/bin/env python
import rospy
import subprocess, time, re
from py_pkg import util
from py_pkg.msg import InputStates

# Initialize the node with rospy
rospy.init_node('publisher_node')

# Create publisher
publisher = rospy.Publisher("usr_input", InputStates, queue_size=10)

value_regex = re.compile('(?<=ue ).+')

# Define Timer callback
def callback(event):
    input_list = []
    events_array = []
    while len(events_array) < 19:
        proc = subprocess.Popen(['jstest', '--event', '/dev/input/js0'], stdout=subprocess.PIPE)
        time.sleep(0.01)
        proc.kill()
        output = proc.stdout.read()
        
        events_array = str(output).split('Event')
        del events_array[0]
        
    for i in range(19):
        num = int(value_regex.findall(events_array[i])[0])      
        input_list.append(num)
    
    msg = InputStates()
    msg.data = input_list
    publisher.publish(msg)
    
    rospy.loginfo(input_list)

# Read parameter
pub_period = rospy.get_param("~pub_period", 0.05)

# Create timer
rospy.Timer(rospy.Duration.from_sec(pub_period), callback)

# spin to keep the script for exiting
rospy.spin()
