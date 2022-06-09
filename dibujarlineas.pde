 
 void dibujarlineas(){
 for (i=0; i<=height; i+=20) {
       
    stroke(#F50000);
        line(0, i, width,i);
        }
    for (i=0; i<=width; i+=20) { 
     stroke(155);
        line(i, 0,i,height); 
    }
 }
