/// Get GUI dimensions (should be 1280x720)
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Reserve 300px on the right for the UI panel
var ui_width = 300;
var game_width = gui_w - ui_width;

// Draw dialogue panel (right side)
draw_set_color(c_black);
draw_rectangle(game_width, 0, gui_w, gui_h, false);

// Dialogue text
draw_set_color(c_white);
draw_text(game_width + 20, 30, "Hello, adventurer!");

// Draw 3 buttons centered at the bottom (inside game area)
var button_w = 120;
var button_h = 40;
var spacing = 20;
var total_w = 3 * button_w + 2 * spacing;
var start_x = (game_width - total_w) / 2;
var _y = gui_h - button_h - 20;

for (var i = 0; i < 3; i++) {
    var bx = start_x + i * (button_w + spacing);
    draw_set_color(c_dkgray);
    draw_rectangle(bx, _y, bx + button_w, _y + button_h, false);
    draw_set_color(c_white);
    draw_text(bx + 10, _y + 10, "Button " + string(i + 1));
}
