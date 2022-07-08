//https://youtu.be/Ndtzc3sIamY

int pantalla=0;

void setup() {
  size(400, 400);
  tablero = new int[cantFilas][cantColumnas];
  contenido = new int[3];
  ancho = width/cantColumnas;
  alto = height/cantFilas;
  dibujomina[0] = loadImage("mina.png");
  dibujomina[1]=loadImage("bandera.png");
  dibujomina[2]=loadImage("principal.jpg");
  perdiste="GAME OVER, NO TE RINDAS!!\n PRESIONA R";
  ganaste= "GANASTE, FELICITACIONES!!\n PRESIONA R";
  lineas = loadStrings("creditos.txt");
  lineas2 = loadStrings("instrucciones.txt");
  
}

void draw() {


  pantallainicio(50);

  juego();
 gameover();
  ganaste();

  creditos(25);
  instrucciones();
}
void mouseClicked() {
  if (pantalla==1) {
    int columna = floor(map(mouseX, 0, width, 0, cantColumnas));
    int fila = floor(map(mouseY, 0, height, 0, cantFilas));

    tablero[fila][columna]= floor(random(n));
  }
  if (pantalla==0) {
    if (dist(mouseX, mouseY, 200, 100) < 25) {

      pantalla=1;
    
    } 
    if (dist(mouseX, mouseY, 200, 300) < 25) {
      pantalla=3;
    }
    if (dist(mouseX, mouseY, 200, 200) < 25) {
      pantalla=2;
    }
  }
}

void keyPressed() {
  if (key =='R' || key == 'r') {
  setup();
     buscaminas=true;
    buscaminas1=true;
    puntos=0;
    posY=0;
    pantalla=0;
  }
}
