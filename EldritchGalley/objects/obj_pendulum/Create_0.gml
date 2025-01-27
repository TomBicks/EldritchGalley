/// @description Insert description here
//Pendulum values relevant to the angle calculations
angle = 270;
swing_speed = 0.01;
angle_velocity = scr_simulate_pendulum(315, swing_speed); //Calculate velocity at bottom of arc
angle_acceleration = 0;

//Pendulum values *not* relevant to the angle calculations
anchor_x = 220;
anchor_y = 96;
distance = 80;