// planetary "days" not happen at the speed they should relative to their orbits
// because that would look absolutely ridiculous, except in maybe Mercury and
// Venus' cases

var d = SolarSystem.t * 3.6 / day;
var matrix = matrix_build(0, 0, 0, 0, 0, d, radius, radius, -radius);
matrix = matrix_multiply(matrix, matrix_build(0, 0, 0, tilt, 0, 0, 1, 1, 1));
matrix = matrix_multiply(matrix, matrix_build(x, y, z, 0, 0, 0, 1, 1, 1));
matrix_set(matrix_world, matrix);
vertex_submit(model, pr_trianglelist, texture);
matrix_set(matrix_world, matrix_build_identity());