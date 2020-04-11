// planetary "days" not happen at the speed they should relative to their orbits
// because that would look absolutely ridiculous, except in maybe Mercury and
// Venus' cases

var d = SolarSystem.t * 3.6 / day;
d3d_transform_set_scaling(radius, radius, radius);
d3d_transform_add_rotation_z(d);
d3d_transform_add_rotation_x(tilt);
d3d_transform_add_rotation_y(tilt);
d3d_transform_add_translation(x, y, z);
vertex_submit(model, pr_trianglelist, texture);
d3d_transform_set_identity();