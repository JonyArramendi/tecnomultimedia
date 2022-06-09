
void dibujarsegundocuadro(){
fill (#ECF500);
  rect (80, 80, 400, 400);
  for (i=0; i<20; i++) {
    for (j=0; j<20; j++) {
      if ((i+j)%6==0) {
        noStroke();
        fill(colores);
        rect (80+i*20, 80+j*20, tam, tam);
      }
    }
  }
}
