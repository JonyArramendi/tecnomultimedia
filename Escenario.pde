class Escenario {
  int pant=0;
  PImage img, img2, img3;
  PantallaDerrota derrota;
  PantallaVictoria victoria;
  Obstaculo obstaculo;
  int cant=2;
  Escenario() {
    img = loadImage("escenario.png");
    img2 =loadImage ("escenario2.png");
    img3 =loadImage ("escenario3.png");
    derrota=new PantallaDerrota();
    victoria=new PantallaVictoria();

  }
  void dibujarescenario() {
    image(img, 0, 0, 2000, height);
  }
  void escenarioderrota() {
    derrota.dibujarescenarioderrota();
  }
  void escenariovictoria() {
    victoria.dibujarescenarioganar();
  }
  void dibujarescenario2() {
    background(#5187FA);
    image(img2, 0, 0, width, height);
  }
  void dibujarescenario3(){
    background(#5187FA);
    
    image(img3, 0, 0, width, height);
  
      
    }
}
