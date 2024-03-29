draw_clear(c_black);

var camera = camera_get_active();
camera_set_view_mat(camera, matrix_build_lookat(x, y, z, x + cos(degtorad(direction)), y - sin(degtorad(direction)), z - sin(degtorad(pitch)), 0, 0, 1));
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, window_get_width() / window_get_height(), 0.25, 4000));
camera_apply(camera);

with (SolarSystem) event_perform(ev_draw, 0);