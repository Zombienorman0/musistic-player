//Gloabal Variables
color green = #3FFA03;
color lighterGreen = #45E810;
color black = #171A17;
color lighterGrey = #1F211F; 
color grey = #3E403D;
color coolpurple = #67096C;
color lightPurple = #D651DE;

//color bColor = color(500, 500, 500);

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
  //background(bColor);
  //bColor = ( color ) random(0x1000000) | 0xff000000;
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
  /*
   fill(lighterGreen);
   rect(109, 275, 50, 40);
   rect(340, 276, 50, 40);
   rect(210, 265, 85, 65);
   rect(232, 422, 30, 30);
   rect(232, 147, 30, 30);
  */
   fill(black);
  triangle(215, 272, 215, 322, 244, 298);
  rect( 254, 272, 15, 50, 6);
  rect( 274, 272, 15, 50, 6);
  
  triangle(152, 283, 152, 307, 137, 296);
  triangle(137, 283, 137, 307, 122, 296);
  rect( 117, 283, 5, 25, 6);
  
  triangle(345, 283, 345, 307, 363, 296);
  triangle(363, 283, 363, 307, 378, 296);
  rect( 378, 283, 5, 25, 6);
  noStroke();
  rect( 245, 150, 5, 25, 6);
  rect( 235, 160, 25, 5, 6);
  noStroke();
  
  rect( 235, 435, 25, 5, 6);
  
  fill(lightPurple);
  //ellipse();
  fill(coolpurple);
  //line();
  
  
  
  
  
 //println ("Mousex:", mouseX, "\tMouseY:", mouseY);

}

void mouseClicked() { 
  quitButtonMouseClicked();
  musicPlayerButtons();
}
