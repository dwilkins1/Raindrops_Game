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



  void lives()
  {

    if (loc.y >= height && loc.x < 14000 && life == 3)
    {
      life -= 1;
    }
    if (loc.y >= height + 100 && loc.x < 13000 && life == 2)
    {
      life -= 1;
    }
    if (loc.y >= height + 200 && loc.x < 12000 && life == 1)
    {
      life -= 1;
    }

    fill(200, 0, 0);

    if (life == 3)
    {
      ellipse(1200, 50, 50, 50);
    }
    if (life == 3 || life == 2)
    {
      ellipse(1140, 50, 50, 50);
    }
    if (life == 3 || life == 2 || life == 1)
    {
      ellipse(1080, 50, 50, 50);
    }
  }
}

