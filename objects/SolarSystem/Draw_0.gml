// both the sun and stars are drawn at a scale of 5 and with no light
d3d_set_lighting(false);
draw_set_color(c_white);
d3d_transform_set_scaling(5, 5, 5);

d3d_model_draw(sphere, 0, 0, 0, tex_yellow);

d3d_model_draw(stars, 0, 0, 0, -1);

d3d_set_lighting(true);
d3d_transform_set_identity();

