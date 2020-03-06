/// @param r
/// @param u

if (abs(argument0) < 0.1 && abs(argument1) < 0.1) return 0;
return round(point_direction(0, 0, argument0, argument1) / 2) * 2;