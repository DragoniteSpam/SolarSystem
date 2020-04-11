shader_set(shd_sun);
texture_set_stage(shader_get_sampler_index(shd_sun, "displacementMap"), sprite_get_texture(spr_displacement, 0));
shader_set_uniform_f(shader_get_uniform(shd_sun, "displacement"), 0.0625);
shader_set_uniform_f(shader_get_uniform(shd_sun, "baseAlpha"), 1);
shader_set_uniform_f(shader_get_uniform(shd_sun, "time"), current_time / 1000, current_time / 1000);

vertex_submit(sphere, pr_trianglelist, sprite_get_texture(spr_sun, 0));
shader_reset();

vertex_submit(stars, pr_trianglelist, -1);