void setup(){
  size(400,400);
  
}
int FX = 200;
int FY = 392;
Car c = new Car(300,200,100,10);
Car C = new Car(100,100,100,10);
Car v = new Car(300,355,100,10);
void draw(){
  background(0,0,0);
  fill(0,255,0);
  ellipse(FX,FY,15,15);
  c.display();
  C.display();
  v.display();
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      //Frog Y position goes up
      FY=FY-5;
      
      }
      else if(keyCode == DOWN)
      {
        FY=FY+5;
        //Frog Y position goes down 
      }
      else if(keyCode == RIGHT)
      {
        FX=FX+5;
       //Frog X position goes right
      }
      else if(keyCode == LEFT)
      {
        FX=FX-5;
        //Frog X position goes left
      }
   }
  cut();
}
void cut(){
  if (FX>400){
   FX= 392;
  }
   else if (FX<0){
   FX= 4;
  }
   if (FY>400){
   FY= 392;
  }
   else if (FY<0){
   FY= 4;
  }
}
public class Car{
  int CX;
  int CY;
  int size;
  int speed;
  Car(int CX,int CY,int size,int speed){
   this.CX= CX;
   this.CY= CY;
   this.size= size;
   this.speed= speed;
  }
    void display() 
  {
    fill(0,0,255);
    rect(CX , CY,  size , speed);
  }

}
