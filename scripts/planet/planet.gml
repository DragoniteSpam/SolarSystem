function planet(_name, _distance_in_au, _days_in_year, _days_in_day, _radius, _tilt, _model, _texture) constructor {
	// 50,000,000 km is one pixel unit
	
	x = 0;
	y = 0;
	z = 0;
	name = _name;
	distance = _distance_in_au * 15;
	year = _days_in_year * 86400;
	day = _days_in_day * 86400;
	radius = _radius;
	tilt = _tilt;
	model = _model;
	texture = _texture;
	
	update = function(t) {
		var angle = t * 360 / year;
		x = distance * dcos(angle);
		y = -distance * dsin(angle);
	}
	
	draw = function(t) {
		// planetary "days" not happen at the speed they should relative to their orbits
		// because that would look absolutely ridiculous, except in maybe Mercury and
		// Venus' cases
		
		var d = t * 3.6 / day;
		var matrix = matrix_build(0, 0, 0, 0, 0, d, radius, radius, -radius);
		matrix = matrix_multiply(matrix, matrix_build(0, 0, 0, tilt, 0, 0, 1, 1, 1));
		matrix = matrix_multiply(matrix, matrix_build(x, y, z, 0, 0, 0, 1, 1, 1));
		matrix_set(matrix_world, matrix);
		vertex_submit(model, pr_trianglelist, texture);
		matrix_set(matrix_world, matrix_build_identity());
	}
}
