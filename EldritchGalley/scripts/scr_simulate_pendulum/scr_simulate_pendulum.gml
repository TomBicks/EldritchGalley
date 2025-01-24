// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_simulate_pendulum(height_angle, swing_speed){
	var angle = height_angle; //height_angle is the angle of the height we're simulating dropping the pendulum from
	var angle_velocity = 0;
	var angle_acceleration = 0;
	
	//Simulate velocity until we reach the bottom of the pendulum's arc
	var prev_angle = height_angle;
	while(round(angle) != 270)
	{
		angle_acceleration = -(swing_speed) * dcos(angle);

		angle_velocity += angle_acceleration;
		angle += angle_velocity;
		
		//show_message("angle_acceleration = " + string(angle_acceleration) + 
		//", \nangle_velocity = " + string(angle_velocity) + ", \nangle = " + string(angle) + 
		//", \nprev_angle = " + string(prev_angle) + 
		//", \ndcos(angle) = " + string(dcos(angle)));
		
		//First, check whether we've *just* gone past 270-degrees, even with rounding; if so, break loop
		if(angle < 270 && prev_angle > 270) { show_message("break loop"); break; }
		
		//Update previous angle
		prev_angle = angle;
	}
	
	show_message("Velocity at bottom of pendulum's arc is " + string(angle_velocity));
	
	//We only need to return angle_velocity
	//The angle is always going to be 270; that's what this script is for
	//The angle_acceleration will also be 0, as the angle will be 270 
	//(means no triangle or hypotenuse as it's a line straight down)
	return angle_velocity;
}