/// @param angle
/// @param magnitude
/// @param dir
// there's probably a constant-time way to do this but i don't
// really care enough to spend time finding it

var angle = argument0;
var magnitude = argument1;
var dir = argument2;

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