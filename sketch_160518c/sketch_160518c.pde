int x =  50;
int X = 450;
void setup() {
  size(500,500);
  
  
  
}

void draw() {
 x++;
 X--;
 background(255,255,255);
  noFill();
  for(int i=10; i < 200; i+=3){
  ellipse(x,250,i,i);
  }
 noFill();
 for(int t = 10; t < 200; t +=3)
  ellipse(X,250,t,t);
  
  
}
