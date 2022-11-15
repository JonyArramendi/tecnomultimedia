Juego juego;
 import processing.sound.*;

SoundFile  filejuego;
SoundFile  filederrota;
void setup() {
  size(500, 500);
  juego = new Juego();
    filejuego = new SoundFile (this, "musica/aventura.mp3"); 
    filederrota = new SoundFile (this, "musica/perdio.mp3"); 
}

void draw() {
  background(0);
  juego.dibujar();
}
void keyPressed() {
  juego.teclaPresionada();
}
void mouseClicked() {
  juego.clickopciones();
}
