
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;


void setup() {
size(800,800);
background(255,255,255);
}
void draw(){
fill(255,136,170);
ellipse(400,400,300,300);
ellipse(400,450,150,150);
fill(0,0,0);
ellipse(370,450,50,70);
ellipse(430,450,50,70);
fill(mouseX,mouseY,25);
ellipse(340,330,60,55);
ellipse(450,330,60,55);
fill(0,0,0);
ellipse(340,340,30,33);
ellipse(450,340,30,33);
fill(255,136,170);
triangle(530, 320, 540, 260, 480, 280);
triangle(280, 320, 270, 240, 340, 270);
println(mouseX);
println(mouseY);

  if(mousePressed){
     System.out.println("EUREKA!");
    try {
      AudioInputStream audioInputStream = AudioSystem.getAudioInputStream(new File(
          "/Users/League/Google Drive/league-sounds/batman.wav"));
      Clip clip = AudioSystem.getClip();
      clip.open(audioInputStream);
      clip.start();
    } catch (Exception ex) {
      ex.printStackTrace();
    }
     PImage friends = loadImage("batman-logo-big.gif");  
     background(friends);
  }



}

