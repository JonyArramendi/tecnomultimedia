class Tiempo {
  int tiempolimite=60; 
  int contador;
  float tiempojuego;
  Tiempo() {
    tiempojuego=0;
  }

  void dibujartiempo() {
    tiempojuego=tiempojuego+0.05;
    textSize(24);
    fill (#080807);
    contador= floor (tiempolimite - tiempojuego);
    text(contador, 250, 80);
  }
  void contadoradvierte() {
    fill(#FEFF03);
    text(contador, 250, 80);
  }
  
  void contadorporperder(){
   fill (#FF0313);
        text(contador, 250, 80);
  
  }
  float iniciotiempo() {

    return tiempojuego;
  }
  int contador() {
    return contador;
  }
}
