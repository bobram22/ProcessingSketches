PImage bubpiggy; 
PImage GameOver;
PImage piggy;
PImage game;
int Game = 60;
int Over = 80;
int piggyX = 70;
int piggyY = 90;
void setup() {
  size(500, 353);
  PImage piggymoney = loadImage("piggymoney.jpg");
  background(piggymoney);
  bubpiggy = loadImage("piggybankrises.png");
  bubpiggy.resize(8, 8);
  piggy = loadImage("piggyBank.png");
  piggy.resize(8, 8);
  GameOver = loadImage("IlluminatiLogo.png");
  GameOver.resize(8, 8);
  game = loadImage("GameOver1.jpg");
}

void draw() {
  image(bubpiggy, piggyX, piggyY);
  if (mousePressed) {
    if (piggyX -10 < mouseX && mouseX < piggyX +10 && piggyY -10 < mouseY && mouseY<piggyY +10) {
      fill(0, 255, 0);
      ellipse(mouseX, mouseY, 10, 10);
    } else {
      fill(255, 0, 0);
      ellipse(mouseX, mouseY, 10, 10);
    }
  }
  

  else if (mousePressed) {
    if (Game -10 < mouseX && mouseX < Game +10 && Over -10 < mouseY && mouseY< Over +10) {
      background(game);
    image(GameOver, Game, Over);  
  }
  }
  image(piggy, 68, 290);
  image(piggy, 490, 86);
  image(piggy, 320, 94);
  image(piggy, 73, 320);
}

