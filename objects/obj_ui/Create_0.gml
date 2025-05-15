display_set_gui_size(1280, 720); // Keep GUI at fixed 16:9 size
characters = ["Frieren", "Himmel"];
char_imgs = [spr_frieren_icon, spr_himmel_icon]; // PNG portraits as sprites
char_health = [100, 80]; // Initial health values (modifiable)
char_max_health = [100, 100];

// Variable defintion
dialog_w = 320;
spacing = 32;
portrait_size = 64;
button_w = 120;
button_h = 40;
total_width = 2 * (portrait_size + spacing + button_w) + spacing;
