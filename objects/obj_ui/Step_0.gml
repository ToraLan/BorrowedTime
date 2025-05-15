if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    var start_x = (display_get_gui_width() - dialog_w - total_width) / 2;

    var y_pos = display_get_gui_height() - 100;

    var player = instance_find(obj_player, 0);

    for (var i = 0; i < 2; i++) {
        var img_x = start_x + i * (portrait_size + spacing + button_w + spacing);
        var btn_x = img_x + portrait_size + spacing;
        var btn_y = y_pos + 10;

        if (mx > btn_x && mx < btn_x + button_w && my > btn_y && my < btn_y + button_h) {
            if (player.character != i) {
                player.character = i;
                player.move_speed = player.char_speeds[player.character];
                player.sprite_index = player.char_sprites[player.character][5]; // idle_down
                player.image_index = 0;
                instance_create_layer(player.x, player.y+40, "Instances_effects", obj_transform_effect);
            }
        }
    }

}


