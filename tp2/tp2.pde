//Lucia Amatriain tp2-- Comision 2

//estados
String pantalla;
float tiempo;

//imagenes
PImage estado1, estado2, estado3, estado4, estado5, estado6;

//botón
float posX, posY, ancho, alto;

//texto
float posI, posD, posA, tamC, tamA;
color relleno;


void setup() {
  size(640, 480);

  //estados
  tiempo= 0;

  //imagenes
  estado1 = loadImage("estado1.png");
  estado2 = loadImage("estado2.png");
  estado3 = loadImage("estado3.png");
  estado4 = loadImage("estado4.png");
  estado5 = loadImage("estado5.png");
  estado6 = loadImage("estado6.png");

  //boton
  posX=170;
  posY=30;
  ancho=300;
  alto=60;

  //texto
  relleno= color(255, 255, 0);
  textAlign(CENTER, CENTER);
  posI= width;
  posD= 0;
  posA= height;
  tamC= 0;
  tamA= 100;
}


void draw() {
  tiempo++;

  //pantallas
  if (pantalla == ("primera")) {
    image(estado1, 0, 0);
  } else if (pantalla == ("segunda")) {
    image(estado2, -100, 0);
    textSize(30);
    fill(relleno);
    text("Star Wars Battlefront II es un videojuego\n de disparos en tercera y primera persona,\n el cual tiene lugar en el universo de Star Wars.\n Es la secuela del videojuego \n Star Wars: Battlefront\n del año 2015.", posI, 240);
    if (posI> width/2) {
      posI -= 2;
    }
  } else if (pantalla == ("tercera")) {
    image(estado3, 0, 0);
    fill(relleno);
    if (tamC<=30) {
      tamC+= 0.3;
    }
    text("El juego presenta un modo historia:\n La protagonista del juego, Iden Versio,\n líder de un grupo de Fuerzas Especiales\n imperiales conocido como Escuadrón Infierno,\n participa en múltiples eventos en los 20\n años previos a El Despertar\n de la Fuerza.", 320, 240);
    textSize(tamC);
  } else if (pantalla == ("cuarta")) {
    image(estado4, 0, 0);
    textSize(30);
    fill(255);
    text("Presenta diferentes modos de juego\n con mayor capacidad para admitir hasta\n 40 jugadores simultáneos. Galactic Assault\n se centra en piezas únicas\n repartidas en los once planetas\n y ubicaciones que presentan las\n tres eras de Star Wars.", posD, 240);
    if (posD<= width/2) {
      posD+=2;
    }
  } else if (pantalla == ("quinta")) {
    image(estado5, -100, 0);
    fill(255);
    text("En Starfighter Assault, las batallas\n se llevan a cabo en el espacio\n y las atmósferas planetarias involucrando\n a 12 atacantes contra 12\n defensores, ambos equipos siendo\n reforzados con 20 naves\n de IA adicionales.", 320, 240);
    if (tamA>= 30) {
      tamA-= 0.5;
    }
    textSize(tamA);
  } else if (pantalla == ("sexta")) {
    image(estado6, -150, 0);
    textSize(30);
    fill(relleno);
    text("Blast, el modo final, es\n el combate a muerte estándar\n del equipo entre dos equipos\n de 10 jugadores en el que\n los equipos intentan alcanzar\n 100 eliminaciones totales\n combinadas antes de que el\n equipo enemigo pueda hacerlo.", 320, posA);
    if (posA>=height/2) {
      posA-=2;
    }
  } else if (pantalla== ("septima")) {
    stroke(relleno);
    strokeWeight(5);
    strokeJoin(ROUND);
    fill(0);
    rect(posX, posY, ancho, alto);
    fill(relleno);
    text("r e i n i c i a r", 319, 58);
  }

  //Estados
  if (tiempo<200) {
    pantalla = "primera";
  } else if (tiempo>=200 && tiempo<1000) {
    pantalla = "segunda";
  } else if (tiempo>=1000 && tiempo<1600) {
    pantalla = "tercera";
  } else if (tiempo>=1600 && tiempo<2200) {
    pantalla = "cuarta";
  } else if (tiempo>=2200 && tiempo<2800) {
    pantalla = "quinta";
  } else if (tiempo>=2800 && tiempo<3400) {
    pantalla = "sexta";
  } else if (tiempo>=3400) {
    pantalla = "septima";
  }
}

//reiniciar
void mousePressed() {
  if (mouseX> posX && mouseX<470 && mouseY>posY && mouseY<90) {
    tiempo = 0;
    pantalla= "primera";
    posI= width;
    posD= 0;
    posA= height;
    tamC= 0;
    tamA= 100;
  }
}
