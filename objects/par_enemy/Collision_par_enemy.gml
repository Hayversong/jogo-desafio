var _push = 1;

var _dir = point_direction(other.x, other.y, x, y);
var _velh = lengthdir_x(_push, _dir);
var _velv = lengthdir_y(_push, _dir);

x += velh;
y += velv;