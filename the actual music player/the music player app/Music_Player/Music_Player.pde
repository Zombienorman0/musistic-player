//Gloabal Variables
color green = #3FFA03;
color lighterGreen = #45E810;
color black = #171A17;
color lighterGrey = #1F211F; 
color grey = #3E403D;

color bColor = color(500, 500, 500);

void setup () {
  size(500, 600);

  //String[] fontList = PFont.list(); 
  println("Start of Console");
  //printArray(fontList); 
  titleFont = createFont ("Harrington", 55); 

  quitButtonSetup();
  musicPlayerGUI_setup();
 
}

void draw() {
  background(bColor);
  bColor = ( color ) random(0x1000000) | 0xff000000;
  quitButtonDraw();
  fill(black);
  rect(27, 70, 450, 450, 50);
 fill(lighterGrey);
 noStroke();
 rect(53, 95, 400, 400, 45);
 stroke(1);
 fill(grey);
 ellipse(250, 300, 350, 350);
  fill(green);
  noStroke();
  ellipse(250, 300, 323, 323);
  ellipse(250, 300, 125, 125);
   stroke(1);
   fill(lighterGreen);
   noStroke();
  ellipse(250, 300, 225, 225);
   stroke(1);
  fill(green);
  noStroke();
  ellipse(250, 300, 125, 125);
   stroke(1);
   
   
   fill(black);
  triangle(215, 272, 215, 322, 244, 298);
  rect( 254, 272, 15, 50, 6);
  rect( 274, 272, 15, 50, 6);
   

 

}

void mouseClicked() { 
  quitButtonMouseClicked();
  musicPlayerButtons();
}
