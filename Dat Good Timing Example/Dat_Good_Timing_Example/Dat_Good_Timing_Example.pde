void setup()
{
 size(1280,720);
}

color c;
int time1 = 0;
int time2 = 0;
int time3 = 0;

void draw()
{
 time1 = millis();
 background(c);
 textAlign(CENTER);
 fill(255);
 text(millis(),width/2,height/2);
 
 time3 = time1 - time2;
 if (time3 >= 2000)
 {
  c = color(random(255),random(255),random(255));
  println(millis());
  time2 = time1;
  println(millis()/2000.0);
 }
}
