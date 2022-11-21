class PantallaDerrota{
    int pant=0;
  PImage img;
  boolean perdio;
  PantallaDerrota() {
    img=loadImage ("perdiste.png");
    perdio=false;
  }

  void dibujarescenarioderrota() {
    background(#FAA2A2);
    image(img, width/2, height/2, 250, 250);
    fill(0);
    textSize(24);
    text ("PERDISTE.. PRESIONA R", 120, 50);
    perdio = true;
  }
 
}
