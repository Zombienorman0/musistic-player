void mouseButtonPractice() {

if (mouseX>210 && mouseX<85 && mouseY>265 && mouseY<85) { //Hover Over
    fill(hoverOverButton);
    rect(210, 265, 85, 85);
  }// else {
    fill(regularButton);
    rect(210, 265, 85, 85);
  }
