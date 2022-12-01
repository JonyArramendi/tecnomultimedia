class Vida {
  int cantvida;


  Vida() {

    cantvida=2;
  }


  void dibujarvida() {
    fill (0);
    textSize(24);
    text(cantvida, 100, 80);
  }
  void descontarvida() {
    cantvida=cantvida-1;
  }
  int vidarestante() {

    return cantvida;
  }
}
