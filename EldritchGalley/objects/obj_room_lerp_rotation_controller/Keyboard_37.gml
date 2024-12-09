/// @description Rotate room viewport and physics direction left
// You can write your code in this editor
currentAngle = camera_get_view_angle(view_camera[0]);

camera_set_view_angle(view_camera[0], currentAngle-1);