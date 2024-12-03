/// @description Insert description here
// You can write your code in this editor
var xg, yg, gravityAmount;
gravityAmount = 10;

xg = -lengthdir_x(gravityAmount, camera_get_view_angle(view_camera[0])+270);
yg = lengthdir_y(gravityAmount, camera_get_view_angle(view_camera[0])+270);

physics_world_gravity(xg, yg);