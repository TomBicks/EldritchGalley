/// @description Insert description here
// You can write your code in this editor
//gravity_direction
//show_message(string(gravity_direction));

if(_increasing)
{
	if(_phys_increment < 45)
	{
		_phys_increment = _phys_increment + 0.1;
	}
	else
	{
		//_increasing = !_increasing;
	}
}
else
{
	if(_phys_increment > -45)
	{
		_phys_increment = _phys_increment - 0.1;
	}
	else
	{
		//_increasing = !_increasing;
	}
}

//gravity_direction = _phys_dir;
physics_world_gravity(0 + _phys_increment, 100 - abs(_phys_increment));