boolean playButton = false;

void  musicPlayerButtons() {
  //power button, see tab "Power button"
  //play-pause
  if (mouseX>width*7/16 && mouseX<width*9/16 &&   mouseY>height*7/16 && mouseY<height*9/16 ) {
    if (playButton == true) {
      playButton = false;
    } else{
      playButton = true;
    }
    println(playButton);
    
  }
  //next
  //previous
  //volume up
  //volumedown
  //media
}
