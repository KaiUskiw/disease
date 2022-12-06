float measlesX, measlesY, measlesDiameter;
//
void measles() {
  //
  //Population Code
  fill( color( random (0, 210), random(0, 25), random(0, 100)));
  measlesX = random(rectFaceX, rectFaceX+rectFaceWidth);
  measlesY = random(appHeight);
  measlesDiameter = appHeight * 1/100; //smallerDimentionRequired
  //
  ellipse( measlesX, measlesY, measlesDiameter, measlesDiameter );
  //
  fill( color( random (0, 240), random(0, 2), random(0, 50)));
   measlesX = random(rectFaceX, rectFaceX+rectFaceWidth);
  measlesY = random(appHeight);
  measlesDiameter = appHeight * 1/95;
  //
  ellipse( measlesX, measlesY, measlesDiameter, measlesDiameter );
  // 
  fill( color( random (0, 255), random(0, 15), random(0, 125)));
  measlesX = random(rectFaceX, rectFaceX+rectFaceWidth);
  measlesY = random(appHeight);
  measlesDiameter = appHeight * 1/80;
  //
  ellipse( measlesX, measlesY, measlesDiameter, measlesDiameter );
  //
  fill( color( random (0, 250), random(0, 55), random(0, 130)));
   measlesX = random(rectFaceX, rectFaceX+rectFaceWidth);
  measlesY = random(appHeight);
  measlesDiameter = appHeight * 1/85;
  //
  ellipse( measlesX, measlesY, measlesDiameter, measlesDiameter );
  //
   measlesX = random(rectFaceX, rectFaceX+rectFaceWidth);
  measlesY = random(appHeight);
  measlesDiameter = appHeight * 1/75;
  //
  ellipse( measlesX, measlesY, measlesDiameter, measlesDiameter );
  //
   measlesX = random(rectFaceX, rectFaceX+rectFaceWidth);
  measlesY = random(appHeight);
  measlesDiameter = appHeight * 1/95;
  //
  ellipse( measlesX, measlesY, measlesDiameter, measlesDiameter );
  //
   measlesX = random(rectFaceX, rectFaceX+rectFaceWidth);
  measlesY = random(appHeight);
  measlesDiameter = appHeight * 1/55;
  //
}//End measles
//
//End Measles Subscript
