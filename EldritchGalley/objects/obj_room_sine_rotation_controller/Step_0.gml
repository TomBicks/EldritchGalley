/// @description Insert description here
// You can write your code in this editor

//Nothing is changing for some reason???
angle_acceleration = -0.1 * dcos(angle);

angle_velocity += angle_acceleration;
angle += angle_velocity;

camera_set_view_angle(view_camera[0], angle);