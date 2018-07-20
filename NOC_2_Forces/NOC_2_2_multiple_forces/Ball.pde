class Ball
{
  PVector location;
  PVector velocity;
  PVector acceleration;

  Ball()
  {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void move()
  {
    velocity.add(acceleration);
    location.add(velocity);
    
    /* acceleration multiplied with zero to prevent 
       it from increasing per frame of animation*/
    acceleration.mult(0);
  }

  void applyForce(PVector f)
  {
    acceleration.add(f);
  }

  void checkEdges()
  {
    if (location.x>width)
    {
      location.x=width;
      velocity.x*=-1;
    } else if (location.x<0)
    {
      location.x=0;
      velocity.x*=-1;
    }

    if (location.y>height)
    {
      location.y=height;
      velocity.y*=-1;
    }
  }

  void show()
  {
    stroke(0);
    strokeWeight(2);
    fill(255, 255, 0);
    ellipse(location.x, location.y, 48, 48);
  }
}
