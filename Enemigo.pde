class Enemigo {
  PImage img, img1;
  int  poscaraY, ancho, alto, poscaraX;
  int dirX = 1;
  int vel = 2;
  boolean reboteX=true;
  Enemigo() {
    poscaraX=450;
    poscaraY=342;
    ancho=30;
    alto=30;
    img = loadImage("enemigo.png");
    img1 = loadImage("enemigo1.png");
  }
  void dibujarenemigo() {
    image(img, poscaraX, poscaraY, ancho, alto);
  }
  void dibujarenemigo1() {
    image(img1, poscaraX, poscaraY, ancho, alto);
  }
  void sentidoenemigo(){
  if (dirX<0){
    dibujarenemigo();}else{
    dibujarenemigo1();
    }
  }
  
  void moverenemigo() {
    if (reboteX) {
      if (poscaraX+ancho > width || poscaraX-ancho < 200) {    
        dirX = (dirX * -1);
             }
      poscaraX = poscaraX + (dirX * vel);
    }
   
    
  }
  
   int posicionX() {
    return poscaraX;
  }

  int posicionY() {
    return poscaraY;
  }
}
