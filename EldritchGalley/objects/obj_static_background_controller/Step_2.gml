/// @description Counter Rotation
// You can write your code in this editor

//Rotate against the rotation of the camera
camera_angle = camera_get_view_angle(view_camera[0]);

counter_rot = -camera_angle;

image_angle = counter_rot;