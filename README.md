# Table of contents
1. [Setup](https://github.com/violentpixie/stick-slip-sensor#setup)
	* [UR10](https://github.com/violentpixie/stick-slip-sensor#ur10)
	* [Schunk gripper](https://github.com/violentpixie/stick-slip-sensor#schunk-gripper)
	* [Wittenstein](https://github.com/violentpixie/stick-slip-sensor#wittenstein)
	* [Teensy 4.0](https://github.com/violentpixie/stick-slip-sensor#teensy-4.0)
	* [Sensor assembly](https://github.com/violentpixie/stick-slip-sensor#sensor-assembly)
2. Run
   -

# Setup 

[![Experiment Video]({file:///home/molly/Downloads/intro_slip_sensor.jpg})]({https://drive.google.com/file/d/1T8M64VDNHlcA0m4zIxcgBmD_AaferUZm/view?usp=drive_link} "Link Title")

## UR10
* Requirements:   
	* Python 2.7

Firstly, download UR10 packages from [ur_ws](ur_ws) directory. Run the following line to set a connection between the control PC and the robot: <br/>

`roslaunch ur_bringup ur10_bringup.launch robot_ip:=$robot_ip`</br>

To find out your robot's IP address go to the teach pendant's settings, there in the Network section will be displayed your local robot's address.

## Schunk Gripper
* Requirements:
	* Power Supply: 24 V DC 
	* Current: 1.8 A 
  
The gripper used in experiments to grab objects is Schunk EGN100. This type of gripper operates on ROS package called ezn64, download the workspace [sensor_ws](sensor_ws). In order to control the gripper through the USB, grant the privilege of opening and writing to the specific USB port. If you do not know which port the gripper uses, grant it to every device: <br/>
`sudo chmod o+w /dev/bus/usb/00*/00*` </br>

Now launch the gripper using this command:</br>
`roslaunch schunk_ezn64 ezn64_usb_control.launch` </br>

Next, set the reference position and velocity values to calibrate the gripper before start: </br>
`rosservice call /schunk_ezn64/reference` </br>

And now you can control the gripper using position controllers: </br>
`rosservice call /schunk_ezn64/set_position $velocity $position` </br>

For our project we set the values this way: </br>
`rosservice call /schunk_ezn64/set_position 20 20`</br>


## Wittenstein

## Teensy 4.0

## Sensor assembly
