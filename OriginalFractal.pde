public void setup()
{
  size(500,500);
 ellipseMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(250,250,100);
}
public void myFractal(int x, int y, int siz)
{
  ellipse(x,y,siz,siz);
  if(siz > 3)
  {
    myFractal(x-siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
  }
}




public void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

public void draw() {
  background(0);
  myRose(250, 250, 100, 5); // Adjust the last parameter to control the number of petals
}

public void myRose(float x, float y, float size, int k) {
  for (float theta = 0; theta < TWO_PI; theta += 0.01) {
    float r = sin(k * theta); // Polar equation for a rose curve
    float xPos = x + size * r * cos(theta);
    float yPos = y + size * r * sin(theta);
    point(xPos, yPos);
  }
}





