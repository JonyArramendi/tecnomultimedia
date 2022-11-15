class Escenario {
  PImage img, img1,img2;
  Escenario() {
    img = loadImage("escenario.png");
    img1=loadImage ("perdiste.png");
    img2=loadImage ("ganaste.png");
  }
  void dibujarescenario() {
    image(img, 0, 0, 2000, height);
  }
  void dibujarescenarioderrota() {
    background(#FC080C);
    image(img1, width/2, height/2, 250, 250);
    fill(0);
    textSize(24);
    text ("PERDISTE.. PRESIONA R", 120, 50);
  }
  void dibujarescenarioganar() {
    background(#32D633);
    image(img2, width/2, height/2, 250, 250);
    fill(0);
    textSize(24);
    text ("GANASTE.. PRESIONA S", 120, 50);
  }
}
