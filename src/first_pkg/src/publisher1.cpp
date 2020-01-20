#include "ros/ros.h"
#include "std_msgs/String.h"
#include "first_pkg/srv1.h"

#include <sstream>
#include <wiringPi.h>

int main(int argc,char **argv) {
	ros::init(argc, argv, "talker");
	ros::NodeHandle n;
	
	ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
	ros::ServiceClient client = n.serviceClient<first_pkg::srv1>("srv1");
	
	first_pkg::srv1 srv;
	ros::Rate loop_rate(10);
	
	int count = 0;
	while(ros::ok()) {
		std_msgs::String msg;		
		std::stringstream ss;
		
		//ss << "Hello, World " << count;
		//msg.data = ss.str();
		//ROS_INFO("%s", msg.data.c_str());
		
		//chatter_pub.publish(msg);
		
		srv.request.num2 = count % 2;
		srv.request.num1 = 10;
		if(client.call(srv)) {
			ROS_INFO("%d", srv.response.result);
		}
		else {
			ROS_ERROR("Catastrophic failure - dun goofed");
		}
		ros::spinOnce();
		loop_rate.sleep();
		++count;
	}
	
	return 0;
}

