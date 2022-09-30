class Juego {
  int  posX, posY;
  Nube nube;
  resto otros;
  Personaje personaje;
  Juego() {
    nube = new Nube(300, 120, 20, "nube");
    otros =new resto();
    personaje=new Personaje();
  }
  void dibujar() {
    dibujarNube();    
    dibujarotros();
    dibujarPersonaje();
  }
  void dibujarPersonaje() {
    personaje.dibujarPersonaje();
  }

  void dibujarNube() {
    nube.dibujar();
    movernube();
  }
  void movernube() {
    nube.movernube();
  }

  void dibujarotros() {
    otros.dibujar();
  }
  void teclaPresionada() {
    if (keyCode == RIGHT) {
      personaje.moverDerecha();
    }
    if (keyCode == LEFT) {
      personaje.moverIzquierda();
    }
    if (keyCode == UP) {
      personaje.moverArriba();
    }
    if (keyCode == DOWN) {
      personaje.moverAbajo();
    }
  }
}
