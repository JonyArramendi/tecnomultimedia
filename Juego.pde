class Juego {
  int pant=0;
  int posX,posY;
  boolean jugando=false;
  boolean colision=false;
  boolean perdio=false;
  boolean gano=false;
  Personaje personaje;
  Enemigo enemigo;
  Menu menu;
  Instruccion instruccion;
  Credito credito;
  Musica musica;
  Escenario escenario;
  Martillo martillo;

  Juego() {
    menu=new Menu();
    instruccion=new Instruccion();
    credito =new Credito();
    personaje=new Personaje();
    escenario=new Escenario();
    enemigo=new Enemigo();
    musica=new Musica();
    martillo=new Martillo(posX,posY);
  }

  void dibujar() {
    pantalladerrota();
    pantallavictoria();
    opciones();
    instrucciones();
    creditos();
    pantallajuego();
    println (mouseX, mouseY);
  }

  void opciones() {
    if (pant == 0 && jugando ==false) {
      menu.dibujarlogo();
      menu.dibujar_opciones();
    }
  }
  void instrucciones() {
    if (pant == 2 && jugando ==false) {
      instruccion.pantallainstruccion();
      instruccion.texto_instrucciones();
    }
  }
  void creditos() {
    if (pant == 1 && jugando ==false) {   
      credito.pantallacredito();
      credito.texto_credito();
    }
  }  

  void pantallajuego() {
    if (pant == 3 && jugando ==true&&colision==false) {     
      background(#5187FA);
      escenario.dibujarescenario();
      enemigo.sentidoenemigo();
      enemigo.moverenemigo();
      colision();
      eliminarenemigo();
      if (frameCount%10==0) {
        personaje.dibujarPersonaje1();
      } else {
        personaje.dibujarPersonaje2();
      }
      if (pant == 3 && keyCode == ' ') {

        personaje.atacar();
      }
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
  void colision() {

    if (dist(enemigo.posicionX(), enemigo.posicionY(), personaje.posicionX(), personaje.posicionY()) <= 8) {
      colision = true;
      pant=4;
      
    }
  }

  void eliminarenemigo() {

    if (dist(enemigo.posicionX(), enemigo.posicionY(), martillo.posicionX(), martillo.posicionY()) <= 8) {
      colision = true;
      pant=5;
    }
  }
  void pantalladerrota() {  
    if (colision == true&& pant==4) {
      musica.pararmusica(); 
      escenario.dibujarescenarioderrota(); 
      //musica.reproducirmusica2();
      perdio = true;
    }
  }
  void pantallavictoria() {  
    if (colision == true&& pant==5) {
      musica.pararmusica(); 
      escenario.dibujarescenarioganar();          
      gano = true;
    }
  }



  void teclaPresionada() {
    if (pant == 3 && keyCode == RIGHT) {
      personaje.moverDerecha();
    }
    if (pant == 3 && keyCode == LEFT) {
      personaje.moverIzquierda();
    }
    if (pant == 3 && keyCode == UP) {
      personaje.moverArriba();
    }
    if (pant == 3 && keyCode == DOWN) {
      personaje.moverAbajo();
    }


    volveatras();
  }
  void volveatras() {
    if (key =='R' || key == 'r') {
      pant=0;
      credito.reset_credito();
      jugando=false;
      musica.pararmusica();
      perdio=false;
      colision=false;
      personaje.volverpersonaje();
      gano=false;
    }
  }
}
