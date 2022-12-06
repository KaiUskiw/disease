//Global Variables
float appHeight, appWidth;
int fontSize;
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
String title = "start", footer="quit";
PFont titleFont;
Boolean start=false, noNowreallystart=false ;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, white=#FFFFFF , red=#FF000D ,green=#0FD825 ;
float centerX;
  float centerY;
void setup() {
  //Display & Orientation
  size(600,400);
  displayOrientation();
  appWidth = width;
  appHeight = height;
  //
  Population();
  //Theme: i.e. Face (will work in portrait and landscape)
  faceSetup();
  //Background Image (could be in draw too)
}//End setup
//
void draw() {
  //OS System Button
  //Start Button | Measles Reset Button
  //Theme: face & measles with different sizes and colours

   measles();
     nose();
   eyes();
  mouth();
  //
  fill(#D80F0F);
  rect(1,100,100,100);
  if ( noNowreallystart==true ) {
    program();
    //
titleFont = createFont("Haettenschweiler", 55); //Verified the font exists in processing.JAVA
//
//Layout or text space and typographical features
rect(titleX, titleY, titleWidth, titleHeight); 
rect(footerX, footerY, footerWidth, footerHeight);
//
//Repeated Executed Code
fill(green);
textAlign(CENTER, CENTER);
fontSize = 50; //Largest size given window
textFont(titleFont, fontSize);
text( title, titleX, titleY, titleWidth, titleHeight);
text( footer, footerX, footerY, footerWidth, footerHeight);
  } 
  }//End draw
//
void keyPressed() {
//Post-OS Level Start Button
  if ( key==' ' && start==true ) noNowreallystart = true;
  //
  //Prototype Key Board Quit Button OR Shortcut
  if ( key=='Q' || key=='q') exit() ;
  if ( key==CODED && keyCode == ESC ) exit();
}
  //KeyBoard Shortcuts
 //End keyPressed
//
void mousePressed() {
  //OS System Button
  //Start Button
  //Quit Button
  //Night Mode
  //
  //OS Level Start Button
  start = true;
  println("To Start, Press the Space Bar, if you can't do that, cry about it.");
  //Hint Bug if continue pressing mouse
  //
  //Quit Button: Logical Rectangle, see println
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
}//End mousePressed
//
//End MAIN Program
