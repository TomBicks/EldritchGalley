/// @description Set camera position
// You can write your code in this editor
currentX = camera_get_view_x(current_camera);
camera_set_view_pos(current_camera, lerp(currentX, view_xcoords[current_view], 0.1), view_ycoord);