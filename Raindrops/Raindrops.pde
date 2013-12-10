Raindrop R1;
Catcher C1;
Timer T1 = new Timer();

Raindrop[] Raindrop = new Raindrop[50];
PImage img;
int index = 0;

void setup()
{
  size(1280, 720); 
  frameRate(30);
  R1 = new Raindrop();
  C1 = new Catcher();
  for (int i = 0; i < 30; i++)
  {
    Raindrop[i] = new Raindrop();
  }
  
  img = loadImage("Assassins_Whale.jpg");
}

void draw()
{
  image(img,0,0);

  for (int i = 0; i < index; i++)
  {
    Raindrop[i].Raindrop();
    Raindrop[i].reset();
    C1.le_catch(Raindrop [i]);
    C1.score();
  }

  C1.catcher();
  T1.time();
  time();
  
}

  int time1 = 0;
  int time2 = 0;
  int time3 = 0;
  boolean newdrop = true;

  void time()
  {
    time1 = millis();
    textAlign(CENTER);
    fill(255);
    textSize(10);
    text(millis()/1000.0, 30, height-10);

    time3 = time1 - time2;
    if (time3 >= 2000)
    {
      time2 = time1;
      println(millis()/2000.0);
      newdrop = !newdrop;
      if (newdrop == true)
      {
       index = 0;
       index++; 
      }
    }
  }
