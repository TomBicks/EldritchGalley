/// @description Insert description here
// You can write your code in this editor
angle_acceleration = -0.1 * dcos(angle);

angle_velocity += angle_acceleration;
angle += angle_velocity;

var new_x = anchor_x + lengthdir_x(distance, angle);
var new_y = anchor_y + lengthdir_y(distance, angle);

x = new_x;
y = new_y;
//}