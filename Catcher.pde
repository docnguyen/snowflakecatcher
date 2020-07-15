import java.awt.Color;
public class Catcher
{
  private float x;
  private float y;
  private float w;
  private float h;
  
  public Catcher(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
  
  public float getX()
  {
    return x;
  }
  
  public float getY()
  {
    return y;
  }
  
  public float getWidth()
  {
    return w;
  }
  
  public float getHeight()
  {
    return h;
  }
  
  public void setX(float newX)
  {
    x = newX;
  }
  
  public void setY(float newY)
  {
    y = newY;
  }
  
  public void setWidth(float newWidth)
  {
    w = newWidth;
  }
  
  public void setHeight(float newHeight)
  {
    h = newHeight;
  }
}
