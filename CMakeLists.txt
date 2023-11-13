cmake_minimum_required(VERSION 3.5)
project(krabi_msgs)

if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/Encoders.msg"
  "msg/motors_cmd.msg"
  "msg/motors.msg"
  "msg/motors_parameters.msg"
  "msg/motors_distance_asserv.msg"
  "msg/odom_light.msg"
  "msg/odom_lighter.msg"
  "msg/main_debug.msg"
  "msg/servos_cmd.msg"
  "msg/servo_cmd.msg"
  "msg/balloon_pump.msg"
  "msg/vacuum_pump.msg"
  "msg/actuators.msg"
  "msg/speed_limitations.msg"
  "msg/strat_movement.msg"
  "msg/obstacles.msg"
  "srv/SetOdom.srv"
  "srv/motorsParams.srv"
  "srv/areWeThereYet.srv"
  DEPENDENCIES
  std_msgs
  geometry_msgs
)


ament_package()

