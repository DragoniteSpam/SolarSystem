t = 0;
sim_speed = 1;

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();

var b = buffer_load("sphere.dat");
sphere = vertex_create_buffer_from_buffer(b, vertex_format);
buffer_delete(b);
var b = buffer_load("jupiter.dat");
s_jupiter = vertex_create_buffer_from_buffer(b, vertex_format);
buffer_delete(b);
var b = buffer_load("neptune.dat");
s_neptune = vertex_create_buffer_from_buffer(b, vertex_format);
buffer_delete(b);
var b = buffer_load("saturn.dat");
s_saturn = vertex_create_buffer_from_buffer(b, vertex_format);
buffer_delete(b);

tex_mercury =   sprite_get_texture(planet_mercury, 0);
tex_venus =     sprite_get_texture(planet_venus, 0);
tex_earth =     sprite_get_texture(planet_earth, 0);
tex_mars =      sprite_get_texture(planet_mars, 0);
tex_jupiter =   sprite_get_texture(planet_jupiter, 0);
tex_saturn =    sprite_get_texture(planet_saturn, 0);
tex_uranus =    sprite_get_texture(planet_uranus, 0);
tex_neptune =   sprite_get_texture(planet_neptune, 0);

enum Directions {
    east            = 0,
    northeast       = 45,
    north           = 90,
    northwest       = 135,
    west            = 180,
    southwest       = 225,
    south           = 270,
    southeast       = 315
}

planets = ds_list_create();
ds_list_add(planets, new planet("Mercury",	0.39, 88, 59, 0.38, 0, sphere, tex_mercury));
ds_list_add(planets, new planet("Venus",	0.72, 225, 243, 0.9, 2, sphere, tex_venus));
ds_list_add(planets, new planet("Earth",		1, 365, 1, 1, 23, sphere, tex_earth));
ds_list_add(planets, new planet("Mars",		1.52, 687, 1, 0.55, 25, sphere, tex_mars));
ds_list_add(planets, new planet("Jupiter",	5.2, 4307, 0.4, 5, 3, s_jupiter, tex_jupiter));
ds_list_add(planets, new planet("Saturn",	9.5, 10767, 0.43, 4, 26, s_saturn, tex_saturn));
ds_list_add(planets, new planet("Uranus",	19.2, 30660, 0.75, 2, 82, s_jupiter, tex_uranus));
ds_list_add(planets, new planet("Neptune",	30, 60152, 0.8, 1.8, 28, s_neptune, tex_neptune));