//funcion que modifica los colores
void interaccion(float posX, float posY) {
  blanco = color(posX, 360, posY);
  negro = color(posY, 360, posX);
}


//funciones que remapean mouseX y mouseY
float remapX(int min, int max) {
  return map(mouseX, min, width, min, max);
}

float remapY(int min, int max) {
  return map(mouseY, min, height, min, max);
}
