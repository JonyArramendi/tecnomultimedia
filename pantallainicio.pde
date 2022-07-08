

void pantallainicio(int tamellipse) {
  if (pantalla==0) {
    image(dibujomina[2], 0, 0, width, height);
    fill (#A0238F);
    ellipse (200, 100, 150, tamellipse);
    if (dist(mouseX, mouseY, 200, 100) < 25) {
      fill (#189808);
      ellipse (200, 100, 150, tamellipse);
    }
    fill (#A0238F);
    ellipse (200, 200, 150, tamellipse);
    if (dist(mouseX, mouseY, 200, 200) < 25) {
      fill (#189808);
      ellipse (200, 200, 150, tamellipse);
    }

    fill (#A0238F);
    ellipse (200, 300, 150, tamellipse);
    if (dist(mouseX, mouseY, 200, 300) < 25) {
      fill (#189808);
      ellipse (200, 300, 150, tamellipse);
    }


    fill(0);
    textSize(36);
    fill(#4D0409);
    text ("T.P. 3", 150, 50); 
    textSize(18);
    fill(0);
    text ("INICIAR", 160, 110);
    fill(0);

    textSize(16);
    text ("INSTRUCCIONES", 140, 210);

    fill(0);

    textSize(18);
    text ("CREDITOS", 160, 310);
  }
}
