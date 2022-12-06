void Population () {
   //
   //
   float centerX = appWidth*1/2;
   float centerY = appHeight*1/2;
   //
   rectFaceX = centerX - appHeight*1/2 ;
   rectFaceY = appHeight * 0;
   rectFaceWidth = appHeight;
   rectFaceHeight = rectFaceWidth; //rectFace is Square
   faceX = centerX;
   faceY = centerY;
   faceDiameter = appHeight;
   //
    titleX = footerX = appWidth * 1/4;
titleY = appHeight * 1/10;
footerY = appHeight * 8/10;
titleWidth = footerWidth = appWidth * 1/2;
titleHeight = footerHeight = appHeight * 1/10;
  quitButtonX = centerX - ( appWidth *1/4 );
  quitButtonY = centerY - ( appHeight *1/4 );
  quitButtonWidth = appWidth * 1/2; //could be centerX, but that is a point
  quitButtonHeight = appHeight * 1/2; //same comment as centerX, point not line
   //
} //End Population
//
// End Population Subscript
