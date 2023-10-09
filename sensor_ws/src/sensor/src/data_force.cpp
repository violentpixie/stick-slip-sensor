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
int acc_z1, acc_z2,acc_z3, acc_z4, acc_z5;
int out1, out2, out3, out4, out5;
float witt;
int thr = 0;
int rec = 0;
int cnt = 0;
int acc_sum = 0;

float f_desired = -5.0;
float old_poss = 20.0, new_poss = 0.0, err = 0.0, step = 0.01, step_b = 3.0;

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
	sensor_msgs::JointState schunk_st;

	std_msgs::Float32MultiArray grip;
	grip.data.resize(2);

	ros::Subscriber sub_teensy = n.subscribe("chatter", 1, chatterCallback);
	ros::Subscriber sub_wittenstein = n.subscribe("wittenstein_topic", 1, &callback);
	ros::Publisher pub = n.advertise<std_msgs::Float32MultiArray>("setData", 1);

	std::string bag_name = "data_force.bag";
	rosbag::Bag bag(bag_name, rosbag::bagmode::Write);

	while(ros::ok()){
		
		if(witt < -15){
			ROS_INFO("URGENT STOP| pos: %.5f", new_poss);
			return 0;
		} else if (witt > -0.5){
			new_poss = old_poss - step_b;
			
			grip.data[0] = 20;
			grip.data[1] = new_poss;

			pub.publish(grip);

			old_poss = new_poss;
			if(step_b > 0.001){
				step_b = step_b/10;
			} else {
				step_b = 0.001;
			}
		}else{
			if(rec == 0){
				err = (abs(witt)-abs(f_desired))/abs(f_desired);			
				new_poss = old_poss + err*0.001;
				ROS_INFO("POS: %.5f | ERROR: %.5f | FORCE: %.5f | %d", new_poss, err, witt, thr);

				grip.data[0] = 20;
				grip.data[1] = new_poss;

				pub.publish(grip);
				old_poss = new_poss;
			
				if(abs(abs(witt)-abs(f_desired))<=0.01){
					thr++;
				}
				if(thr >= 300){
					ROS_INFO("GOAL ACHIEVED - END FORCE = %.5f N", witt);
					rec = 1;
				}
			} else {
				cnt++;
				std_msgs::Float64MultiArray data_out;
				
				if(acc_z1+acc_z2+acc_z3+acc_z4+acc_z5 == 0 || acc_sum == 1){
					acc_sum = 1;
					data_out.data.resize(1);

					//data_out.data[0] = out1;
					data_out.data[0] = acc_z1;	
					bag.write("write", ros::Time::now(), data_out);

					//data_out.data[0] = out2;
					data_out.data[0] = acc_z2;	
					bag.write("write", ros::Time::now(), data_out);

					//data_out.data[0] = out3;
					data_out.data[0] = acc_z3;	
					bag.write("write", ros::Time::now(), data_out);

					//data_out.data[0] = out4;
					data_out.data[0] = acc_z4;	
					bag.write("write", ros::Time::now(), data_out);
				
					//data_out.data[0] = out5;
					data_out.data[0] = acc_z5;	
					bag.write("write", ros::Time::now(), data_out);

					if (cnt == 500){
						ROS_INFO("END of the trial. Exiting...");
						return 0;
					}
				}
			}
		}
		ros::spinOnce();
		rate.sleep();	
	}
}
