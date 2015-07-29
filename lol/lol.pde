void setup()
{background(0,255,0);
size (1000,1000);
}
void draw()
{
fill(random(255),random(255),random(255));
rect (mouseX, mouseY, 110, 110);
}
