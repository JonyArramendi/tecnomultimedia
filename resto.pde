class resto {
  PImage img2, img3, img4;
  int posX, posY;
  int ancho, alto;  
  resto() {
    img2 = loadImage("isla.png");
    img3 = loadImage("mar.png");
    img4 = loadImage ("nros.png");
  }  
  void dibujar() {
    image(img2, 0, 300, 150, 150);
    image(img3, 0, 450, width, 100);
    image(img4, 40, 10, 380, 80);
  }
}
