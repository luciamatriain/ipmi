// 
//Lucia Victoria Amatriain- comision 2

PImage ilusion;
color blanco, negro;
boolean debug;

void setup () {
  size (800, 400);
  ilusion= loadImage("ilusion2.png");
  colorMode(HSB);
  blanco = color(0, 0, 360);
  negro = color(0, 360, 0);
  debug = false;
}

void draw() {
  background(155);
  rectBlanco();
  rectNegro();
  ilusion.resize(600, 400);
  image(ilusion, -200, 0);

  if (debug) {
    background(155);
    image(ilusion, -200, 0);
    blanco= color(0, 0, 360);
    negro= color(0, 360, 0);
    rectBlanco();
    rectNegro();
    debug=false;
  }
}

void mouseDragged() {
  float mx = map(mouseX, 0, width, 0, 360);
  float my = map(mouseY, 0, height, 0, 360);
  blanco = color(mx, 360, my);
  negro = color(my, 360, mx);
}

void keyPressed() {
  if (key== ' ') {
    debug=!debug;
  }
}
