Raindrop R1;

Raindrop[] Raindrop = new Raindrop[30];

void setup()
{
  size(1280, 720); 
  R1 = new Raindrop();
  for (int i = 0; i < 30; i++)
  {
    Raindrop[i] = new Raindrop();
  }
}

void draw()
{
  background(0, 0, 200);
  R1.Raindrop(); 
  for (int i = 0; i < 30; i++)
  {
    Raindrop[i].Raindrop();
    Raindrop[i].reset();
  }
  R1.Raindrop();
}

