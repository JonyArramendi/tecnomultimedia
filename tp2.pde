//https://youtu.be/5u8ZWg2mqGY

int i, j;
int tam=40;
int cant=200;
boolean inicio=false;
int tamellipse=50;
color colores=color(20);
void setup() {
  size (600, 600);
}

void draw () {
  println(mouseX, mouseY);
  background(255);
  fill (#A0238F);
  ellipse (300, 300, 150, tamellipse);
  if (dist(mouseX, mouseY, 300, 300) < 25) {
    fill (#189808);
    ellipse (300, 300, 150, tamellipse);
  }
  fill(0);
  textSize(36);
  text ("T.P. 2", 300, 200);
  textAlign(CENTER);
  textSize(12);
  text ("INICIAR", 300, 300);
  if (inicio==true) {
    color coloresfondo=color(#ECF500);
    background(coloresfondo);

    dibujarprimercuadro();
    dibujarsegundocuadro();
    dibujartercercuadro();
    dibujarlineas();  
      }
   

  }
    void mouseClicked () {

      if (dist(mouseX, mouseY, 300, 300) < 75) {
        inicio=true;
      }
       
       
      
    }

    void keyPressed() {
      if (key =='R' || key == 'r') {
        inicio = false;
        colores=color(50);
        
      }
      if (key =='C' || key == 'c') {
        colores= color(random(0,255));
      }
   
    }
