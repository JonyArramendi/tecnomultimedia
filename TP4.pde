//https://youtu.be/kOlYcUQzs3g

Juego juego;
void setup() {
  size(500, 500);
  juego = new Juego();
}
void draw() {
  background(#548FE8);
  juego.dibujar();
}
void keyPressed() {
  juego.teclaPresionada();
}
