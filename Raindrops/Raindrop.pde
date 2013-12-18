class Raindrop
{
  PVector vel;
  PVector loc;
  int d = 100;
  PImage drop;
  int y;


  Raindrop() {
    loc = new PVector(random(0, width), random(-30, -10));
    vel = new PVector(0, y);    
    drop = loadImage("Raindrop.png");
    println(y);
  }

  void Raindrop()
  {
    image(drop, loc.x, loc.y);
    vel.y = f;
    loc.add(vel);
  }

  void reset()
  {
    if (loc.y > height + 200)
    {
      loc.y = 0;
      loc.x = int(random(0, width));
    }
  }
}

