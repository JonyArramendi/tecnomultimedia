class Obstaculo{
  PImage img;
  int  posY, ancho, alto, posX;
  int cant;
  boolean reboteX=true;
  Obstaculo(int i) {
    cant=1;
    posX=round (random (100,400))+i;
    posY=392;
    ancho=40;
    alto=40;    
    img = loadImage("obstaculo.png");
  }
  void dibujarobstaculos() {
    
    image(img, posX, posY, ancho, alto);
  }  
   int posicionX() {
    return posX;
  }

  int posicionY() {
    return posY;
  }
}
