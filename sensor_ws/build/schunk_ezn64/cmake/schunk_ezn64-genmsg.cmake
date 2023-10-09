# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "schunk_ezn64: 1 messages, 9 services")

set(MSG_I_FLAGS "-Ischunk_ezn64:/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(schunk_ezn64_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv" NAME_WE)
add_custom_target(_schunk_ezn64_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_ezn64" "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv" ""
)

get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv" NAME_WE)
add_custom_target(_schunk_ezn64_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_ezn64" "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv" ""
)

get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv" NAME_WE)
add_custom_target(_schunk_ezn64_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_ezn64" "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv" ""
)

get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg" NAME_WE)
add_custom_target(_schunk_ezn64_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_ezn64" "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg" ""
)

get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv" NAME_WE)
add_custom_target(_schunk_ezn64_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_ezn64" "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv" ""
)

get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv" NAME_WE)
add_custom_target(_schunk_ezn64_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_ezn64" "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv" ""
)

get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv" NAME_WE)
add_custom_target(_schunk_ezn64_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_ezn64" "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv" ""
)

get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv" NAME_WE)
add_custom_target(_schunk_ezn64_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_ezn64" "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv" ""
)

get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv" NAME_WE)
add_custom_target(_schunk_ezn64_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_ezn64" "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv" ""
)

get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv" NAME_WE)
add_custom_target(_schunk_ezn64_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_ezn64" "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
)

### Generating Services
_generate_srv_cpp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_cpp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_cpp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_cpp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_cpp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_cpp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_cpp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_cpp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_cpp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
)

### Generating Module File
_generate_module_cpp(schunk_ezn64
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(schunk_ezn64_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(schunk_ezn64_generate_messages schunk_ezn64_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_cpp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_cpp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_cpp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_cpp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_cpp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_cpp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_cpp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_cpp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_cpp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_cpp _schunk_ezn64_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(schunk_ezn64_gencpp)
add_dependencies(schunk_ezn64_gencpp schunk_ezn64_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_ezn64_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
)

### Generating Services
_generate_srv_eus(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_eus(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_eus(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_eus(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_eus(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_eus(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_eus(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_eus(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_eus(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
)

### Generating Module File
_generate_module_eus(schunk_ezn64
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(schunk_ezn64_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(schunk_ezn64_generate_messages schunk_ezn64_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_eus _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_eus _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_eus _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_eus _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_eus _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_eus _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_eus _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_eus _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_eus _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_eus _schunk_ezn64_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(schunk_ezn64_geneus)
add_dependencies(schunk_ezn64_geneus schunk_ezn64_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_ezn64_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
)

### Generating Services
_generate_srv_lisp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_lisp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_lisp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_lisp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_lisp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_lisp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_lisp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_lisp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_lisp(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
)

### Generating Module File
_generate_module_lisp(schunk_ezn64
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(schunk_ezn64_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(schunk_ezn64_generate_messages schunk_ezn64_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_lisp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_lisp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_lisp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_lisp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_lisp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_lisp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_lisp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_lisp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_lisp _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_lisp _schunk_ezn64_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(schunk_ezn64_genlisp)
add_dependencies(schunk_ezn64_genlisp schunk_ezn64_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_ezn64_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
)

### Generating Services
_generate_srv_nodejs(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_nodejs(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_nodejs(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_nodejs(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_nodejs(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_nodejs(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_nodejs(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_nodejs(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_nodejs(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
)

### Generating Module File
_generate_module_nodejs(schunk_ezn64
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(schunk_ezn64_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(schunk_ezn64_generate_messages schunk_ezn64_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_nodejs _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_nodejs _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_nodejs _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_nodejs _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_nodejs _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_nodejs _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_nodejs _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_nodejs _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_nodejs _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_nodejs _schunk_ezn64_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(schunk_ezn64_gennodejs)
add_dependencies(schunk_ezn64_gennodejs schunk_ezn64_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_ezn64_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
)

### Generating Services
_generate_srv_py(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_py(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_py(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_py(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_py(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_py(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_py(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_py(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
)
_generate_srv_py(schunk_ezn64
  "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
)

### Generating Module File
_generate_module_py(schunk_ezn64
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(schunk_ezn64_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(schunk_ezn64_generate_messages schunk_ezn64_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_velocity.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_py _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/set_position.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_py _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_error.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_py _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/msg/PosAndSpeedFloat32.msg" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_py _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/acknowledge_error.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_py _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/reference.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_py _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_position.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_py _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/fastStop.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_py _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/stop.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_py _schunk_ezn64_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rass/Rassul/sensor_ws/src/schunk_ezn64/srv/get_velocity.srv" NAME_WE)
add_dependencies(schunk_ezn64_generate_messages_py _schunk_ezn64_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(schunk_ezn64_genpy)
add_dependencies(schunk_ezn64_genpy schunk_ezn64_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_ezn64_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_ezn64
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(schunk_ezn64_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_ezn64
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(schunk_ezn64_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_ezn64
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(schunk_ezn64_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_ezn64
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(schunk_ezn64_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_ezn64
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(schunk_ezn64_generate_messages_py std_msgs_generate_messages_py)
endif()
