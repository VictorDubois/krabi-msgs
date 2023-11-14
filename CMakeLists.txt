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

set(msg_files
  "msg/Encoders.msg"
  "msg/MotorsCmd.msg"
  "msg/Motors.msg"
  "msg/MotorsParameters.msg"
  "msg/MotorsDistanceAsserv.msg"
  "msg/OdomLight.msg"
  "msg/OdomLighter.msg"
  "msg/MainDebug.msg"
  "msg/ServosCmd.msg"
  "msg/ServoCmd.msg"
  "msg/BalloonPump.msg"
  "msg/VacuumPump.msg"
  "msg/Actuators.msg"
  "msg/SpeedLimitations.msg"
  "msg/StratMovement.msg"
  "msg/Obstacles.msg"
  "srv/SetOdom.srv"
)
set(srv_files
"srv/MotorsParams.srv"
"srv/AreWeThereYet.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
${msg_files}
${srv_files}
DEPENDENCIES
builtin_interfaces
std_msgs
geometry_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()

