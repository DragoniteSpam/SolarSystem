// both the sun and stars are drawn at a scale of 5 and with no light
d3d_set_lighting(false);
draw_set_color(c_white);
d3d_transform_set_scaling(5, 5, 5);

vertex_submit(sphere, pr_trianglelist, tex_yellow);
vertex_submit(stars, pr_trianglelist, -1);

d3d_set_lighting(true);
d3d_transform_set_identity();