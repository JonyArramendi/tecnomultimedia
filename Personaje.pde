class Personaje {
  PImage img;
  int posX, posY;
  int ancho, alto;
  Personaje() {
    posX=10;
    posY=250;
    ancho=50;
    alto=50;
    img = loadImage("personaje.png");
  }
  void dibujarPersonaje() {
    image(img, posX, posY, ancho, alto);
  }
  void moverDerecha() {
    posX = posX + ancho;
  }
  void moverIzquierda() {
    posX = posX - ancho;
  }
  void moverArriba() {
    posY = posY - alto;
  }
  void moverAbajo() {
    posY = posY + alto;
  }
}
