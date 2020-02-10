float rot = 0;
float rChange = 0;
boolean mode = false;
public void setup()
{
  size(300, 300);
  frameRate(20);
}
public void draw()
{
  background(0);
  if (mode == true)
  {
    noFill();
    stroke(255, 0, 255, 100);
    strokeWeight(3);
  } else {
    stroke(0);
    fill(255, 0, 255, 100);
    strokeWeight(1);
  }
  rot = 0;
  rChange = rChange + .005;
  if (rChange > PI)
  {
    rChange = 0;
  }
  myFractal(150, 150, 300);
}
public void myFractal(int x, int y, float diam)
{

  translate(x, y);
  rotate(rot);
  ellipse(0, 0, diam/2, diam);
  rotate(-rot);
  translate(-x, -y);
  rot = rot + rChange;
  if (diam > 10)
    myFractal(x, y, diam/1.1);
}
public void mouseClicked()
{
  mode = !mode;
}

/*void setup()
{
  size(300,300);
  background(0);
  frameRate(15);
}
void draw()
{
  fill(0,0,0,10);
  stroke(0,0,0,10);
  rect(0,0,300,300);
  noFill();
  stroke(255,0,255);
  translate(150,150);
  rotate(random(2*PI));
  ellipse(0,0,250,random(250));
}*/
