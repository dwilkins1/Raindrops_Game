class Raindrop
{

  PVector loc = new PVector(random(0, width), random(-100, 0));
  PVector vel = new PVector(0, 20);
  int d = int(random(10, 40));

  Raindrop()
  {
  }

  void Raindrop()
  {
    fill(0, 255, 255);
    ellipse(loc.x-d/2, loc.y-d/2, d, d);
    loc.add(vel);
  }

  void reset()
  {
    if (loc.y > height + 20)
    {
      loc.y = 0;
    }
  }
}

