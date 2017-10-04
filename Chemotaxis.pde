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
  }
}
void draw()   
{
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].walk();
  }
}
class Bacteria    
{
  int myX, myY,myColor;
  Bacteria()
  {
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*1));
  }
  void show()
  {
    fill(myColor);
    ellipse(myX,myY,20,20);
  }
  void walk()
  {
    myX = myX + (int)Math.random()*3-1;
    myY = myY + (int)Math.random()*3-1;
  }
}