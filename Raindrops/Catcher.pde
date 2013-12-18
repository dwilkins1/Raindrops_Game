class Catcher
{

  PImage catcher;
  
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
    catcher.resize(dx,dy);
  }

  void score()
  {
    fill(255);
    textSize(100);
    text(score, 100, 100);
  }


  void le_catch(Raindrop i)
  {
    if (dist(x, y, i.loc.x, i.loc.y) <= (i.d/2))
    {
      println("Le catch");
      score ++;
      i.loc.x = 10000;
    }
  }
}

