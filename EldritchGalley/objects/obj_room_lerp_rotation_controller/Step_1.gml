/// @description Insert description here
// You can write your code in this editor

//Lerp the tilting of the boat
var tiltLimit = tiltMax
if(!tiltLeft) { tiltLimit = tiltMax*-1 }

currentAngle = camera_get_view_angle(view_camera[0]);
camera_set_view_angle(view_camera[0], lerp(currentAngle, 0+tiltLimit, 0.005));

//Set gravity direction based on rotation of camera view
var xg, yg, gravityAmount;
gravityAmount = 10;

xg = -lengthdir_x(gravityAmount, camera_get_view_angle(view_camera[0])+270);
yg = lengthdir_y(gravityAmount, camera_get_view_angle(view_camera[0])+270);

physics_world_gravity(xg, yg);