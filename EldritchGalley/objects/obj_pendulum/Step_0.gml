/// @description Insert description here
//Calculate angle, acceleration and velocity of the 'pendulum' (rocking ship)
angle_acceleration = -(swing_speed) * dcos(angle);

angle_velocity += angle_acceleration;
angle += angle_velocity;

//This code is necessary to animate the pendulum, but is not necassary for just
//calculating the angle as it 'swings'
#region Animate Pendulum
var new_x = anchor_x + lengthdir_x(distance, angle);
var new_y = anchor_y + lengthdir_y(distance, angle);

x = new_x;
y = new_y;
#endregion

//Update  camera angle to match angle of the swinging pendulum
camera_set_view_angle(view_camera[0], angle+90);


#region Set gravity forces and direction based on rotation of camera view
var xg, yg, gravityAmount;
gravityAmount = 100;

xg = -lengthdir_x(gravityAmount, camera_get_view_angle(view_camera[0])+270);
yg = lengthdir_y(gravityAmount, camera_get_view_angle(view_camera[0])+270);

physics_world_gravity(xg, yg);
#endregion