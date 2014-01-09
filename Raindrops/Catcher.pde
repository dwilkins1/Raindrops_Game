class Catcher
{

  //Image for catcher

    PImage catcher;

  //Set location and size of catcher

    Catcher()
  {
    catcher = loadImage("marill_.png");
  }

  float x = mouseX;
  float y = height - 100;
  int score = 0;
  int dx = 75;
  int dy = 75;

  void catcher()
  {
    x = mouseX;
    image(catcher, x, y);
    catcher.resize(dx, dy);
  }

  //Creates a score based on number of drops caught

  void score()
  {
    fill(255);
    textSize(100);
    text(score, 100, 100);
  }

  //Allows raindrops to be caught

  void le_catch(Raindrop i)
  {
    if (dist(x, y, i.loc.x, i.loc.y) <= (i.d/2))
    {
      println("Le catch");
      score ++;
      if (life == 3)
      {

        i.loc.x = 14000;
      }
      if (life == 2)
      {

        i.loc.x = 13000;
      }
      if (life == 1)
      {

        i.loc.x = 12000;
      }
    }
  }
}

