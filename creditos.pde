String [] lineas;

int posX, posY;
void creditos(int tama) {
  posX=100; 
  posY++;
  if (pantalla==3) {

    textSize(12);
    background(#00E3FF);
    fill(#195F10);
    for (int i = 0; i < lineas.length; i++) {
      text(lineas[i], 100, 300 + tama * i + alto/2 - posY);
    }
  }
}
