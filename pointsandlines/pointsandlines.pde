
float sx, sy;
int range = 20;
int maxdots = 100;

void setup()
{
  size(400, 400);
  background(0);
  smooth();
  sx = width / 2;
  sy = height / 2;
}

void draw()
{
  drawLine();
  drawPoint();
}

void drawLine()
{
  float ex, ey;
  ex = constrain(coordinate(sx), 0, width);
  ey = constrain(coordinate(sy), 0, height);
  setStroke(0, 5);
  line(sx, sy, ex, ey);
  sx = ex;
  sy = ey;
}

void drawPoint()
{
  setStroke(255, 1);
  for(int i = 0; i < maxdots; i++)
  {
    point( random(0, width), random(0, height) );
  }
}

void setStroke( int col, int weight )
{
  stroke( col );
  strokeWeight( weight);
}

float coordinate( float vnum )
{
  return vnum += random(-range, range);
}

