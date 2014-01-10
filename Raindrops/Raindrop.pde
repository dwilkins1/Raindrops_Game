class Raindrop
{
  PVector vel;
  PVector loc;
  int d = 100;
  PImage drop;
  int y;




  //Creates raindrops with locations and velocities

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

  //Moves raindrops when they are caught 

  void reset()
  {
    if (loc.y > height + 200)
    {
      loc.y = 0;
      loc.x = int(random(0, width));
    }
  }
}

