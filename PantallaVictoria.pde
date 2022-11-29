class PantallaVictoria{
    int pant=0;
  PImage img;
  boolean gano;
  PantallaVictoria() {
    img=loadImage ("final.png");
    gano=false;
  }

 void dibujarescenarioganar() {
    image(img, 0, 0, width, height);
    fill(#10CB3A);
    textSize(24);
    text ("GANASTE.. PRESIONA R", 120, 250);
    gano=true;
  }
}
