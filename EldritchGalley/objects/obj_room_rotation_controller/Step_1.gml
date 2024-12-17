/// @description Insert description here
// You can write your code in this editor
//Handle inertia calculations
time_left = alarm_get(alarm[0]); //Get current duration left of alarm
time_left_percentage = time_left/alarm_duration //Get percentage of alarm time left

var tiltDirection = 1;
if(tiltLeft) { tiltDirection = -tiltDirection; }

rotation_inertia += time_left_percentage*tiltDirection;

currentAngle = camera_get_view_angle(view_camera[0]);
camera_set_view_angle(view_camera[0], currentAngle + rotation_inertia);

//Handle camera rotation
var xg, yg, gravityAmount;
gravityAmount = 10;

xg = -lengthdir_x(gravityAmount, camera_get_view_angle(view_camera[0])+270);
yg = lengthdir_y(gravityAmount, camera_get_view_angle(view_camera[0])+270);

physics_world_gravity(xg, yg);