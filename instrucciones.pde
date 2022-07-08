String [] lineas2;
int tam = 25;
void instrucciones() {
  if (pantalla==2) {
    textSize(12);
    background(#076FA5);
    fill(#980E17);
    for (int i = 0; i < lineas2.length; i++) {
      text(lineas2[i], 20, tam*i + alto);
    }
  }
}
