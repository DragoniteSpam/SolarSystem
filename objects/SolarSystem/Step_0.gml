t += 10000 * sim_speed;

for (var i = 0; i < ds_list_size(planets); i++) {
	planets[| i].update(t);
}