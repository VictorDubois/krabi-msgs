cmake_minimum_required(VERSION 2.8.3)
project(krabi_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
  geometry_msgs
)
add_message_files(
  FILES
  encoders.msg
  motors_cmd.msg
  motors.msg
  motors_parameters.msg
  motors_distance_asserv.msg
  odom_light.msg
  odom_lighter.msg
  servos_cmd.msg
  servo_cmd.msg
  balloon_pump.msg
  vacuum_pump.msg
  actuators.msg
  strat_movement.msg
)

add_service_files (
  FILES
  SetOdom.srv
  motorsParams.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)


catkin_package(
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)
