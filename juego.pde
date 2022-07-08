int cantFilas=10 ;
int cantColumnas=10;
int ancho, alto, n,fila,columna;
int [][] tablero;
int [] contenido;
boolean buscaminas=true;
boolean buscaminas1=true;
boolean inicio=false;
PImage [] dibujomina=new PImage[3];
int puntos;
String ganaste, perdiste;
void juego() {
  if (pantalla==1) {

 
  
    if (buscaminas==true&&buscaminas1==true) {
for (n=0; n<=3; n++) {
      }
      puntos=0;
      for ( fila = 0; fila < cantFilas; fila++) {
        for ( columna = 0; columna < cantColumnas; columna++) {
          if (tablero[fila][columna]== 3) {
            fill(255, 0, 0, 15);
            image (dibujomina[0], columna*ancho, fila*alto, ancho/2+15, alto/2+15);
            buscaminas=false;
            
          } 
          if (tablero[fila][columna]== 2) {
            puntos=puntos+1;
            fill(#E4F7E3, 15);
            image (dibujomina[1], columna*ancho, fila*alto, ancho/2+15, alto/2+15);
           
          } 
          if (tablero[fila][columna]== 1) {
            puntos=puntos+1;
            fill(#E4F7E3, 15);
            image (dibujomina[1], columna*ancho, fila*alto, ancho/2+15, alto/2+15);
           
          }
           
             tablero();
         
          
        }
      }
    }

    rect(5, 15, 45, 15);
    fill (255);
    textSize(8);
    text("PUNTOS:"+puntos, 8, 24);
  }
  
 
}
void tablero(){
  strokeWeight(2); 
          stroke (50);
          rect(columna * ancho, fila * alto, ancho, alto);
          fill(150);
  }
