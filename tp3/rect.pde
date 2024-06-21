void rectBlanco() {
  int ancho = 40;
  int alto = 48;
  noStroke();
  fill(blanco);
  for (int a = 0; a < 3; a++) {
    for (int b = 0; b < 400; b += 86) {
      int posX = 380 + (a % 3) * 12;
      int posY = 2 + a * 52;
      rect(posX + b, posY, ancho, alto);
    }
  }
  for (int c = 0; c < 3; c++) {
    for (int d=0; d < 400; d += 86) {

      int posX2 =390 + (c % 2) * (-12);
      int posY2 =158+ c * 52;
      rect(posX2+ d, posY2, ancho, alto);
    }
  }
  for (int e = 0; e < 3; e++) {
    for (int f=0; f < 400; f += 86) {

      int posX3= 404 + (e % 2) * (-12);
      int posY3=314 + e * 52;
      rect(posX3+f, posY3, ancho, alto);
    }
  }
}


void rectNegro() {
  int ancho = 40;
  int alto = 48;
  noStroke();
  fill(negro);

  for (int g = 0; g < 3; g++) {
    for (int h = 0; h < 400; h += 86) {
      int posX4 = 423 + (g % 3) * 12;
      int posY4 = 2 + g * 52;
      rect(posX4 + h, posY4, ancho, alto);
    }
  }
  for (int i = 0; i < 3; i++) {
    for (int j=0; j < 400; j += 86) {

      int posX5 =433 + (i % 2) * (-12);
      int posY5 =158+ i * 52;
      rect(posX5+ j, posY5, ancho, alto);
    }
  }

  for (int k = 0; k < 3; k++) {
    for (int l=0; l < 400; l += 86) {

      int posX6= 447 + (k % 2) * (-12);
      int posY6=314 + k * 52;
      rect(posX6+ l, posY6, ancho, alto);
    }
  }
}
