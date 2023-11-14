std_msgs/Header header
uint32 reverse_gear # 0 = forward, 1 = backward, 2 = don't care
float32 max_speed_at_arrival
geometry_msgs/Twist max_speed
uint32 orient # 0 = go to goal_pose's position, 1 = orient to goal_pose's orientation.z, 2 = disable rotation commands (ex: recalage bordure)
string endpoint_frame_id # frame of the robot that must go to goal_pose's position. Used for catching glasses. By default "base_link"
geometry_msgs/PoseStamped goal_pose
