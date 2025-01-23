// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_simulate_pendulum(height_angle){
	var angle;
	var angle_velocity;
	var angle_acceleration;
	
	//height_angle is the angle of the height we're simulating dropping the pendulum from
	angle = height_angle;
	angle_velocity = 0;
	angle_acceleration = 0;
	
	while(round(angle) != 270)
	{
		//show_message("angle_acceleration = " + string(angle_acceleration) + 
		//", \nangle_velocity = " + string(angle_velocity) + ", \nangle =" + string(angle) + 
		//", \ndcos(angle) = " + string(dcos(angle)));
		
		angle_acceleration = -0.1 * dcos(angle);

		angle_velocity += angle_acceleration;
		angle += angle_velocity;
	}
	
	show_message("Velocity at bottom of pendulum are is " + string(angle_velocity));
	
	//We only need to return angle_velocity
	//The angle is always going to be 0; that's what this script is for
	//The angle_acceleration will also be 0, as the angle will be 0 (means no triangle or hypotenuse)
	return angle_velocity;
}