Bacteria [] bob;
int x = 0;
int y = 0;
void setup()   
{     
  size(500, 500);
  background(255);
  bob = new Bacteria[50];
  for(int i = 0; i<bob.length; i++)
  {
    bob[i] = new Bacteria();
    //bob[i].walk();
    //bob[i].show();
  }
    //bob[i] = new Bacteria();
  //bob = new Bacteria();
//brenton = new Walk();
}   
void draw()   
{
  //background(0);
  //bob = new Bacteria();
  //background(0);
  //fill(255,0,0);
  //ellipse(x,y, 10, 10);
  //x = x + (int)(Math.random()*5)-2;
  //ellipse(x, 150, 10, 10);
  //bob.bacteria();
  //bob.show();
  //bob.walk();
  for (int i = 0; i < bob.length; i++)
    //bob[i] = new Bacteria();
    bob[i].show();
    bob[i].walk();
}  
class Bacteria    
{
  int myX, myY,myColor;
  Bacteria()
  {
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*1));
    //run = 0;
  }
  void show()
  {
    fill(myColor);
    ellipse(myX,myY,20,20);
    //for(run = 0;run < 20;run++)
    //  fill(255,0,0);
    //  ellipse(myX,myY,10,10);
  }
  void walk()
  {
    myX = myX + (int)Math.random()*3-1;
    myY = myY + (int)Math.random()*3-1;
  }

}