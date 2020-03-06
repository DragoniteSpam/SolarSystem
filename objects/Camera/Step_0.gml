var rdir=degtorad(direction);
var rpitch=degtorad(pitch);
var mspd=0.5;

// Camera look/rotation in 3 dimensions
direction=direction-Controller.rs_x*512/Controller.sensitivity;
pitch=clamp(pitch+Controller.rs_y*512/Controller.sensitivity, -80, 80);

if (Controller.press_start){
    game_end();
}

if (Controller.up){
    x+=cos(rdir)*mspd*cos(rpitch);
    y-=sin(rdir)*mspd*cos(rpitch);
    z-=sin(rpitch)*mspd;
}
if (Controller.down){
    x-=cos(rdir)*mspd*cos(rpitch);
    y+=sin(rdir)*mspd*cos(rpitch);
    z+=sin(rpitch)*mspd;
}
if (Controller.left){
    x-=sin(rdir)*mspd;
    y-=cos(rdir)*mspd;
}
if (Controller.right){
    x+=sin(rdir)*mspd;
    y+=cos(rdir)*mspd;
}

