class Catcher
{

  Catcher()
  {
  }

  float x = mouseX;
  float y = height - 50;
  int score = 0;
  int dx = 75;
  int dy = 75;

  void catcher()
  {
    x = mouseX;
    ellipseMode(CENTER);
    fill(255);
    ellipse(x, y, dx, dy);
  }

  void score()
  {
    fill(255);
    textSize(100);
    text(score, 100, 100);
  }


  void le_catch(Raindrop i)
  {
    if (dist(x, y, i.loc.x, i.loc.y) <= (dx/2))
    {
      println("Le catch");
      score ++;
      i.loc.x = 10000;
    }
  }
}

