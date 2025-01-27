/// @description Insert description here
// Get objects to link together
box = instance_find(obj_box, 0);
tracker = self;

physics_joint_rope_create(box, tracker, box.x, box.y, tracker.x+16, tracker.y+16, 0, false);