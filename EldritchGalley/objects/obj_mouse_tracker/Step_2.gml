/// @description Track mouse movement

//Good Resource - https://www.reddit.com/r/gamemaker/comments/5gu62v/move_a_physics_object_with_the_mouse/

//This method makes the tracker stick closely to the mouse
//However, it imparts little to no force on anything it hits
//phy_position_x = mouse_x-(self.sprite_width/2);
//phy_position_y = mouse_y-(self.sprite_height/2);

//This method makes the tracker lag behind the mouse, like the other tests
//It does however allow for the tracker to impart force on anything it hits (energetically so)
phy_speed_x = (mouse_x - (x+16));
phy_speed_y = (mouse_y - (y+16));