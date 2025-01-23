/// @description Insert description here
// You can write your code in this editor
//angle = 270;
//THAT's THE ISSUE! The trouble I've been having is trying to start the momentum from the middle
//As this pendulum test shows, it doesn't work if it starts in the middle; it only works if it has a side
//to swing from. Now, is it possible to replicate the momentum it would have at this moment, I wonder?
//To take it as if it was already swinging and has reached the middle?

//angle_velocity = -3.4;

//angle_acceleration = -0.01;

//swing_speed = 0.1;

angle = 315;
angle_velocity = 0;
angle_acceleration = 0;
swing_speed = 0.01;

//So, test shows we can fake the measurements to make it look practiclly identical, so it starts from the middle
//but looks like it was swinging back and forth already. The issue then is that it only works for that
//specific set of values; change the pendulum height, or the distance, and it falls apart; we need a way
// to calculate the values needed to simulare it, if we want to start from the bottom of the pendulum

//Pendulum values
anchor_x = 220;
anchor_y = 96;
distance = 80;