void setup(){
  size(500, 500);
  background(222);
  stroke(0, 20);
  noFill();
  frameRate(10);
}

void draw(){
  for (int i = 0; i < 8; i++) {  
    float angle = TWO_PI / 8 * i;
    int x = (int)(250 + 80 * cos(angle));
    int y = (int)(250 + 80 * sin(angle));
    rose(x, y, 400);
  }
}

void rose(int x, int y, int t){
  int offsetX = (int)random(-4, 4);
  int offsetY = (int)random(-4, 4);

  ellipse(x + offsetX, y + offsetY, t, t);

  if (t > 5) {
    rose(x + offsetX, y + offsetY, (int)(t / 1.5)); 
  }
}

void mousePressed(){
  background(255);
}
