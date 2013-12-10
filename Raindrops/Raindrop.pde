class Raindrop
{

  PVector loc = new PVector(random(0, width), random(-1000, 0));
  PVector vel = new PVector(0, 20);
  int d = 100;
  PImage drop;

  Raindrop()
  {
    drop = loadImage("Raindrop.png");
  }

  void Raindrop()
  {
    image(drop,loc.x, loc.y);
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

