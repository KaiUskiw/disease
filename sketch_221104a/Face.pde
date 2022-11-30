float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
//
void faceSetup() {
  //Face: inscribing a circle in a square (i.e. logical rectangle)
  //Start from center of display
 fill( color( random (0, 150), random(0, 120), random(0, 150)));
  rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  //
  fill(#F7D6C3);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
} //End faceSetup
//
//End Face Subprogram
