var rdir = degtorad(direction);
var rpitch = degtorad(pitch);
var dt = delta_time / 1000000;
var mspd = 6 * dt;
var tspd = 15000 * dt;

// Camera look/rotation in 3 dimensions
direction = direction - Controller.rs_x * tspd / Controller.sensitivity;
pitch = clamp(pitch + Controller.rs_y * tspd / Controller.sensitivity, -80, 80);

if (Controller.press_start) {
    game_end();
}

if (Controller.up) {
    x += cos(rdir) * mspd * cos(rpitch);
    y -= sin(rdir) * mspd * cos(rpitch);
    z -= sin(rpitch) * mspd;
}
if (Controller.down) {
    x -= cos(rdir) * mspd * cos(rpitch);
    y += sin(rdir) * mspd * cos(rpitch);
    z += sin(rpitch) * mspd;
}
if (Controller.left) {
    x -= sin(rdir) * mspd;
    y -= cos(rdir) * mspd;
}
if (Controller.right) {
    x += sin(rdir) * mspd;
    y += cos(rdir) * mspd;
}