//https://youtu.be/oZEYM3UE9ac
//Lucia Victoria Amatriain- comision 2

PImage ilusion;
color blanco, negro;
float Ancho, Alto;
boolean debug;

void setup () {
  size (800, 400);
  ilusion= loadImage("ilusion2.png");
  debug = false;
  //tamaños
  Ancho= 40;
  Alto= 48;
  //colores
  colorMode(HSB);
  blanco = color(0, 0, 360);
  negro = color(0, 360, 0);
}

void draw() {
  background(155);
  rectBlanco(Ancho, Alto);
  rectNegro(Ancho, Alto);
  ilusion.resize(600, 400);
  image(ilusion, -200, 0);


  if (debug) {
    Ancho=40;
    Alto=48;
    blanco= color(0, 0, 360);
    negro= color(0, 360, 0);
    debug=false;
  }
}

//la posX/posY va a responder al valor retornado de remapX/remapY (coordenadas mouseX/mouseY entre 0-360)
void mouseDragged() {
  interaccion(remapX(0, 360), remapY(0, 360));
}


void keyPressed() {
  if (key== ' ') {
    debug=!debug;
  } else {
    Ancho= ((random(20, 40)));
    Alto=((random(48, 68)));
  }
}
