class Martillo {
  int tam, cantmartillo, velmartillo;
  int martillox, martilloy;
  PImage img;

  boolean disparo;
  Martillo (int x, int y) {
    martillox = x;
    martilloy = y;
    disparo=false;
    tam = 15;
    velmartillo=5;
    img= loadImage("martillo.png");
  }
  void dibujarmartillo () {
    image(img, martillox, martilloy, tam, tam);
  }
  void condicionataque() {
    if (keyCode == ' '&& disparo==false) {
      disparo=true;
    }
  }
  void lanzarMartillo() {
    if (disparo==true) {
      martillox=martillox+5;
    }
  }

  void nuevoataque() {
    if (martillox>width) {
      disparo=false;
    }
  }
   int posicionX() {
    return martillox;
  }

  int posicionY() {
    return martilloy;
  }
}
