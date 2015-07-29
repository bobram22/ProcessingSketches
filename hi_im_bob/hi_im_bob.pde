void setup() {
  size(800, 800);
}

void draw() {
  
   //2. make it a nice color
fill(200,0,200);
   //3. if the mouse is pressed, fill the circle with a different color          
if(mousePressed)
{fill (0,200,200);
rect (20,30,55,55);
}
   //1. draw an ellipse
ellipse (10,10,10,10);
}
