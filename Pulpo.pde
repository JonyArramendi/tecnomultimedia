class Pulpo {
  PImage img, img1;
  int  pospulpoY, ancho, alto, pospulpoX;
  int dirY= 1;
 
  int vel = 2;
  boolean reboteY=true;  boolean rebote1Y=true;
  Pulpo() {
    pospulpoX=350;
    pospulpoY=400;
   
    ancho=30;
    alto=30;
    img = loadImage("pulpo1.png");
    img1 = loadImage("pulpo2.png");
  }
  void dibujarpulpo() {
    image(img, pospulpoX, pospulpoY, ancho, alto);
  }
  void dibujarpulpo1() {
    image(img1, pospulpoX, pospulpoY, ancho, alto);
  }
  void sentidopulpo() {
    if (dirY<0) {
      dibujarpulpo();
    } else {
      dibujarpulpo1();
    }
  }

  void moverpulpo() {
    if (reboteY) {
      if (pospulpoY+ancho > height || pospulpoY-ancho < 300) {    
        dirY = (dirY * -1);
      }
      pospulpoY = pospulpoY + (dirY * vel);
    }
    
  }

  int posicionX() {
    return pospulpoX;
  }

  int posicionY() {
    return pospulpoY;
  }
 
}
