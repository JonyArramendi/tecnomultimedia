class Instruccion {
  String [] lineas;
  int posX, posY;
  PImage img;  
  Instruccion() {
    img = loadImage("instruccion.jpg");
    lineas = loadStrings("instrucciones.txt");
  }
  void pantallainstruccion() {
    image(img, 0, 0, width, height);
    texto_instrucciones();
  }
  void texto_instrucciones() {
    textSize(16);
    fill(#F09F24);
    for (int j = 0; j < lineas.length; j++) {
      text(lineas[j], 20, 30*j+ 20);
    }
  }
}
