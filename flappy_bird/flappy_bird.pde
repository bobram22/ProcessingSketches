void setup(){
 size(500,500);
}
int X = 10;
int Y = 250;
int x = 155;
double V = 0;
double G = 0.05;
int r = (int) random(100, 400);
void draw(){
  background(0,245,255);
  fill(255,245,0);
  ellipse(X,Y,20,20);
  fill(0,255,100);
  rect(x,400,50, r);
 Y-=V;
  V-=G;
  x--;
  if(x == -50){
   x = 500; 
  }
}
void mousePressed(){
 V++; 
}
