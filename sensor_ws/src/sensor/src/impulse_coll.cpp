#include <iostream>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32MultiArray.h>
#include <std_msgs/Int16MultiArray.h>
#include <wittenstein_msgs/wittenstein.h>
#include <rosbag/bag.h>
#include <sensor_msgs/JointState.h>
using namespace std;

wittenstein_msgs::wittenstein global_msg;
int16_t acc_z1, acc_z2, acc_z3, acc_z4, acc_z5;
float witt;

int trials = 200;
int trial = 0;
int bagg = 500; // *5
float poss = 0.0;
int ch = 0;
float curr = 0.0;
int intro = 0;
int margin_f = -15;
int sl = 0;

void chatterCallback(const std_msgs::Int16MultiArray::ConstPtr& msg2)
{
	acc_z1 = msg2->data[0];
	acc_z2 = msg2->data[1];
	acc_z3 = msg2->data[2];
	acc_z4 = msg2->data[3];
	acc_z5 = msg2->data[4];
}

void callback(const wittenstein_msgs::wittenstein::ConstPtr& msg){
	global_msg.fx = msg->fx;
	global_msg.fy = msg->fy;
	global_msg.fz = msg->fz;
	witt = msg->fz;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "listener_global");
	ros::NodeHandle n;
	ros::Rate rate(500); // *5 = 2500Hz

	int count = 0;

	ros::Subscriber sub_teensy = n.subscribe("chatter", 10, chatterCallback);
	ros::Subscriber sub_wittenstein = n.subscribe("wittenstein_topic", 10, callback);

	std::string bag_name = "impulse_coll.bag";
	rosbag::Bag bag(bag_name, rosbag::bagmode::Write);

	while(ros::ok()){		
		if (acc_z1 == 100 && acc_z5 == 100){
			sl++;
			ROS_INFO("here");
		}
		
		if (sl > 0){
			ROS_INFO("%d Grip completed. BEGINNING ACQUISITION", sl);

			std_msgs::Float64MultiArray data_out;
			data_out.data.resize(1);
		
			data_out.data[0] = acc_z1;

			bag.write("write", ros::Time::now(), data_out);

			data_out.data[0] = acc_z2;

			bag.write("write", ros::Time::now(), data_out);

			data_out.data[0] = acc_z3;

			bag.write("write", ros::Time::now(), data_out);

			data_out.data[0] = acc_z4;

			bag.write("write", ros::Time::now(), data_out);

			data_out.data[0] = acc_z5;
			
			bag.write("write", ros::Time::now(), data_out);
	
		}
		
		if(sl == 2){
			bag.close();
			return 0;
		
		}
		ros::spinOnce();
		rate.sleep();
	}
}
