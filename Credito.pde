class Credito {
  String [] lineas;
  int posX, posY;
  PImage img;  
  Credito(){
  lineas = loadStrings("creditos.txt"); 
   posX=400; 
    img = loadImage("credito.png");
  }
  void pantallacredito() {
    image(img, 0, 0, width, height);
  }
 void texto_credito(){ 
    posY++;
    textSize(14);
    fill(255);
    for (int j = 0; j < lineas.length; j++) {
      text(lineas[j], 150, 300 + 12 * j - posY);
    } 
 }
  void reset_credito(){

     posY=0;

  }
}
