Snowflake S; 
Catcher C;
float left = 0;
float right = 0;
int snowflakeCaught = 0;
void setup()
{
  size(800,600);
  background(255,255,255);
  smooth();
  noStroke();
  
  float snowflakeRadius = 10;
  S = new Snowflake(width/2, 0);
  S.setVelY(30);
  S.setVelX(0);
  S.setRadius(snowflakeRadius);
  S.setColor(color(random(256),random(256),random(256)));
  float catcherWidth = 100;
  float catcherHeight = 10;
  C = new Catcher(width/2, height);
  C.setWidth(catcherWidth);
  C.setHeight(catcherHeight);
}
boolean caught(Snowflake S, Catcher C)
{
  boolean bottom = (S.getY()+S.getRadius() >= C.getY());
  boolean overlapped = ((S.getX()-S.getRadius())<= (C.getX()+C.getWidth()))
                      && ((S.getX()+S.getRadius())>= C.getX());
  if(bottom & overlapped)
  {
    return true;
  }
  else
  {
    return false;
  }
}
//boolean caught()
//{
//  if (S.getY() + S.getRadius()>=height)
//  {
//    return true;
//  }
//  else
//  {
//    return false;
//  }
//}
void draw()
{
  
  
  S.move(.1);
  background(0);
  fill(S.getColor());
  noStroke();
  ellipse(S.getX(), S.getY()+S.getRadius(), S.getRadius()*2, S.getRadius()*2);
  fill(255, 0,0);
  float catcherSpeed = 3.0;
  C.setX(C.getX() + (right - left)*catcherSpeed);
  if(C.getX()>=width)
  {
    C.setX(C.getX()%width);
  }
  if(C.getX()+C.getWidth()<0)
  {
    C.setX(width-C.getWidth());
  }
  rect(C.getX(), C.getY()-C.getHeight(), C.getWidth(), C.getHeight());
  if (caught(S, C) | S.getY()>=height)
  {
    if(caught(S, C))
    {
      snowflakeCaught++;
      println(snowflakeCaught);
      background(0,255,0);
    }
    else
    {
    background(255,0,0);
    }
    S.setRadius(random(10, 40));
    S.setY(0);
    S.setX(random(width));
    S.setColor(color(random(200,256),random(200,256),random(200,256)));
    S.setVelX(random(-5,5));
  }  
}


void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      left = 1;
    }
    if (keyCode == RIGHT)
    {
      right = 1;
    }
  }
}

void keyReleased()
{
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      left = 0;
    }
    if (keyCode == RIGHT)
    {
      right = 0;
    }
  }
}
