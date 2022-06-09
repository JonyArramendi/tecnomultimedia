 
 void dibujarprimercuadro(){
 for (i=0; i<cant; i++) {
    for (j=0; j<cant; j++) {
      if ((i+j)%6==0) {
        noStroke();
        fill(colores);
        rect (i*20, 600-j*20, tam, tam);
      }
    }
  }
 }
