void setup() {
  background(0);
  size(600, 600);
  sierpinski(0, 0, 600, 600); 
}

void mousePressed() {
  background(0);
  sierpinski(0, 0, 600, 600); 
}

void draw(){

}

public void sierpinski(int x, int y, int h, int w){
  if (h < 1 || w < 1) {
    return;
  }
  
  myStar(x + w/2, y + h/2, w); 

  sierpinski(x, y + h/4, h/2, w/2); 
  sierpinski(x + w/2, y + h/4, h/2, w/2); 
}

void myStar(float x, float y, float size) {
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  drawStar(x, y, size, size/3, 5);
  float subStarSize = size / 20;

  for (int i = 0; i < 500; i++) {
    float angle = random(TWO_PI);
    float newX = x + cos(angle) * size * 0.3;
    float newY = y + sin(angle) * size * 0.3;
    drawStar(newX, newY, subStarSize/3, subStarSize/9, 5);
  }
}

void drawStar(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle / 2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a + halfAngle) * radius1;
    sy = y + sin(a + halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}






