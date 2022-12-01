//https://www.youtube.com/watch?v=TBYnzYDP8OU

Juego juego;
import processing.sound.*;
SoundFile  filejuego;
SoundFile  filederrota;
SoundFile  filevictoria;

void setup() {
  size(500, 500);
  juego = new Juego();
  filejuego =new SoundFile(this, "musica/mario.mp3"); 
  filederrota = new SoundFile (this, "musica/perdio.mp3");
  filevictoria = new SoundFile (this, "musica/gano.mp3");
}
void draw() {
  background(0);
  juego.dibujar();
}
void keyPressed() {
  juego.reinicio();
}
void mouseClicked() {
  juego.clickopciones();
}
