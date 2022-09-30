class Nube {
  PImage imgnube;
  int posX, posY, ancho, alto;
  int dirX = 1;
  int vel = 2;
  boolean reboteX=true;
  Nube(int _posY, int _ancho, int _alto, String imagenube) {
    posY = _posY;
    posX = round (random (200, 400));
    ancho = _ancho;
    alto = _alto;
    imgnube = loadImage(imagenube+".png");
  }
  void dibujar() {
    image(imgnube, posX, posY, ancho, alto);
  }
  void movernube() {
    if (reboteX) {
      if (posX+ancho > width || posX-ancho < 50) {
        dirX = (dirX * -1);
      }
      posX = posX + (dirX * vel);
    }
  }
}
