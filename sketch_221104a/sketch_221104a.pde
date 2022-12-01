//Global Variables
float appHeight, appWidth;
//
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
   eyes();
  nose();
  mouth();
  }//End draw
//
void keyPressed() {
 if( key='N' | key='n' );
 if( nightmode==false ) {
   nightmode=true;
 } else {
   nightmode=false;
 }
}
  //KeyBoard Shortcuts
 //End keyPressed
//
void mousePressed() {
  //OS System Button
  //Start Button
  //Quit Button
  //Night Mode
}//End mousePressed
//
//End MAIN Program
