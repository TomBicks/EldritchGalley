/// @description Initialise camera view coordinates
// You can write your code in this editor
current_camera = view_camera[0];

view_entrance_x = 0; //The leftmost view borders against the left side of the room, so x = 0
view_storeroom_x = room.x - camera_get_view_width(current_camera); //The rightmost view borders against the right side of the room
//So we get the rightmost x coord of the room and subtract the camera's width from it to find the correct x
view_cooking_x = (view_entrance_x + view_storeroom_x)/2; //The cooking area is between the other two coords, so we just get the average

view_xcoords = [view_entrance_x, view_cooking_x, view_storeroom_x];
view_ycoord = 0;

current_view = 1; //Index; The default view is of the cooking area
camera_set_view_pos(current_camera, view_xcoords[current_view], view_ycoord); //Set default view