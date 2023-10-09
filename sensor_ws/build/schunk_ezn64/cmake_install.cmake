# Install script for directory: /home/rass/Rassul/sensor_ws/src/schunk_ezn64

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rass/Rassul/sensor_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/schunk_ezn64/srv" TYPE FILE FILES
    "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv"
    "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv"
    "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv"
    "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv"
    "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv"
    "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv"
    "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv"
    "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv"
    "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/schunk_ezn64/msg" TYPE FILE FILES "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/schunk_ezn64/cmake" TYPE FILE FILES "/home/rass/Rassul/sensor_ws/build/schunk_ezn64/catkin_generated/installspace/schunk_ezn64-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/rass/Rassul/sensor_ws/devel/include/schunk_ezn64")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/rass/Rassul/sensor_ws/devel/share/roseus/ros/schunk_ezn64")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/rass/Rassul/sensor_ws/devel/share/common-lisp/ros/schunk_ezn64")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/rass/Rassul/sensor_ws/devel/share/gennodejs/ros/schunk_ezn64")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/rass/Rassul/sensor_ws/devel/lib/python2.7/dist-packages/schunk_ezn64")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/rass/Rassul/sensor_ws/devel/lib/python2.7/dist-packages/schunk_ezn64")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/rass/Rassul/sensor_ws/build/schunk_ezn64/catkin_generated/installspace/schunk_ezn64.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/schunk_ezn64/cmake" TYPE FILE FILES "/home/rass/Rassul/sensor_ws/build/schunk_ezn64/catkin_generated/installspace/schunk_ezn64-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/schunk_ezn64/cmake" TYPE FILE FILES
    "/home/rass/Rassul/sensor_ws/build/schunk_ezn64/catkin_generated/installspace/schunk_ezn64Config.cmake"
    "/home/rass/Rassul/sensor_ws/build/schunk_ezn64/catkin_generated/installspace/schunk_ezn64Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/schunk_ezn64" TYPE FILE FILES "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/package.xml")
endif()

