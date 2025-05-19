var _hor = keyboard_check(ord("D")) - keyboard_check(ord("Q"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("Z"));

// Movement with collision
move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

// Sprite selection
var s = char_sprites[character];

if (_hor != 0 || _ver != 0) {
    if (_ver < 0)       sprite_index = s[0]; // walk_up
    else if (_ver > 0)  sprite_index = s[1]; // walk_down
    else if (_hor < 0)  sprite_index = s[2]; // walk_left
    else if (_hor > 0)  sprite_index = s[3]; // walk_right

    heading = sprite_index; // Store last direction
}
else {
    // Idle in the last direction
    if (heading == s[0]) sprite_index = s[4]; // idle_up
    else if (heading == s[1]) sprite_index = s[5];
    else if (heading == s[2]) sprite_index = s[6];
    else if (heading == s[3]) sprite_index = s[7];
	if (keyboard_check(ord("F")) == 1) {
		standAndShootBlueball();
	}
}


function standAndShootBlueball() {
		image_index = 0;
		sprite_index = spr_frieren_spellcast_right;
		
		
		if (!is_blueball_created) {
			global.blueballSpeed = 5;
			global.blueballDirection = image_yscale;
			instance_create_layer(x, y, "Instances", obj_blueball);
			is_blueball_created = true;
		}
		if (image_index >= image_number - 1) {
			sprite_index = spr_frieren_idle_right;
			is_blueball_created = false;
	
}
}

