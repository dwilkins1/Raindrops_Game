//Define classes for raindrop, catcher, and timer
Raindrop R1;
Catcher C1;
Timer T1 = new Timer();

//Create array for raindrops

Raindrop[] Raindrop = new Raindrop[50];

//Variables relating to program

PImage img;
PImage lives;
PImage box;
int index = 0;
boolean pause = true;
int f;
int life = 3;
boolean end = false;


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
  lives = loadImage("Tomato.png");
  box = loadImage("Rupee.png");
}

//Adds background and implements raindrops, catcher, and timer

void draw()
{

  imageMode(CORNERS);
  image(img, 0, 0);
  difficulty();


  if (pause == false)
  {
    for (int i = 0; i < index; i++)
    {

      Raindrop[i].Raindrop();
      Raindrop[i].reset();


      C1.le_catch(Raindrop [i]);
      C1.score();
      lives(Raindrop [i]);
    }

    C1.catcher();
    T1.time();
    time();
    gameover();
  }

  //Creates four difficulties that change the speed of the raindrops

  gameover();
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

  textSize(16);
  if (pause == true && end == false)
  {
    textAlign(CENTER);
    imageMode(CENTER);
    fill(255);
    box.resize(200, 150);
    image(box, width/2, 235);
    fill(0);
    text("Easy", width/2, 210);
    fill(255);
    image(box, width/2, 345);
    fill(0);
    text("Medium", width/2, 320);
    fill(255);
    image(box, width/2, 455);
    fill(0);
    text("Hard", width/2, 430);
    fill(255);
    image(box, width/2, 565);
    fill(0);
    text("Hero Mode", width/2, 540);
  }

  println(mouseY);

  if (mouseX > width/2 - 80 && mouseX < width/2 + 80 && mouseY > 175 && mouseY < 230 && mousePressed)
  {
    diff = 1;
    pause = false;
  }

  if (mouseX > width/2 - 80 && mouseX < width/2 + 80 && mouseY > 285 && mouseY < 340 && mousePressed)
  {
    diff = 2;
    pause = false;
  }

  if (mouseX > width/2 - 80 && mouseX < width/2 + 80 && mouseY > 395 && mouseY < 450 && mousePressed)
  {
    diff = 3;
    pause = false;
  }

  if (mouseX > width/2 - 80 && mouseX < width/2 + 80 && mouseY > 505 && mouseY < 560 && mousePressed)
  {
    diff = 4;
    pause = false;
  }
}

void lives(Raindrop i)
{
  println(life);
  if (i.loc.y >= height && i.loc.x < 12000)
  {
    life -= 1;
    i.loc.x = 12001;
  }

  fill(200, 0, 0);

  if (life == 3)
  {
    image(lives, 1200, 30);
  }
  if (life == 3 || life == 2)
  {
    image(lives, 1140, 30);
  }
  if (life == 3 || life == 2 || life == 1)
  {
    image(lives, 1080, 30);
  }
}

void gameover()
{
  if (life < 1)
  {
    end = true;
    img = loadImage("Game_Over.png");
    pause = true;
  }
}

