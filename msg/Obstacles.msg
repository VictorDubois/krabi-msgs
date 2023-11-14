geometry_msgs/PoseStamped obstacle_front # Most dangerous obstacle in front of the robot
float32 obstacle_front_offset # Should it beconsidered closer (negative) or farther away?
geometry_msgs/PoseStamped obstacle_rear # Most dangerous obstacle behind the robot
float32 obstacle_rear_offset # Should it beconsidered closer (negative) or farther away?
geometry_msgs/Twist limit_speed_front # Basic speed limitation when going forward
geometry_msgs/Twist limit_speed_rear # Basic speed limitation when reversing
uint8 TYPE_LIDAR=0 # An obstacle seen by the lidar
uint8 TYPE_ROBOT_ARUCO=1 # An aruco on top of a robot, seen by the bird-eye-view camera
uint8 TYPE_FIX_OBSTACLE=2 # A fix obstacle, for instance the cherries holders
uint8 TYPE_BORDER_OBSTACLE=3 # A border of the table
uint8 TYPE_NO_OBSTACLE=4 # A fix obstacle, for instance the borders of the table
uint8 type_front # type of obstacle of the front obstacle
uint8 type_rear # type of obstacle of the rear obstacle
