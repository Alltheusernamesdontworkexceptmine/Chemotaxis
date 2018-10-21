//Chemotaxis
//different speeds; different shapes mimic mouse movements
Bacteria[] regenald;
void setup()   
{    
  size(800, 800);
  regenald= new Bacteria[1000];
  for (int i = 0; i < regenald.length; i++) {
    regenald[i] = new Bacteria((int)(Math.random()*2));
  }
}
void draw()   
{
  fill(0, 10);
  rect(0, 0, width, height);
  noStroke();
  for (int i=0; i<regenald.length; i++) {
    regenald[i].show();
    regenald[i].move();
  }
}
class Bacteria    
{     
  float myX, myY, startX, startY;
  int myColor;
  boolean isCircle;
  Bacteria(int ranValue)
  {
    startX= myX = (int)(Math.random()*800);
    startY= myY = (int)(Math.random()*800);
    myColor= color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    if(ranValue == 0) {
      isCircle = true;
    }else {
      isCircle = false;
    }
  }
  void move()
  {
    if (mouseX> myX)
      myX=myX+(int)(Math.random()*6)-4;
    else
      myX=myX+(int)(Math.random()*7)-1;
    if (mouseY> myY)
      myY=myY+(int)(Math.random()*6)-3;
    else
      myY=myY+(int)(Math.random()*7)-1;
  }
  void show()
  {
    fill(myColor);
    if(isCircle == true)
      ellipse(myX, myY, 10, 10);
    if(isCircle == false)
      rect(myX, myY, 10, 10);
    if (myX>800)
      myX=(int)(Math.random()*800);
    if (myY>800)
      myY=(int)(Math.random()*800);
    if (myX<0)
      myX=(int)(Math.random()*800);
    if (myY<0)
      myY=(int)(Math.random()*800);
  }
}
