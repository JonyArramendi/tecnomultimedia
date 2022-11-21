class Juego {
  int pant=0;
  boolean jugando=false;
  boolean colision=false;
  boolean perdio=false;
  boolean gano=false;
  Personaje personaje;
  Enemigo enemigo;
  Menu menu;
  Musica musica;
  Escenario escenario;
  Obstaculo obstaculo;
  Juego() {
    menu=new Menu(); 
    personaje=new Personaje();
    escenario=new Escenario();
    enemigo=new Enemigo();
    musica=new Musica();
    obstaculo= new Obstaculo();
  }
  void dibujar() {
    if (pant == 0 && jugando ==false) {
      menu.opciones();
    }
    if (pant == 1 && jugando ==false) {   
      menu.creditos();
    }
    if (pant == 2 && jugando ==false) {
      menu.instrucciones();
    }
    if (pant == 3 && jugando ==true && colision==false) { 
      pantallajuego();
    }
    if (pant==4) {
      pantalladerrota();
    }
    if (pant==5) {
      pantallavictoria();
    }
    if (pant==6&&jugando ==true) {
      nivel2();
    }
    if (pant==7&&jugando ==true) {
      nivelfinal();
    }
  }
  void pantallajuego() {     
    background(#5187FA);
    escenario.dibujarescenario();
    enemigo.sentidoenemigo();
    enemigo.moverenemigo();
    colisioncaracol();
    personaje.cambiopersonaje();    
    ataque();
    if ( personaje.posicionX()> 500) {
      pant=6;
      personaje.cambiodenivel();
    }
  }

  void colisioncaracol() {
    if (dist(enemigo.posicionX(), enemigo.posicionY(), personaje.posicionX(), personaje.posicionY()) <= 15) {
      colision = true;
      pant=4;
      musica.pararmusica(); 
      musica.reproducirmusica2();
    }
  }
  void colisionfuego() {
    if (dist(obstaculo.posicionX(), obstaculo.posicionY(), personaje.posicionX(), personaje.posicionY()) <= 15) {
      colision = true;
      pant=4;
      musica.pararmusica(); 
      musica.reproducirmusica2();
    }
  }

  void pantalladerrota() {      
    escenario.escenarioderrota();
  }
  void pantallavictoria() {      

    escenario.escenariovictoria();
  }
  void nivel2() {
    escenario.dibujarescenario2();     
    personaje.cambiopersonaje();
    if (personaje.posicionX()> 85 && personaje.posicionX()<185 || personaje.posicionX()> 325 && personaje.posicionX()<430) {
      personaje.caeagua();
    }
    if ( personaje.posicionY()> 500) {
      pant=4;
      musica.pararmusica(); 
      musica.reproducirmusica2();
    }
    if ( personaje.posicionX()> 500) {
      pant=7;
      personaje.cambiodenivel();
    }
  }
  void nivelfinal() {
    escenario.dibujarescenario3();     
    personaje.cambiopersonaje();
    colisionfuego();
    obstaculo.dibujarobstaculos();
    if ( personaje.posicionX()> 500) {
      pant=5;
      musica.pararmusica(); 
      musica.reproducirmusica3();
    }
  }
  void clickopciones() {
    if (mouseX < 295  && mouseY<=297 && mouseX>222 && mouseY >= 287) {
      jugando=true;
      pant=3;
      musica.reproducirmusica();
    }
    if (mouseX < 328  && mouseY<=350 && mouseX>222 && mouseY >= 337) {
      pant=1;
    }
    if (mouseX < 286  && mouseY<=400 && mouseX>222 && mouseY >= 388) {
      pant=2;
    }
  }

  void ataque() {
    if (pant == 3 && keyCode == ' ') {
      personaje.atacar();
    }
  } 
  void teclaPresionada() {
    if (pant == 3 || pant==6) {
      if ( keyCode == RIGHT) {
        personaje.moverDerecha();
      }
      if (keyCode == LEFT) {
        personaje.moverIzquierda();
      }
      if ( keyCode == UP) {
        personaje.moverArriba();
      }
    }
    reinicio();
  }
  void reinicio() {
    if (key =='R' || key == 'r') {
      pant=0;
      menu.reset_credito();
      jugando=false;
      musica.pararmusica();
      musica.pararmusica2();
      musica.pararmusica3();
      perdio=false;
      colision=false;
      personaje.volverpersonaje();
      gano=false;
    }
  }
}
