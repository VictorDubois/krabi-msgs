bool enable_motors
bool override_pwm # When true, bypass asservissement and send directly pwm_override_left to left motor, and pwm_override_right to right motor
int32 pwm_override_left
int32 pwm_override_right
bool reset_encoders # Commands the motor board to reset the odometry (X = 0, Y = 0, theta = 0)
