class Personaje {
  int pant=0;
  PImage img, img1;
  int posX, posY, x, y;
  int ancho, alto;
  int topePiso;
  int topeSalto;
  boolean estaSaltando;
  int estaSaltandoDireccion;
  boolean reboteX=true;
  int dirX = 1;
  int vel = 2;
  Martillo martillo;

  Personaje() {
    posX=50;
    posY=342;
    topePiso = posY;  
    topeSalto = posY - 50;
    ancho=30;
    alto=30;   
    martillo=new Martillo(posX, posY);

    img = loadImage("personaje1.png");
    img1 = loadImage("personaje2.png");
  }
  void dibujarPersonaje1() {
    image(img, posX, posY, ancho, alto);
    calcularMovimiento();
  }
  void dibujarPersonaje2() {
    image(img1, posX, posY, ancho, alto);
    calcularMovimiento();
  }

  void moverDerecha() {
    posX = posX + 5;
  }
  void moverIzquierda() {
    posX = posX - 5;
  }
  void moverArriba() {
    posY = posY - 5;
  }
  void moverAbajo() {
    posY = posY + 5;
  }
  void cambiopersonaje() {

    if (frameCount%5==0) {
      dibujarPersonaje1();
    } else {
      dibujarPersonaje2();
    }
  }
  void calcularMovimiento() {
    calcularMovimientosLaterales();
    calcularQueEstaSaltando();
  }

  void calcularMovimientosLaterales() {
    if (keyPressed && keyCode == LEFT) {
      moverIzquierda();
    }
    if (keyPressed && keyCode == RIGHT) {
      moverDerecha();
    }
  }

  void calcularQueEstaSaltando() {
    if (keyPressed && keyCode == UP && !estaSaltando) {
      estaSaltando = true;
      estaSaltandoDireccion = 1;
    } else if ( estaSaltando &&  estaSaltandoDireccion == 1 && posY < topeSalto) {
      estaSaltandoDireccion = -1;
    } else if (estaSaltando &&  estaSaltandoDireccion == -1 && posY > topePiso) {
      estaSaltandoDireccion = 0;
      estaSaltando = false;
    } else if (estaSaltando && estaSaltandoDireccion == 1) {
      posY=posY-7;
      posX=posX+5;
    } else if (estaSaltando && estaSaltandoDireccion == -1) {
      posY=posY+3;
      posX=posX+3;
    }
  
  }
  
  int posicionX() {
    return posX;
  }

  int posicionY() {
    return posY;
  }

  void atacar() {      

    martillo.condicionataque();
    martillo.nuevoataque();
    martillo.dibujarmartillo();
    martillo.lanzarMartillo();
  }
  void volverpersonaje() {
    if (keyPressed && keyCode == 'r' ||keyPressed && keyCode == 'R' ) {
      posX=50;
      posY=342;
      topePiso = posY;  
      topeSalto = posY - 50;
    }
  }
  void cambiodenivel() {

    posX=20;
    posY=392;
    topePiso = posY;  
    topeSalto = posY - 50;
  }


  void caeagua() {
    posY=posY+7;
  }
}
