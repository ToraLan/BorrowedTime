var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();
//draw_set_font(fnt_default);
draw_set_color(c_white);

// Dialogue box (right side)
var dialog_w = 320;
var dialog_x = gui_w - dialog_w;
draw_set_color(c_black);
draw_rectangle(dialog_x, 0, gui_w, gui_h, false);
draw_set_color(c_white);
draw_text(dialog_x + 16, 16, "I need to find those spells...");

// Character buttons and images
var button_w = 120;
var button_h = 40;
var spacing = 32;
var portrait_size = 64;
var total_width = 2 * (portrait_size + spacing + button_w) + spacing;
var start_x = (gui_w - dialog_w - total_width) / 2;
var y_pos = gui_h - 100;

for (var i = 0; i < 2; i++) {
    var img_x = start_x + i * (portrait_size + spacing + button_w + spacing);
    var btn_x = img_x + portrait_size + spacing;

    // Draw character portrait
    draw_sprite_ext(char_imgs[i], 0, img_x, y_pos, 1, 1, 0, c_white, 1);

    // Draw health bar background
    var bar_w = 100;
    var bar_h = 12;
    var hp = char_health[i];
    var hp_max = char_max_health[i];
    var ratio = hp / hp_max;
    var bar_x = img_x;
    var bar_y = y_pos + portrait_size + 8;

    draw_set_color(c_red);
    draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);
    var bar_color = merge_color(c_red, c_lime, ratio);
    draw_set_color(bar_color);
    draw_rectangle(bar_x, bar_y, bar_x + bar_w * ratio, bar_y + bar_h, false);
    draw_set_color(c_white);
    draw_text(bar_x, bar_y + bar_h + 2, string(hp) + " / " + string(hp_max));

    // Draw buttons
    draw_set_color(c_gray);
    draw_rectangle(btn_x, y_pos + 10, btn_x + button_w, y_pos + 10 + button_h, false);
    draw_set_color(c_white);
    draw_text(btn_x + 12, y_pos + 18, characters[i]);
}
