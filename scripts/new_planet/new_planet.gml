/// @param name
/// @param distance (in AU)
/// @param days (in years)
/// @param days (in day)
/// @param radius
/// @param tilt
/// @param model
/// @param texture

// 50,000,000 km is one pixel unit

var p = instance_create_depth(argument1 * 15, 0, 0, Planet);
p.distance = p.x;
p.name = argument0;
p.year = argument2 * 86400; // seconds in year
p.day = argument3 * 86400;  // seconds in day
p.radius = argument4;
p.tilt = argument5;
p.model = argument6;
p.texture = argument7;

return p;