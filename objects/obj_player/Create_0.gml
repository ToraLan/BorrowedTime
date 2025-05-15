// Player character ID: 0 = Frieren, 1 = Himmel
character = 0;

// Sprite structure: walk_up, walk_down, walk_left, walk_right, idle_up, idle_down, idle_left, idle_right
char_sprites = [
    [ spr_frieren_walk_up, spr_frieren_walk_down, spr_frieren_walk_left, spr_frieren_walk_right,
      spr_frieren_idle_up, spr_frieren_idle_down, spr_frieren_idle_left, spr_frieren_idle_right ],
      
    [ spr_himmel_walk_up, spr_himmel_walk_down, spr_himmel_walk_left, spr_himmel_walk_right,
      spr_himmel_idle_up, spr_himmel_idle_down, spr_himmel_idle_left, spr_himmel_idle_right ]
];

// Movement speeds per character
char_speeds = [2, 2.5];

// Initialize
move_speed = char_speeds[character];

tilemap = layer_tilemap_get_id("tile_col");

heading = char_sprites[0][1];