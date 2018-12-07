//file / sketch / import library / add library / click minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global variables
Minim minim;
AudioPlayer song1;

void setup() {
  //size();
  
  minim = new Minim(this);
  song1 = minim.loadFile("Tiny_Spaceship.mp3");

  println("start of console");
  println("click the console to finish starting this program");
  println("press P to play and pause");
  
}

void draw() {}

void mousePressed() {}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    if ( song1.isPlaying() ) {
      song1.pause();
    }else if ( song1.position() == song1.length() ) {
      song1.rewind();
      song1.play();
    }else{
      song1.play();
    }
  }
}
