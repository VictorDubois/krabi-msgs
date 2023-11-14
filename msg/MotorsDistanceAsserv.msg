bool use_distance_asserv # boolean to activate this mode
geometry_msgs/PoseStamped goal_pose # the pose to go to
float32 max_speed_at_arrival # max admissible speed when reaching the goal
float32 reach # distance of the goal to which the robot must stop. The idea is to stop when the goal is whithin reach, when it makes sense. Ex: arm's length. 0.f by default, when we want the robot to reach the goal
