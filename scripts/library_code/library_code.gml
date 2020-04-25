function centerCursor() {
	window_mouse_set(window_get_width() / 2, window_get_height() / 2);
}

function MatchCardinalDirection(angle, magnitude, dir) {
	// there's probably a constant-time way to do this but i don't
	// really care enough to spend time finding it
	
	if (angle < 0) {
	    return false;
	}

	if (abs(magnitude) < 0.2) {
	    return false;
	}

	if (angle >= dir - 45 && angle <= dir + 45) {
	    return true;
	}

	if (magnitude - 45 < 0) {
	    if (angle >= dir + 315 && angle <= dir + 405) {
	        return true;
	    }
	}

	return false;
}

function GetStickMagnitude(u, v) {
	return point_distance(0, 0, u, v);
}

function GetStickAngle(u, v) {
	if (abs(u) < 0.1 && abs(v) < 0.1) return 0;
	return round(point_direction(0, 0, u, v) / 2) * 2;
}