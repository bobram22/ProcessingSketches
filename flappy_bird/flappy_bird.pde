void setup(){
 size(500,500);
}
int X = 10;
int Y = 250;
int x = 155;
int y = 480;
int ox = 155;
int oy = 0;
int h = 200;
double V = 0;
double G = 0.05;
int score = 0;

void draw(){
  background(0,245,255);
  fill(255,245,0);
  ellipse(X,Y,20,20);
  fill(0,255,100);
  rect(x,y,50, h);
  rect(ox,oy,50,300);
  fill(0,0,0);
  text(score,250,10);
 Y-=V;
  V-=G;
  x--;
  ox--;
  if(x == -50){
   int r = (int) random(310, 490);
    x = 500;
    y =r;
    score++;
  }
  if(ox == -50){
  
    ox = 500;
   
  }
  if(intersects(X,Y,x,y,h) || Intersects(X,Y,ox, 300, 50) ){
     X= 10;
     Y = 250;
     x=155;
     ox = 155;
}
     if(Y<0 || Y>500){
     X= 10;
     Y = 250;
     x=155;
     ox = 155;
}
}

void mousePressed(){
 V++; 
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}
boolean Intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY < paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}