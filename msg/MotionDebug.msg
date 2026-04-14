std_msgs/Header header

# Braking (from limitLinearSpeedCmdByGoal)
float32 time_to_stop            # seconds until stop at current decel
float32 distance_to_stop        # meters needed to stop

uint8 DECELERATE=0
uint8 EMERGENCY_BRAKE=1
uint8 ACCELERATE=2
uint8 CRUISE=3
uint8 speed_mode                # current speed control decision

float32 new_speed_order         # unconstrained speed before clipping (m/s)

# Current motion state
float32 linear_speed            # measured linear speed (m/s)
float32 linear_speed_cmd        # final linear speed command (m/s)
float32 angular_speed           # measured angular speed (rad/s)
float32 angular_speed_cmd       # final angular speed command (rad/s)

# Inhibition
float32 speed_inhibition_from_obstacle  # 0.0-1.0 factor
float32 default_linear_speed            # configured max speed (m/s)
float32 linear_limit_by_angular_speed   # Gaussian speed limit from turning (m/s)

# State flags
bool orienting
bool linear_speed_disabled
bool angular_speed_disabled
bool reverse_gear
bool stopped_by_obstacle
bool stopped_by_goalstrat

# Goal tracking
float32 distance_to_goal        # remaining distance to goal (m)
float32 delta_orientation       # angular error to goal heading (rad)
float32 desired_final_speed     # max_speed_at_arrival from strat params (m/s)
