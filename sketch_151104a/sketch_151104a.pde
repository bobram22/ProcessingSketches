import ddf.minim.*;
AudioSample sound;
void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
    PImage JALAPENIO = loadImage("jalapenio.png");  
    image(JALAPENIO, mouseX, mouseY);
   
  }
  else if (mousePressed && (mouseButton == RIGHT)){
   PImage Pico_de_Gallo = loadImage("images.png");  
    image(Pico_de_Gallo, mouseX, mouseY);
  }
} 
void setup() {
  size(1000, 1000);
  fill(255, 204, 153);
  ellipse(500, 500, 600, 600);
  fill(204, 102, 0);
  ellipse(500, 500, 500, 500);
  fill(255, 255, 153);
  ellipse(500, 500, 450, 450);
  Minim minim = new Minim(this);         
  sound = minim.loadSample("hi.wav");
  sound.trigger();  
}

