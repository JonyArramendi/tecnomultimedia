class Juego {
  int pant=0, cant=2;
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
  Obstaculo [] obstaculos;
  Pulpo pulpo;
  Tiempo tiempo;
  Vida vida;
  Juego() {
    menu=new Menu(); 
    personaje=new Personaje();
    escenario=new Escenario();
    enemigo=new Enemigo();
    musica=new Musica(); 
    pulpo=new Pulpo();
    vida=new Vida();
    obstaculos = new Obstaculo [cant];
    for (int i = 0; i < cant; i++) {
      obstaculos[i] = new Obstaculo(i);
    }
    tiempo=new Tiempo();
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
    if (pant == 3 && jugando ==true) { 
      pantallajuego();
      tiempo();
      vida.dibujarvida();
    }
    if (pant==4) {
      pantalladerrota();
    }
    if (pant==5) {
      pantallavictoria();
    }
    if (pant==6&&jugando ==true) {
      nivel2();
      tiempo();
    }
    if (pant==7&&jugando ==true) {
      nivelfinal();
      tiempo();
    }
  }
  void pantallajuego() {     
    background(#5187FA);
destruido();

    escenario.dibujarescenario();
    enemigo.sentidoenemigo();
    enemigo.moverenemigo();
    colisioncaracol();
    personaje.cambiopersonaje();    
    if ( personaje.posicionX()> 500) {
      pant=6;
      personaje.cambiodenivel();
    }
  }

  void colisioncaracol() {
    if (dist(enemigo.posicionX(), enemigo.posicionY(), personaje.posicionX(), personaje.posicionY()) <= 15) {
      colision = true;
      vida.descontarvida();
     personaje.revive();
    }
  }
  void colisionpulpo() {
    if (dist(pulpo.posicionX(), pulpo.posicionY(), personaje.posicionX(), personaje.posicionY()) <= 15) { 
      colision = true;
      vida.descontarvida();
      personaje.revive();
    }
  }

  void colisionfuego() {
    for (int i = 0; i < cant; i++) {
      if (dist(obstaculos[i].posicionX(), obstaculos[i].posicionY(), personaje.posicionX(), personaje.posicionY()) <= 15) {
        colision = true;
        vida.descontarvida();
        personaje.revive();
      }
    }
  }

  void pantalladerrota() {      
    escenario.escenarioderrota();
  }
  void pantallavictoria() {      

    escenario.escenariovictoria();
  }
  void nivel2() {
destruido();
    escenario.dibujarescenario2();     
    personaje.cambiopersonaje();  
    vida.dibujarvida();
    personaje.caeagua();  
    pulpo.moverpulpo();
    pulpo.sentidopulpo();
    colisionpulpo();
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
  void destruido() {
    if (vida.vidarestante()==0) {
      pant=4;
      musica.pararmusica(); 
      musica.reproducirmusica2();
    }
  }
  void nivelfinal() {
destruido();
    escenario.dibujarescenario3();     
    personaje.cambiopersonaje();
    vida.dibujarvida();
    colisionfuego();
    for (int i = 0; i < cant; i++) {
      obstaculos[i].dibujarobstaculos();
    }
    if ( personaje.posicionX()> 500) {
      pant=5;
      musica.pararmusica(); 
      musica.reproducirmusica3();
    }
  }
  void clickopciones() {
    if ( mouseX < 295  && mouseY<=297 && mouseX>222 && mouseY >= 287) {
      pant=3;
      jugando=true;
      musica.reproducirmusica();
    }
    if (mouseX < 328  && mouseY<=350 && mouseX>222 && mouseY >= 337) {
      pant=1;
    }
    if (mouseX < 286  && mouseY<=400 && mouseX>222 && mouseY >= 388) {
      pant=2;
    }
  }

  void tiempo() {
    if (jugando==true) {
      tiempo.dibujartiempo();
      if (tiempo.contador>0) {
        if (tiempo.contador<=20) {
          tiempo.contadoradvierte();
        }
      } 
      if (tiempo.contador<=10) {
        tiempo.contadorporperder();
      }
      if (tiempo.contador==0) {
        pant=4;
        musica.pararmusica(); 
        musica.reproducirmusica2();
      }
    }
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
      tiempo.tiempojuego=0;
      vida.cantvida= 2;
    }
  }
}
