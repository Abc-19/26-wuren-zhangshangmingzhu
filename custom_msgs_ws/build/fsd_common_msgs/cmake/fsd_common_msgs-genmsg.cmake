# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fsd_common_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ifsd_common_msgs:/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fsd_common_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg" NAME_WE)
add_custom_target(_fsd_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsd_common_msgs" "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg" NAME_WE)
add_custom_target(_fsd_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsd_common_msgs" "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg" ""
)

get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg" NAME_WE)
add_custom_target(_fsd_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsd_common_msgs" "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg" "std_msgs/Header:fsd_common_msgs/Cone"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsd_common_msgs
)
_generate_msg_cpp(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsd_common_msgs
)
_generate_msg_cpp(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsd_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(fsd_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsd_common_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fsd_common_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fsd_common_msgs_generate_messages fsd_common_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_cpp _fsd_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_cpp _fsd_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_cpp _fsd_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsd_common_msgs_gencpp)
add_dependencies(fsd_common_msgs_gencpp fsd_common_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsd_common_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsd_common_msgs
)
_generate_msg_eus(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsd_common_msgs
)
_generate_msg_eus(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsd_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(fsd_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsd_common_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fsd_common_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fsd_common_msgs_generate_messages fsd_common_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_eus _fsd_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_eus _fsd_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_eus _fsd_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsd_common_msgs_geneus)
add_dependencies(fsd_common_msgs_geneus fsd_common_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsd_common_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsd_common_msgs
)
_generate_msg_lisp(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsd_common_msgs
)
_generate_msg_lisp(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsd_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(fsd_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsd_common_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fsd_common_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fsd_common_msgs_generate_messages fsd_common_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_lisp _fsd_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_lisp _fsd_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_lisp _fsd_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsd_common_msgs_genlisp)
add_dependencies(fsd_common_msgs_genlisp fsd_common_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsd_common_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsd_common_msgs
)
_generate_msg_nodejs(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsd_common_msgs
)
_generate_msg_nodejs(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsd_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(fsd_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsd_common_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fsd_common_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fsd_common_msgs_generate_messages fsd_common_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_nodejs _fsd_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_nodejs _fsd_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_nodejs _fsd_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsd_common_msgs_gennodejs)
add_dependencies(fsd_common_msgs_gennodejs fsd_common_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsd_common_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsd_common_msgs
)
_generate_msg_py(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsd_common_msgs
)
_generate_msg_py(fsd_common_msgs
  "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsd_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(fsd_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsd_common_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fsd_common_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fsd_common_msgs_generate_messages fsd_common_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Message1.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_py _fsd_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/Cone.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_py _fsd_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/custom_msgs_ws/src/fsd_common_msgs/msg/ConeDetections.msg" NAME_WE)
add_dependencies(fsd_common_msgs_generate_messages_py _fsd_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsd_common_msgs_genpy)
add_dependencies(fsd_common_msgs_genpy fsd_common_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsd_common_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsd_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsd_common_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fsd_common_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsd_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsd_common_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fsd_common_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsd_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsd_common_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fsd_common_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsd_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsd_common_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fsd_common_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsd_common_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsd_common_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsd_common_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fsd_common_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
