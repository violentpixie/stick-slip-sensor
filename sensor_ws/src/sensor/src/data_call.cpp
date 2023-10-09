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
int acc_x1, acc_y1, acc_z1, acc_x2, acc_y2, acc_z2, acc_x3, acc_y3, acc_z3, acc_x4, acc_y4, acc_z4, acc_x5, acc_y5, acc_z5;
float witt;

int trials = 500;
int ac = 0;
int count = 0;
float f_desired = -1.0;
int trial = 0;
int bagg = 200; // *5 samples per bag = 1000 samples per bag
float poss = 0.0;
int ch = 0;
float curr = 0.0;
int intro = 0;
int margin_f = -15;
int sl = 0;

void chatterCallback(const std_msgs::Int16MultiArray::ConstPtr& msg2)
{
	acc_x1 = msg2->data[0];
	acc_y1 = msg2->data[1];
	acc_z1 = msg2->data[2];

	acc_x2 = msg2->data[3];
	acc_y2 = msg2->data[4];
	acc_z2 = msg2->data[5];

	acc_x3 = msg2->data[6];
	acc_y3 = msg2->data[7];
	acc_z3 = msg2->data[8];

	acc_x4 = msg2->data[9];
	acc_y4 = msg2->data[10];
	acc_z4 = msg2->data[11];

	acc_x5 = msg2->data[12];
	acc_y5 = msg2->data[13];
	acc_z5 = msg2->data[14];
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
	sensor_msgs::JointState schunk_st;

	int count = 0;
	std_msgs::Float32MultiArray grip;
	grip.data.resize(2);

	ros::Subscriber sub_teensy = n.subscribe("chatter", 1, chatterCallback);
	ros::Subscriber sub_wittenstein = n.subscribe("wittenstein_topic", 1, &callback);
	ros::Publisher pub = n.advertise<std_msgs::Float32MultiArray>("setData", 1);

	std::string bag_name = "active_glove.bag";
	rosbag::Bag bag(bag_name, rosbag::bagmode::Write);

	while(ros::ok()){
		if(witt>=-1 && intro==0){ // squezeeing until object is detected
			curr = 20-0.0005*ch;
			grip.data[0] = 20;
			grip.data[1] = curr;
			
			ch++;

			pub.publish(grip);

			ros::spinOnce();
			rate.sleep();	
		}else{ // once the grip is established (only one time)
			if(intro == 0){
				intro = 1;				
				ROS_INFO("Grip completed. BEGINNING ACQUISITION");
				ch = 0;
			}
				
	
			if(witt<=margin_f || trial==trials ){ // stop condition
				ROS_INFO("Closing.. Final N of trials: %d", trial);
				bag.close();
				return 0;
			}
			
			if(ac == 0){ // acquisition false - force is not achieved yet
				poss = curr-0.0005*ch;

				ch++;
				grip.data[0] = 20;
				grip.data[1] = poss;

				pub.publish(grip);

				if(witt <= f_desired){
					ac = 1; // force achieved - start acquisition
				}
			}else if(ac == 1){ // force achieved - start acquisition

				if(count == bagg+1){
					ac = 0;
					count = 0;
					f_desired = f_desired - 0.25;
					trial++;
					ROS_INFO("Recording data for  %.10f N (Real: %.10f)", f_desired,witt);
				}
				
				// start data transmission
				count++;
				std_msgs::Float64MultiArray data_out;

				data_out.data.resize(5);
				data_out.data[0] = f_desired;
				data_out.data[1] = witt;
				data_out.data[2] = acc_x1;
				data_out.data[3] = acc_y1;
				data_out.data[4] = acc_z1;	

				bag.write("write", ros::Time::now(), data_out);

				data_out.data[0] = f_desired;
				data_out.data[1] = witt;
				data_out.data[2] = acc_x2;
				data_out.data[3] = acc_y2;
				data_out.data[4] = acc_z2;	

				bag.write("write", ros::Time::now(), data_out);

				data_out.data[0] = f_desired;
				data_out.data[1] = witt;
				data_out.data[2] = acc_x3;
				data_out.data[3] = acc_y3;
				data_out.data[4] = acc_z3;	

				bag.write("write", ros::Time::now(), data_out);

				data_out.data[0] = f_desired;
				data_out.data[1] = witt;
				data_out.data[2] = acc_x4;
				data_out.data[3] = acc_y4;
				data_out.data[4] = acc_z4;	

				bag.write("write", ros::Time::now(), data_out);

				data_out.data[0] = f_desired;
				data_out.data[1] = witt;
				data_out.data[2] = acc_x5;
				data_out.data[3] = acc_y5;
				data_out.data[4] = acc_z5;	

				bag.write("write", ros::Time::now(), data_out);
			}
			ros::spinOnce();
			rate.sleep();	
		}
		
	}
}
