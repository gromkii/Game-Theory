h_move = gamepad_axis_value(pad_num, gp_axislh); // Checks for horizontal movement.

key_jump = gamepad_button_check_pressed(pad_num, gp_face1);
key_reload = gamepad_button_check_pressed(pad_num, gp_face3);
key_cycleL = gamepad_button_check_pressed(pad_num, gp_face4);
key_cycleR = gamepad_button_check_pressed(pad_num, gp_face2);
key_fire = gamepad_button_check(pad_num, gp_shoulderrb);
key_flip = gamepad_button_check_pressed(pad_num, gp_shoulderr);
key_esc = keyboard_check_pressed(vk_escape);
key_roll = gamepad_button_check_pressed(pad_num, gp_shoulderl);

gamepad_set_axis_deadzone(pad_num, 0.3);