# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_threads: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_threads_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/arsovska/Tasks/src/ros_threads/srv/time_threads.srv" NAME_WE)
add_custom_target(_ros_threads_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_threads" "/home/arsovska/Tasks/src/ros_threads/srv/time_threads.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ros_threads
  "/home/arsovska/Tasks/src/ros_threads/srv/time_threads.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_threads
)

### Generating Module File
_generate_module_cpp(ros_threads
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_threads
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_threads_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_threads_generate_messages ros_threads_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arsovska/Tasks/src/ros_threads/srv/time_threads.srv" NAME_WE)
add_dependencies(ros_threads_generate_messages_cpp _ros_threads_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_threads_gencpp)
add_dependencies(ros_threads_gencpp ros_threads_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_threads_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(ros_threads
  "/home/arsovska/Tasks/src/ros_threads/srv/time_threads.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_threads
)

### Generating Module File
_generate_module_eus(ros_threads
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_threads
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_threads_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_threads_generate_messages ros_threads_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arsovska/Tasks/src/ros_threads/srv/time_threads.srv" NAME_WE)
add_dependencies(ros_threads_generate_messages_eus _ros_threads_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_threads_geneus)
add_dependencies(ros_threads_geneus ros_threads_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_threads_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ros_threads
  "/home/arsovska/Tasks/src/ros_threads/srv/time_threads.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_threads
)

### Generating Module File
_generate_module_lisp(ros_threads
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_threads
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_threads_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_threads_generate_messages ros_threads_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arsovska/Tasks/src/ros_threads/srv/time_threads.srv" NAME_WE)
add_dependencies(ros_threads_generate_messages_lisp _ros_threads_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_threads_genlisp)
add_dependencies(ros_threads_genlisp ros_threads_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_threads_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ros_threads
  "/home/arsovska/Tasks/src/ros_threads/srv/time_threads.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_threads
)

### Generating Module File
_generate_module_py(ros_threads
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_threads
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_threads_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_threads_generate_messages ros_threads_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arsovska/Tasks/src/ros_threads/srv/time_threads.srv" NAME_WE)
add_dependencies(ros_threads_generate_messages_py _ros_threads_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_threads_genpy)
add_dependencies(ros_threads_genpy ros_threads_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_threads_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_threads)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_threads
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_threads_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_threads)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_threads
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_threads_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_threads)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_threads
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_threads_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_threads)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_threads\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_threads
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_threads_generate_messages_py std_msgs_generate_messages_py)
endif()
