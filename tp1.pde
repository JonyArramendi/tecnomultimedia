PImage imagendeinicio, imagencredito1, imagencredito2, imagencredito3, imagencredito4, imagencredito5, imagencierre;
int tamellipse=50;
int posX=100;
int posY=0;
int fc, falsofc;
PFont inicio;
boolean imagenfondo=false;
float reboX, reboY, tamX, tamY;
float velX, velY;
color relleno;

void setup() {
  size(900, 600);
  imagendeinicio= loadImage ("imagen1.jpg");
  imagencredito1= loadImage ("imagen2.jpg");
  imagencredito2= loadImage ("imagen3.jpg");
  imagencredito3= loadImage ("imagen4.jpg");
  imagencredito4= loadImage ("imagen5.jpg");
  imagencierre= loadImage ("imagen6.jpg");
  inicio = loadFont ("Consolas-Italic-48.vlw");
  reboX=150;
  reboY=150;
  tamX=100;
  tamY=100;
  velX=20;
  velY=20;
  relleno=color(0, 0, 0);
}
void draw() {
  posY++;
  falsofc=frameCount--;
  println (frameCount);
  println (mouseX);
  println (mouseY);
  image (imagendeinicio, 0, 0, width, height);
  strokeWeight(3);
  fill (#A0238F);
  ellipse (450, 450, 150, tamellipse);
  if (dist(mouseX, mouseY, 450, 450) < 75) {
    fill (#189808);
     ellipse (450, 450, 150, tamellipse);
  }
  fill(relleno);
  textFont (inicio, 20);
  text ("Creditos", 410, 460);

  if (imagenfondo==true) {
    background(220);
    image (imagencredito1, 0, 0, 600, height);
    fc=frameCount++;
    if (fc> 10 && fc<140) {
      textSize (14);
      fill(0);
      text ("Autor original, conceptos de historia\n y conceptos de personajes:\n Akira Toriyama\n (Publicado en «Jump Comics» de Shueisha)\n Cordinacion de produccion: Toei", 620, 650 - posY);
    } else if (fc>=140 && fc< 210) {

      image(imagencredito2, 0, 0, 600, height);
      textSize (14);
      fill(0);
      text ("Autor original, conceptos de historia\n y conceptos de personajes:\n Akira Toriyama\n (Publicado en «Jump Comics» de Shueisha)\n Cordinacion de produccion: Toei", 620, 564 - posY);
      text ("Producción general:\n Fuji Television (Shunki Hashizume)\n Yomiko Advertising (Naoko Sagawa)\n Toei Animation (Atsushi Kido, Satoru\n Takami)\n", 620, 690 - posY);
    } else if (fc>=210 && fc<310) {
      image(imagencredito3, 0, 0, 600, height);
      textSize (14);
      fill(0);
      text ("Autor original, conceptos de historia\n y conceptos de personajes:\n Akira Toriyama\n (Publicado en «Jump Comics» de Shueisha)\n Cordinacion de produccion: Toei", 620, 450 - posY);
      text ("Producción general:\n Fuji Television (Shunki Hashizume)\n Yomiko Advertising (Naoko Sagawa)\n Toei Animation (Atsushi Kido, Satoru\n Takami)\n", 620, 564 - posY);
      text ("Producción ejecutiva:\n Masato Seino (Fuji Television)\n Kazuya Watanabe (Yomiko Advertising)\n Kozo Morishita\n Gestión de producción: Ken Suetake\n", 620, 710-posY);
    } else if (fc>=310 && fc<410) {
      image(imagencredito4, 0, 0, 600, height);
      textSize (14);
      fill(0);
      text ("Autor original, conceptos de historia\n y conceptos de personajes:\n Akira Toriyama\n (Publicado en «Jump Comics» de Shueisha)\n Cordinacion de produccion: Toei", 620, 350 - posY);
      text ("Producción general:\n Fuji Television (Shunki Hashizume)\n Yomiko Advertising (Naoko Sagawa)\n Toei Animation (Atsushi Kido, Satoru\n Takami)\n", 620, 450 - posY);
      text ("Producción ejecutiva:\n Masato Seino (Fuji Television)\n Kazuya Watanabe (Yomiko Advertising)\n Kozo Morishita\n Gestión de producción: Ken Suetake\n", 620, 564-posY);
      text ("Libreto:\n Yoshifumi Fukushima\n King Ryuu\n Toshio Yoshitaka\n Makoto Koyama\n Atsuhiro Tomioka\n Hiroshi Yamaguchi\n Ayumi Hisao\n Ken'ichi Yamashita\nDiseño de arte:\n Shinzo Yuki\n Diseño de color:\n Yoshitaka Kato\n", 620, 725-posY);
    } else if (fc>=410) {
      image(imagencierre, 0, 0, width, height);
      reboX=reboX+ velX;
      reboY=reboY+ velY;
      fill (relleno);
      ellipse (reboX, reboY, tamX, tamY);
      fill (255);
      textSize (18);
      text ("PRESS R", reboX, reboY);
      if (reboX>= width-tamX/2) {
        velX=-20;
        relleno= color (random(255), random(255), random (255));
      }
      if (reboX<=0 + tamX/2) {
        velX=20;
        relleno= color (random(255), random(255), random (255));
      }
      if (reboY>= height-tamY/2) {
        velY=-20;
        relleno= color (random(255), random(255), random (255));
      }
      if (reboY<=0 + tamY/2) {
        velY=20;
        relleno= color (random(255), random(255), random (255));
      }
    }
  }
}    

void mouseClicked () {

  if (dist(mouseX, mouseY, 450, 450) < 75) {
    imagenfondo=true;
  }
}

void keyPressed() {
  if (key =='R' || key == 'r') {
    imagenfondo = false;
    frameCount=0;
    posY=0;
  }
}
