t = 0;

d3d_start();
d3d_set_culling(true);
d3d_set_hidden(true);
d3d_set_lighting(true);
d3d_light_define_direction(1, 0, 0, 0, c_white);
d3d_light_enable(0, true);

stars = d3d_model_create();
d3d_model_load(stars, ".\\starbox.d3d");

sphere = d3d_model_create();
d3d_model_load(sphere, ".\\sphere.d3d");

s_jupiter = d3d_model_create();
d3d_model_load(s_jupiter, ".\\jupiter.d3d");

s_neptune = d3d_model_create();
d3d_model_load(s_neptune, ".\\neptune.d3d");

s_saturn = d3d_model_create();
d3d_model_load(s_saturn, ".\\saturn.d3d");

tex_yellow = background_get_texture(b_yellow);
tex_red = background_get_texture(b_red);
tex_blue = background_get_texture(b_blue);
tex_ltblue = background_get_texture(b_ltblue);

tex_mercury = background_get_texture(b_mercury);
tex_venus = background_get_texture(b_venus);
tex_earth = background_get_texture(b_earth);
tex_mars = background_get_texture(b_mars);
tex_jupiter = background_get_texture(b_jupiter);
tex_saturn = background_get_texture(b_saturn);
tex_uranus = background_get_texture(b_uranus);
tex_neptune = background_get_texture(b_neptune);

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

Mercury = new_planet("Mercury", 0.39, 88, 59, 0.38, 0, sphere, tex_mercury);
Venus = new_planet("Venus", 0.72, 225, 243, 0.9, 2, sphere, tex_venus);
Earth = new_planet("Earth", 1, 365, 1, 1, 23, sphere, tex_earth);
Mars = new_planet("Mars", 1.52, 687, 1, 0.55, 25, sphere, tex_mars);

Jupiter = new_planet("Jupiter", 5.2, 4307, 0.4, 5, 3, s_jupiter, tex_jupiter);
Saturn = new_planet("Saturn", 9.5, 10767, 0.43, 4, 26, s_saturn, tex_saturn);
Uranus = new_planet("Uranus", 19.2, 30660, 0.75, 2, 82, s_jupiter, tex_uranus);
Neptune = new_planet("Neptune", 30, 60152, 0.8, 1.8, 28, s_neptune, tex_neptune);