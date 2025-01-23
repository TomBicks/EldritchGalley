/// @description Insert description here
// You can write your code in this editor
angle_acceleration = -(swing_speed) * dcos(angle);

angle_velocity += angle_acceleration;
angle += angle_velocity;

var new_x = anchor_x + lengthdir_x(distance, angle);
var new_y = anchor_y + lengthdir_y(distance, angle);

x = new_x;
y = new_y;

//show_message(camera_get_view_angle(view_camera[0]));
camera_set_view_angle(view_camera[0], angle+90);


//Set gravity direction based on rotation of camera view
var xg, yg, gravityAmount;
gravityAmount = 100;

xg = -lengthdir_x(gravityAmount, camera_get_view_angle(view_camera[0])+270);
yg = lengthdir_y(gravityAmount, camera_get_view_angle(view_camera[0])+270);

physics_world_gravity(xg, yg);