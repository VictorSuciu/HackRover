#include "ros/ros.h"
#include "first_pkg/srv1.h"
#include <wiringPi.h>

bool service_callback(first_pkg::srv1::Request &req, first_pkg::srv1::Response &resp) {
	
	
	if(req.num2 != 0) {
		digitalWrite(25, 1);
		ROS_INFO("ON");
	}
	else {
		digitalWrite(25, 0);
		ROS_INFO("OFF");
	}
	resp.result = 0;
	return true;
	
}
int main(int argc, char **argv) {
	ros::init(argc, argv, "service1");
	ros::NodeHandle nodeHandle;
	
	wiringPiSetup();
	pinMode(25, OUTPUT);
	
	ros::ServiceServer service = nodeHandle.advertiseService("srv1", service_callback);
	ROS_INFO("Ready to do the servicing");
	ros::spin();
	return 0;
}
