// title      : Cube Example
// author     : Wolfgang Fahl
// license    : Apache License
// revision   : 0.1
// tags       : Cube
// file       : Cube.jscad

include ("Box.jscad");
// create a simple cube
function main () {
  width = 55;
  height = 45;
  len = 30;
  wall = 1.5;
  box = new Box(width, len, height, wall, false);
  box.at(0,0)
}
