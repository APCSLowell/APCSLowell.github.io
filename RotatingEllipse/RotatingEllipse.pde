void setup()
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
}