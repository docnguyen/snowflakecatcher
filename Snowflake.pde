import java.awt.Color;
public class Snowflake
{
  private float x;
  private float y;
  private float radius = 10;
  private float velX = 0;
  private float velY = 0;
  private color c;
  
  public Snowflake(float xCoor, float yCoor)
  {
    x = xCoor;
    y = yCoor;
    
  }
  
  public float getX()
  {
    return x;
  }
  
  public float getY()
  {
    return y;
  }
  
  public color getColor()
  {
    return c;
  }
  
  public float getRadius()
  {
    return radius;
  }
  
  public float getVelX()
  {
    return velX;
  }
  public float getVelY()
  {
    return velY;
  }
  
  public void setX(float newX)
  {
    x = newX;
  }
  
  public void setY(float newY)
  {
    y = newY;
  }
  
  public void setRadius(float newRadius)
  {
    radius = newRadius;
  }
  
  public void setVelX(float newVelX)
  {
    velX = newVelX;
  }
  public void setVelY(float newVelY)
  {
    velY = newVelY;
  }
  
  public void setColor(color newColor)
  {
    c = newColor;
  }
  
  public void move(float deltaTime)
  {
    y += velY*deltaTime;
    x += velX*deltaTime;
  }
}
