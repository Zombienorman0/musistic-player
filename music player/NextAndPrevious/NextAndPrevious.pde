//file / sketch / import library / add library / click minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global variables
Minim minim;
int numberOfSongs = 4;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;



void setup() {
  //size();
  
  minim = new Minim(this);
  song[0] = minim.loadFile("Tiny_Spaceship.mp3");
  song[1] = minim.loadFile("Edison.mp3");
  song[2] = minim.loadFile("Sweeney.mp3");
  song[3] = minim.loadFile("Metal.mp3");
 
  println("start of console");
  println("click the console to finish starting this program");
  println("press P to play and pause");
  
}

void draw() {
}
void mousePressed() {}

void keyPressed() {
  if ( key == 'n' || key == 'N'){
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong = currentSong + 1;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong = currentSong + 1;
      }
    }
  }
  if ( key == 'r' || key == 'R'){//rewind
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs + 1 ) {
        currentSong = numberOfSongs + numberOfSongs;
      } else {
        currentSong = currentSong - 1;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs + 1 ) {
        currentSong = numberOfSongs + numberOfSongs;
      } else {
        currentSong = currentSong - 1;
      }
    }
  }
if (key == 'p' || key == 'P') { //Play-Pause
 if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    }else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    }else{
      song[currentSong].play();
    }
  }
  if (key == 's' || key == 'S') {//Stop
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else { //Song is not playing
      song[currentSong].rewind();
    }
  }
}
