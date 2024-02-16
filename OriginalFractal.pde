int value = 0;
int numSubStars = 500;

void setup() {
  size(800, 800);
  background(100);
}

void draw() {
  background(100);
  fill(255);
  translate(400, 400);
  myStar(0, 0, 300);
}

void mousePressed() {
  value = 0;
}

void myStar(float x, float y, float size) {
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  drawStar(x, y, size, size/3, 5);
  float subStarSize = size / 20;

  for (int i = 0; i < numSubStars; i++) {
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






