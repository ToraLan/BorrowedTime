if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    // Button parameters
    var button_w = 120;
    var button_h = 40;
    var spacing = 20;
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    var ui_width = 300;
    var game_width = gui_w - ui_width;
    var total_w = 3 * button_w + 2 * spacing;
    var start_x = (game_width - total_w) / 2;
    var _y = gui_h - button_h - 20;

    // Check clicks on each button
    for (var i = 0; i < 3; i++) {
        var bx = start_x + i * (button_w + spacing);
        if (mx > bx && mx < bx + button_w && my > _y && my < _y + button_h) {
            show_message("Button " + string(i + 1) + " clicked!");
        }
    }
}
