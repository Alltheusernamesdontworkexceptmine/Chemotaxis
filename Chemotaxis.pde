Bacteria[] regenald;
 void setup()   
 {    
   size(800,800);
   regenald= new Bacteria[1000];
   for(int i=0; i<regenald.length; i++)
     regenald[i] = new Bacteria();
 }   
 void draw()   
 {
   fill(0,10);
   rect(0,0,width,height);
   noStroke();
   for(int i=0; i<regenald.length; i++)
   {
     regenald[i].show();
     regenald[i].move();
   }  
   
}
class Bacteria    
 {     
   float myX,myY,startX,startY;
   int myColor;
   Bacteria()
   {
     myX=(int)(Math.random()*800);
     myY=(int)(Math.random()*800);
     startX=(int)(Math.random()*800);
     startY=(int)(Math.random()*800);
     myColor= color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   }
   void move()
   {
     myX=myX+(int)(Math.random()*5)-2;
     myY=myY+(int)(Math.random()*5)-2;
     startX=startX+(int)(Math.random()*7)-3;
     startY=startY+(int)(Math.random()*7)-3;
     
   }
   void show()
   {
     fill(myColor);
     ellipse(myX,myY,10,10);
     rect(startX,startY,10,10);
     
     if(myX>800)
       myX=mouseX;
     if(myY>800)
       myY=mouseY;
     if(startX>800)
       startX=mouseX;
     if(startY>800)
       startY=mouseY;
     if(mouseX> myX)
       myX=myX+(int)(Math.random()*6)-4;
     else
       myX=myX+(int)(Math.random()*7)-1;
     
     if(mouseY> myY)
       myY=myY+(int)(Math.random()*6)-3;
     else
       myY=myY+(int)(Math.random()*7)-1;
       
      if(mouseX> startX)
       startX=startX+(int)(Math.random()*6)-4;
     else
       startX=startX+(int)(Math.random()*7)-1;
     
     if(mouseY> startY)
       startY=startY+(int)(Math.random()*6)-3;
     else
       startY=startY+(int)(Math.random()*7)-1;   
   }
     
 }
