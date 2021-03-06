class Bullet extends Object
{
  
  float bulletSpeed = 20;
  
  Bullet(float direction)
  {
    forward = new PVector(sin(direction), -cos(direction));
    alive = true;
    lifespan = 3;
    
    this.direction = direction;
  }
  
  void update()
  {
    timer += tick;
    
    if(timer > lifespan)
    {
      alive = false;
    }
    
    PVector velocity = PVector.mult(forward, bulletSpeed);
    pos.add(velocity);
  }
  
  void display()
  {
    fill(0, 255, 125);
    
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(direction);
    rect(0, -20, 7, 20);
    popMatrix();
  }
}
