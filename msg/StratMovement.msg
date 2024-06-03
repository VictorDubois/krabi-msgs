std_msgs/Header header

uint32 FORWARD=0
uint32 REVERSE=1
uint32 FORWARD_OR_REVERSE=2 # Don't care about forward/reverse
uint32 reverse_gear # See above

float32 max_speed_at_arrival
geometry_msgs/Twist max_speed

uint32 GO_TO_GOALPOSE_POSITION=0 # Go to goal_pose's position
uint32 ORIENT_TOWARD_GOALPOSE_ORIENTATION=1 # Orient to goal_pose's orientation.z
uint32 RECALAGE_BORDURE=2 # Disable rotation commands (ex: recalage bordure)
uint32 CLAMP_MODE=3 # Stay still, clamp to the ground (allows higher current)
uint32 STOP_ANGULAR=4 # Stop angular
uint32 orient # See above

string endpoint_frame_id # frame of the robot that must go to goal_pose's position. Used for catching glasses. By default "base_link"
geometry_msgs/PoseStamped goal_pose
