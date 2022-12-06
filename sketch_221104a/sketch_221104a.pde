//Global Variables
float appHeight, appWidth;
int fontSize;
float titleX, titleY, titleWidth, titleHeight;
color Green, resetDefaultInk=#0FD825;
float footerX, footerY, footerWidth, footerHeight;
String title = "start";
PFont titleFont;
Boolean start=false, noNowreallystart=false ;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, white=#FFFFFF , red=#FF000D ,green=#0FD825, purple=#5E059B;
float centerX;
  float centerY;
void setup() {
  //Display & Orientation
  size(600,400);
  //
    //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bruh, turn your phone";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  if ( appWidth < appHeight ) { //Declare Landscape Mode
    println(instruct);
  } else {
    //Fit CANVAS into Display Monitor
    if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.");
    } else {
      println("STOP, is broken");
    }
  }
  //
  displayOrientation();
  appWidth = width;
  appHeight = height;
  //
  Population();
  //
  titleX = footerX = appWidth * 1/100;
titleY = appHeight * 1/100;
footerY = appHeight * 8/10;
titleWidth = footerWidth = appWidth * 1/4;
titleHeight = footerHeight = appHeight * 1/10;
//
//
//Text Setup, single executed code
//Fonts from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available
printArray(fontList); 
titleFont = createFont("Haettenschweiler", 55); //Verified the font exists in processing.JAVA
  //Theme: i.e. Face (will work in portrait and landscape)
  faceSetup();
  //Background Image (could be in draw too)
}//End setup
//
void draw() {
  //OS System Button
  //Start Button | Measles Reset Button
  //Theme: face & measles with different sizes and colours
  //
  fill(#FFFFFF);
  rect(titleX, titleY, titleWidth, titleHeight); 
   //
   fill(#D8645A);
textAlign(CENTER, CENTER);
fontSize = 50; //Largest size given window
textFont(titleFont, fontSize);
text( title, titleX, titleY, titleWidth, titleHeight);
   //
   //
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
//
//Repeated Executed Code
fill(green);
textAlign(CENTER, CENTER);
fontSize = 50; //Largest size given window
textFont(titleFont, fontSize);
text( title, titleX, titleY, titleWidth, titleHeight);
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
