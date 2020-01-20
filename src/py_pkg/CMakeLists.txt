cmake_minimum_required(VERSION 2.8.3)
project(py_pkg)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)



find_package(catkin REQUIRED COMPONENTS
  message_generation
  roscpp
  rospy
)

## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
catkin_python_setup()

add_message_files(
  FILES
  InputStates.msg
)

add_service_files(
  DIRECTORY srv
  FILES
)

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs  # Or other packages containing msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

# add_executable(usr_input src/input_pkg/usr_input.py)
# target_link_libraries(usr_input ${catkin_LIBRARIES})

