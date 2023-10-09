/*********************************************************************************************//**
* @file ezn64_usb_control_lib.h
*
* Copyright (c)
* SmartRoboticSystems
* September 2015
*
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* Redistributions of source code must retain the above copyright notice, this
* list of conditions and the following disclaimer.
*
* Redistributions in binary form must reproduce the above copyright notice,
* this list of conditions and the following disclaimer in the documentation
* and/or other materials provided with the distribution.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
* *********************************************************************************************/

/* Author: Frantisek Durovsky */

#ifndef EZN64_USB_CONTROL_H
#define EZN64_USB_CONTROL_H

#include <ros/ros.h>
#include <libusb-1.0/libusb.h>
#include <tf/transform_broadcaster.h>
#include <sensor_msgs/JointState.h>

///Service headers
#include <schunk_ezn64/reference.h>
#include <schunk_ezn64/set_position.h>
#include <schunk_ezn64/get_error.h>
#include <schunk_ezn64/get_position.h>
#include <schunk_ezn64/set_velocity.h>
#include <schunk_ezn64/get_velocity.h>
#include <schunk_ezn64/acknowledge_error.h>
#include <schunk_ezn64/stop.h>
#include <schunk_ezn64/fastStop.h>
#include <schunk_ezn64/PosAndSpeedFloat32.h>

#include <std_msgs/Float32MultiArray.h>
/** \brief Control of Schunk EZN64 gripper */
namespace schunk_ezn64
{

/** \brief Client class for EZN64 USB control */  
class EZN64_usb
{
public:
  
  /** \brief Construct a client for EZN64 USB control*/  
  EZN64_usb(ros::NodeHandle *nh);
  
  ~EZN64_usb();
  
  /** \brief Reference service callback */
  bool referenceCallback(schunk_ezn64::reference::Request &req,
                         schunk_ezn64::reference::Response &res);
     
  /** \brief GetError service callback */
  bool getErrorCallback(schunk_ezn64::get_error::Request &req,
                        schunk_ezn64::get_error::Response &res);
  
   /** \brief AcknowledgeError service callback */
  bool acknowledgeErrorCallback(schunk_ezn64::acknowledge_error::Request &req,
                                schunk_ezn64::acknowledge_error::Response &res);
  
  /** \brief SetPosition service callback */
  bool setPositionCallback(schunk_ezn64::set_position::Request &req,
                           schunk_ezn64::set_position::Response &res);
  
  /** \brief GetPosition service callback */
  bool getPositionCallback(schunk_ezn64::get_position::Request &req,
                           schunk_ezn64::get_position::Response &res);
  
  /** \brief SetVelocity service callback */
  bool setVelocityCallback(schunk_ezn64::set_velocity::Request &req,
                           schunk_ezn64::set_velocity::Response &res);
  
  /** \brief GetVelocity service callback */
  bool getVelocityCallback(schunk_ezn64::get_velocity::Request &req,
                           schunk_ezn64::get_velocity::Response &res);
  
   /** \brief Stop service callback */
  bool stopCallback(schunk_ezn64::stop::Request &req,
                    schunk_ezn64::stop::Response &res);
  
  /** \brief FastStop service callback */
  bool fastStopCallback(schunk_ezn64::stop::Request &req,
                        schunk_ezn64::stop::Response &res);
  
   /** \brief Timer callback to read USB input buffer periodically */
  void timerCallback(const ros::TimerEvent &event);
  
  /** \brief joint_sub subscriber callback */
  void subPositionCallback(const std_msgs::Float32MultiArray::ConstPtr& posSp);
  
   /** \brief Gripper joint state publisher */
  ros::Publisher joint_pub;

  //Custom joint publisher
  ros::Publisher custom_pub;
  
  /** \brief Gripper joint state setter subscriber */
  ros::Subscriber joint_sub;   
  
  /** \brief TF update period in seconds */
  static constexpr float TF_UPDATE_PERIOD = 0.03;
  
private:
    
  /** \brief Send CMD REFERENCE(0x92) command to the gripper */
  void reference(libusb_device_handle *handle);
   
  /** \brief Read actual error by GET STATE(0x95) command */
  uint8_t getError(libusb_device_handle *handle);
    
  /** \brief Send CMD_ACK(0x8b) command to the gripper */
  void acknowledgeError(libusb_device_handle *handle);
  
  /** \brief Read actual position by GET_STATE(0x95) command */
  //float getPosition(libusb_device_handle *handle);
  
  /** \brief Send MOV_POS(0xb0) command to the gripper */
  void setPosition(libusb_device_handle *handle, float goal_position, float goal_speed);
  
  /** \brief Read actual velocity by GET_STATE(0x95) command */
  //float getVelocity(libusb_device_handle *handle);
  
  /** \brief Send MOV_VEL(0xb5) command to the gripper */
  void setVelocity(libusb_device_handle *handle, float goal_velocity);
    
  /** \brief Send CMD_STOP(0x91) to stop moving gripper */
  void stop(libusb_device_handle *handle);
  
  /** \brief Send CMD_FASTSTOP(0x90) to stop moving gripper and trigger an error */
  void fastStop(libusb_device_handle *handle);
   
  /** \brief Set periodic position reading by GET_STATE(0x95) command */
  void getPeriodicPositionUpdate(libusb_device_handle *handle, float period);
  
  /** \brief Function looking for gripper controller in list of available 
      USB devices. In case of success, pointer to device is returned */
  libusb_device* find_ezn64_dev(int VendorID, int ProductID);
  
  /** \brief Funtion printing information about active gripper USB interface */
  void print_libusb_dev(libusb_device *dev);

  /** \brief Function openning communication with USB device */
  libusb_device_handle* open_ezn64_dev(libusb_device *dev);
  
  /** \brief Function closing communication with USB device */
  int close_ezn64_dev(libusb_device_handle *handle, libusb_context *usb_context);

  /** \brief Function writing data to USB output buffer */
  void usb_write(libusb_device_handle *handle, std::vector<uint8_t> output);
  
  /** \brief Function reading data from USB inpput buffer*/
  std::vector<uint8_t> usb_read(libusb_device_handle *handle);
  
  /** \brief Conversion from 4 bytes to float*/
  float IEEE_754_to_float(uint8_t *raw);
  
  /** \brief Conversion from float to 4bytes*/
  void float_to_IEEE_754(float position, unsigned int *output_array);
  
  //Launch params
  int gripper_id_;
  int vendor_id_;
  int product_id_;
  double update_frequency;

  //Gripper state variales
  float act_position_;
  float act_velocity_;
  uint8_t ezn64_error_;
  sensor_msgs::JointState ezn64_joint_state_; 
    
  //Libusb Variables
  libusb_device *ezn64_dev_;
  libusb_context *usb_context_;
  libusb_device_handle *ezn64_handle_;
  
  //Consts 
  static constexpr double MIN_GRIPPER_POS_LIMIT = 0;
  static constexpr double MAX_GRIPPER_POS_LIMIT = 20;
  static constexpr double MIN_GRIPPER_VEL_LIMIT = -80;
  static constexpr double MAX_GRIPPER_VEL_LIMIT = 80;
  static constexpr double WAIT_FOR_RESPONSE_INTERVAL = 0.5;
  static constexpr int    INPUT_BUFFER_SIZE = 512;
  static constexpr int    LIBUSB_ENDPOINT = 129;
  static constexpr int    LIBUSB_TIMEOUT = 1000;
  static constexpr int    LIBUSB_VERBOSITY_LEVEL = 3;
  
};  //EZN64_usb
}   //schunk_ezn64

#endif //EZN64_USB_CONTROL_H
