//Define classes for raindrop, catcher, and timer
Raindrop R1;
Catcher C1;
Timer T1 = new Timer();

//Create array for raindrops

Raindrop[] Raindrop = new Raindrop[50];

//Variables relating to program

PImage img;
int index = 0;
boolean pause = true;
int f;
int life = 3;


//Set size, framerate, create catcher and raindrop array
void setup()
{
  size(1280, 720); 
  frameRate(30);
  C1 = new Catcher();
  for (int i = 0; i < 30; i++)
  {
    Raindrop[i] = new Raindrop();
  }
  img = loadImage("Assassins_Whale.jpg");
}

//Adds background and implements raindrops, catcher, and timer

void draw()
{

  image(img, 0, 0);

  if (pause == false)
  {
    for (int i = 0; i < index; i++)
    {
      Raindrop[i].lives();
      Raindrop[i].Raindrop();
      Raindrop[i].reset();
      
      
      C1.le_catch(Raindrop [i]);
      C1.score();
    }

    C1.catcher();
    T1.time();
    time();
    C1.gameover();
  }

  //Creates four difficulties that change the speed of the raindrops

  difficulty();
  println(f);
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
    newdrop = !newdrop;
    if (newdrop == true)
    {
      index = 0;
      index++;
    }
  }
}

int diff;

void difficulty()
{
  if (diff == 1)
  {
    f = 5;
  }

  if (diff == 2)
  {
    f = 13;
  }

  if (diff == 3)
  {
    f = 20;
  }

  if (diff == 4)
  {
    f = 40;
  }

  textSize(20);
  if (pause == true)
  {
    textAlign(CENTER);
    rectMode(CENTER);
    fill(255);
    rect(width/2, 200, 200, 100);
    fill(0);
    text("Easy", width/2, 210);
    fill(255);
    rect(width/2, 310, 200, 100);
    fill(0);
    text("Medium", width/2, 320);
    fill(255);
    rect(width/2, 420, 200, 100);
    fill(0);
    text("Hard", width/2, 430);
    fill(255);
    rect(width/2, 530, 200, 100);
    fill(0);
    text("Hero Mode", width/2, 540);
  }
  println(mouseY);
  if (mouseX > width/2 -100 && mouseX < width/2 + 100 && mouseY > 150 && mouseY < 250 && mousePressed)
  {
    diff = 1;
    pause = false;
  }

  if (mouseX > width/2 -100 && mouseX < width/2 + 100 && mouseY > 260 && mouseY < 360 && mousePressed)
  {
    diff = 2;
    pause = false;
  }

  if (mouseX > width/2 -100 && mouseX < width/2 + 100 && mouseY > 370 && mouseY < 470 && mousePressed)
  {
    diff = 3;
    pause = false;
  }

  if (mouseX > width/2 -100 && mouseX < width/2 + 100 && mouseY > 480 && mouseY < 580 && mousePressed)
  {
    diff = 4;
    pause = false;
  }
}

