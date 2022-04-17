void setup() {
  size(600, 600);
  PFont mono;
  mono = createFont ("ArialMT-48.vlw", 12);
  textFont(mono);
  background(255);
  fill(135, 206, 235);
  rect(0, 0, 600, 200);
  noFill();
  rect(0, 200, 600, 200);
  fill(135, 206, 235);
  rect(0, 400, 600, 200);
  fill(239, 184, 16);
  stroke(239, 184, 16);
  circle(300, 300, 50);
  stroke(239, 184, 16);
  bezier(320, 320, 320, 328, 335, 330, 337, 336);
  bezier(327, 304, 333, 309, 343, 309, 348, 315);
  bezier(327, 290, 337, 293, 341, 286, 351, 289);
  bezier(319, 278, 324, 272, 334, 272, 344, 264);
  bezier(301, 272, 297, 267, 306, 259, 302, 249);
  bezier(281, 279, 272, 275, 268, 269, 259, 267);
  bezier(272, 293, 264, 288, 260, 293, 251, 290);
  bezier(272, 308, 268, 313, 258, 314, 255, 319);
  bezier(281, 322, 272, 324, 280, 334, 271, 338);
  bezier(299, 328, 296, 333, 304, 338, 301, 348);
  fill(#3C19CE);
  noStroke();
  circle(450, 20, 30);
  fill(#5BBBFA);
  circle(490, 20, 30);
  fill(#1AC10C);
  circle(530, 20, 30);
  fill(#9D0819);
  circle(450, 60, 30);
  fill(#ED0DFA);
  circle(490, 60, 30);
  fill(#7D0783);
  circle(530, 60, 30);
  fill(#E59807);
  circle(450, 100, 30);
  textSize(32);
  fill(0);
  text("FDA", 480, 110);
  textSize(18);
  text("Alumno: Arramendi Jonatan \n Comision 4", 335, 550);
}

void draw() {
  println("x:");
  print(mouseX);
  println("y:");
  print(mouseY);
}
