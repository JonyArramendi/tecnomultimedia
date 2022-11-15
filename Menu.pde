class Menu {
  int posX, posY;
  PImage img;

  Menu() {
    posX= 220;
    posY= 300;
    img = loadImage("logo.png");
  }
  void dibujar_opciones() {
    fill (255);
    textSize (14);
    text ("COMENZAR", posX, posY);
    text ("CREDITOS", posX, posY+50);
    text ("INSTRUCCIONES", posX, posY+100);
    distancia_opciones();
  }
  void dibujarlogo() {
    image(img, 120, 20, width/2, height/2);
  }
  void distancia_opciones() {
    if (mouseX < 295  && mouseY<=297 && mouseX>222 && mouseY >= 287) {
      fill (#F4F5C3, 100);
      rect (posX-10, 286, 100, 16);
    } else if (mouseX < 328  && mouseY<=350 && mouseX>222 && mouseY >= 337) {
      stroke(30);
      fill (#F4F5C3, 100);
      rect (posX-10, 337, 80, 16);
    } else if (mouseX < 286  && mouseY<=400 && mouseX>222 && mouseY >= 388) {
      stroke(30);
      fill (#F4F5C3, 100);
      rect (posX-10, 388, 130, 16);
    }
  }
}
