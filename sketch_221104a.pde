//Global Variables
int appWidth, appHeight, fontSize;
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
String title = "aspect ratio", footer="no aspect ratio";
PFont titleFont;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float topX, topY, topWidth, topHeight;
float bottomX, bottomY, bottomWidth, bottomHeight;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
float picWidthAdjusted2=0.0, picHeightAdjusted2=0.0;
float picWidthAdjusted3=0.0, picHeightAdjusted3=0.0;
PImage pic1, pic2, pic3;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50, tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void setup()
{
  size(800, 600); //Landscape
  //Copy Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic1 = loadImage("../images used/27.jpg");
  pic2 = loadImage("../images used/baboon (1).jpg");
  pic3 = loadImage("../images used/baboon (1).jpg");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  topX = appWidth * 1/4;
  topY = appHeight * 11/20;
  topWidth = appWidth * 1/2;
  topHeight = appHeight * 9/20;
  bottomX = appWidth *1/4;
  bottomY = appHeight * 0/20;
  bottomWidth = appWidth * 1/2;
  bottomHeight = appHeight * 9/20;
  //
   titleX = footerX = appWidth * 1/4;
  titleY = appHeight * 1/10;
  footerY = appHeight * 8/10;
  titleWidth = footerWidth = appWidth * 1/2;
  titleHeight = footerHeight = appHeight * 1/10;
  //
  String[] fontList = PFont.list(); //To list all fonts available
  printArray(fontList); //For listing all possible fonts to choose from, then createFont
  titleFont = createFont("Haettenschweiler", 50); //Verified the font exists in Processing.JAVA
  //
  rect(titleX, titleY, titleWidth, titleHeight);
  rect(footerX, footerY, footerWidth, footerHeight);
  //
  //
  //Image Dimensions for Aspect Ratio: image meta data
  //Note: meta explored in MP3's or music files
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth1 = 800; //baboon image
  int picHeight1 = 600;
  int picWidth2 = 860;//27 image
  int picHeight2 = 580;
  int picWidth3 = 325; //baboon image
  int picHeight3 = 485;
  //
  //Image Orientation: Landscape, Square, Portrait
  float smallerDimension1, largerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
  float smallerDimension2, largerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
  float smallerDimension3, largerDimension3, imageWidthRatio3=0.0, imageHeightRatio3=0.0;
  if ( picWidth1 >= picHeight1 ) { //True if Landscape or Square
    largerDimension1 = picWidth1;
    smallerDimension1 = picHeight1;
    //
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted1 = backgroundImageWidth; //stretch or reduce
    imageHeightRatio1 = smallerDimension1 / largerDimension1;
    picHeightAdjusted1 = picWidthAdjusted1 * imageHeightRatio1;
    //
    if ( picHeightAdjusted1 > backgroundImageHeight+1 ) { //Error Catch
      println (picHeightAdjusted1, backgroundImageHeight);
      println("STOP: image background height is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension1 = picHeight1;
    smallerDimension1 = picWidth1;
    //
    //Students to create
    picHeightAdjusted1 = backgroundImageHeight; //stretch or reduce
    imageWidthRatio1 = smallerDimension1 / largerDimension1;
    picWidthAdjusted1 = picHeightAdjusted1 * imageWidthRatio1;
    if ( picWidthAdjusted1 > backgroundImageWidth ) {
      println("STOP: image background width is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  if ( picWidth2 >= picHeight2 ) { //True if Landscape or Square
    largerDimension2 = picWidth2;
    smallerDimension2 = picHeight2;
    //
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted2 = topWidth; //stretch or reduce
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
    //
    if ( picHeightAdjusted2 > topHeight ) { //Error Catch
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension2 = picHeight2;
    smallerDimension2 = picWidth2;
    //
    //Students to create
    picHeightAdjusted2 = topHeight; //stretch or reduce
    imageWidthRatio2 = smallerDimension2 / largerDimension2;
    picWidthAdjusted2 = picHeightAdjusted2 * imageWidthRatio2;
    if ( picWidthAdjusted2 > topWidth ) {
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  if ( picWidth3 >= picHeight3 ) { //True if Landscape or Square
    largerDimension3 = picWidth3;
    smallerDimension3 = picHeight3;
    //
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted3 = bottomWidth; //stretch or reduce
    imageHeightRatio3 = smallerDimension3 / largerDimension3;
    picHeightAdjusted3 = picWidthAdjusted3 * imageHeightRatio3;
    //
    if ( picHeightAdjusted3 > bottomHeight ) { //Error Catch
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension3 = picHeight3;
    smallerDimension3 = picWidth3;
    //
    //Students to create
    picHeightAdjusted3 = bottomHeight; //stretch or reduce
    imageWidthRatio3 = smallerDimension3 / largerDimension3;
    picWidthAdjusted3 = picHeightAdjusted3 * imageWidthRatio3;
    if ( picWidthAdjusted3 > bottomWidth ) {
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  //
  //Rectangular Layout and Image Drawing to CANVAS
  //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( topX, topY, topWidth, topHeight );
  rect( bottomX, bottomY, bottomWidth, bottomHeight );
  //
  //Background Image must be single executed code
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  image( pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
}//End setup
//
void draw()
{
  fontSize = 50;
   textFont(titleFont, fontSize);
  text( title, titleX, titleY, titleWidth, titleHeight );
  textAlign(CENTER, BOTTOM);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  text( footer, footerX, footerY, footerWidth, footerHeight );
  //
  image( pic2, topX, topY, picWidthAdjusted2, picHeightAdjusted2 );
  image( pic3, bottomX, bottomY, picWidthAdjusted3, picHeightAdjusted3 );
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //  
  //Mouse Pressed will control background image
  if ( mouseButton == LEFT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(64, 64, 40, 85); //RGB: Night Mode
    image( pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  }
  if ( mouseButton == RIGHT ) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(255, 50); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image(pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  }
}//End mousePressed
//
//End Main Program
