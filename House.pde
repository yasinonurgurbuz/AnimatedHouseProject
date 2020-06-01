class House
{
  float xH, yH, zH;


  public House(float xH, float yH, float zH)
  {
    this.xH = xH;
    this.yH = yH;
    this.zH = zH;
    
  }

  public void drawHouse()
  { 
    noStroke();
    pushMatrix();
    translate(xH, yH);

    scale(1.5);
    
    drawWalls();
    drawRoof();
    drawDoor();
    drawWindows();
    drawPaintings();
    drawFirePlace();
    
    drawShimney();

    popMatrix();
  }
  

  //----------------------- HOUSE WALLS ------------------------

  public void drawWalls()
  {
    int tWidth = imgWall.width;
    int tHeight = imgWall.height;  

    beginShape(QUADS);
    texture(imgWall);
    
    

    vertex(-100, -100, 100, tWidth, tHeight);    // Upper Left Corner        (Front wall of the House)
    vertex(100, -100, 100, 0, tHeight);          // Upper Right Corner
    vertex(100, 100, 100, 0, 0);                 // Lower Right Corner
    vertex(-100, 100, 100, tWidth, 0);           // Lower Left Corner

    vertex(-100, -100, -100, tWidth, tHeight);    // Upper Left Corner       (Back wall of the House)
    vertex(100, -100, -100, 0, tHeight);          // Upper Right Corner
    vertex(100, 100, -100, 0, 0);                 // Lower Right Corner
    vertex(-100, 100, -100, tWidth, 0);           // Lower Left Corner

    vertex(100, -100, 100, tWidth, tHeight);      // Upper Left Corner       (Right wall of the House)
    vertex(100, -100, -100, 0, tHeight);          // Upper Right Corner
    vertex(100, 100, -100, 0, 0);                 // Lower Right Corner
    vertex(100, 100, 100, tWidth, 0);             // Lower Left Corner

    vertex(-100, -100, 100, tWidth, tHeight);     // Upper Left Corner       (Left wall of the House)
    vertex(-100, -100, -100, 0, tHeight);         // Upper Right Corner  
    vertex(-100, 100, -100, 0, 0);                // Lower Right Corner
    vertex(-100, 100, 100, tWidth, 0);            // Lower Left Corner

    vertex(-100, -100, 100, tWidth, tHeight);     // Upper Left Corner       (Top of the House)
    vertex(100, -100, 100, 0, tHeight);           // Upper Right Corner
    vertex(100, -100, -100, 0, 0);                // Lower Right Corner
    vertex(-100, -100, -100, tWidth, 0);          // Lower Left Corner

    endShape();

    beginShape(QUADS);
    texture(imgFloor);

    vertex(-100, 100, 100, tWidth, tHeight);      // Upper Left Corner        (Bottom of the House)
    vertex(100, 100, 100, 0, tHeight);            // Upper Right Corner
    vertex(100, 100, -100, 0, 0);                 // Lower Right Corner
    vertex(-100, 100, -100, tWidth, 0);           // Lower Left Corner

    endShape();
  }




  //-------------------- THE ROOF OF HOUSE ----------------------------

  public void drawRoof() {
    int w = imgRoof.width;
    int h = imgRoof.height;

    beginShape(TRIANGLE);
    texture(imgRoof);

    vertex(-150, -100, 150, 0, h);       // Top of Rectangle Corner         (Front Face of Roof)
    vertex(150, -100, 150, w, h);        // Lower Right Corner
    vertex(0, -200, 150, w/2, 0);        // Lower Left Corner
    //-Z
    vertex(-150, -100, -150, 0, h);      // Top of Rectangle Corner         (Back Face of the Roof)
    vertex(150, -100, -150, w, h);       // Lower Right Corner
    vertex(0, -200, -150, w/2, 0);       // Lower Right Corner
    endShape();

    beginShape(QUADS);
    texture(imgRoof);

    vertex(0, -200, 150, 0, 0);          // Upper Left Corner               (Right side of Roof)
    vertex(0, -200, -150, w, 0);         // Upper Right Corner
    vertex(150, -100, -150, w, h);       // Lower Right Corner
    vertex(150, -100, 150, 0, h);        // Lower Left Corner
    
    vertex(0, -200, 150, 0, 0);          // Upper Left Corner               (Left side of the Roof)
    vertex(0, -200, -150, w, 0);         // Upper Right Corner
    vertex(-150, -100, -150, w, h);      // Lower Right Corner
    vertex(-150, -100, 150, 0, h);       // Lower Left Corner

    vertex(150, -100.01, 150, 0, 0);     // Upper Left Corner               (Bottom side of the Roof)
    vertex(-150, -100.01, 150, w, 0);    // Upper Right Corner
    vertex(-150, -100.01, -150, w, h);   // Lower Right Corner
    vertex(150, -100.01, -150, 0, h);    // Lower Left Corner
    endShape();
  }

  //------------ THE DOOR OF HOUSE ------------

  public void drawDoor() {
    int w = imgDoor.width;
    int h = imgDoor.height;

    beginShape(QUADS);
    texture(imgDoor);

    vertex(-50, -70, 100.01, 0, 0);      // Upper Left Corner               (Front size of the Door)
    vertex(50, -70, 100.01, w, 0);       // Upper Right Corner
    vertex(50, 100, 100.01, w, h);       // Bottom Right Corner
    vertex(-50, 100, 100.01, 0, h);      // Bottom Left Corner

    vertex(-50, -70, 99.99, 0, 0);       // Upper Left Corner               (Back size of the Door)
    vertex(50, -70, 99.99, w, 0);        // Upper Right Corner
    vertex(50, 100, 99.99, w, h);        // Bottom Right Corner
    vertex(-50, 100, 99.99, 0, h);       // Bottom Left Corner
    endShape();
  }

  //------------ THE HOUSE OF WINDOWS ------------

  public void drawWindows() {
    int w = imgWindow.width;
    int h = imgWindow.height;

    beginShape(QUADS);
    texture(imgWindow);

    vertex(100.01, -70, 80.01, 0, 0);     // Upper Left Corner              (Right Side Front First Window)         
    vertex(100.01, -70, 10, w, 0);        // Upper Right Corner
    vertex(100.01, 15, 10, w, h);         // Bottom Right Corner
    vertex(100.01, 15, 80.01, 0, h);      // Bottom Left Corner

    vertex(99.99, -70, 80.01, 0, 0);      // Upper Left Corner              (Right Side Back First Window)
    vertex(99.99, -70, 10, w, 0);         // Upper Right Corner
    vertex(99.99, 15, 10, w, h);          // Bottom Right Corner
    vertex(99.99, 15, 80.01, 0, h);       // Bottom Left Corner

    vertex(-99.99, -70, 80.01, 0, 0);     // Upper Left Corner              (Left Side Back First Window)
    vertex(-99.99, -70, 10, w, 0);        // Upper Right Corner
    vertex(-99.99, 15, 10, w, h);         // Bottom Right Corner
    vertex(-99.99, 15, 80.01, 0, h);      // Bottom Left Corner

    vertex(-100.01, -70, 80.01, 0, 0);    // Upper Left Corner              (Left Side Front First Window)
    vertex(-100.01, -70, 10, w, 0);       // Upper Right Corner
    vertex(-100.01, 15, 10, w, h);        // Bottom Right Corner
    vertex(-100.01, 15, 80.01, 0, h);     // Bottom Left Corner

    vertex(100.01, -70, -10, 0, 0);       // Upper Left Corner              (Right Side Front Second Window)
    vertex(100.01, -70, -80, w, 0);       // Upper Right Corner
    vertex(100.01, 15, -80, w, h);        // Bottom Right Corner
    vertex(100.01, 15, -10, 0, h);        // Bottom Left Corner

    vertex(99.99, -70, -10, 0, 0);        // Upper Left Corner              (Right Side Front Second Window)
    vertex(99.99, -70, -80, w, 0);        // Upper Right Corner
    vertex(99.99, 15, -80, w, h);         // Bottom Right Corner
    vertex(99.99, 15, -10, 0, h);         // Bottom Left Corner

    vertex(-99.99, -70, -10, 0, 0);       // Upper Left Corner              (Left Side Front Second Window)
    vertex(-99.99, -70, -80, w, 0);       // Upper Right Corner
    vertex(-99.99, 15, -80, w, h);        // Bottom Right Corner
    vertex(-99.99, 15, -10, 0, h);        // Bottom Left Corner

    vertex(-100.01, -70, -10, 0, 0);      // Upper Left Corner              (Right Side Front Second Window)
    vertex(-100.01, -70, -80, w, 0);      // Upper Right Corner
    vertex(-100.01, 15, -80, w, h);       // Bottom Right Corner
    vertex(-100.01, 15, -10, 0, h);       // Bottom Left Corner

    endShape();
  }

  //------------ THE PAINTINGS OF THE WALLS ------------

  public void drawPaintings() {

    beginShape(QUADS);  
    int wP1 = imgPainting1.width;
    int hP1 = imgPainting1.height; 
    texture(imgPainting1);
    vertex(-80, -65, -99.99, 0, 0);       // Upper Left Corner              (Left Painting)
    vertex(-10, -65, -99.99, wP1, 0);     // Upper Right Corner
    vertex(-10, 20, -99.99, wP1, hP1);    // Bottom Right Corner
    vertex(-80, 20, -99.99, 0, hP1);      // Bottom Left Corner
    endShape(QUADS);


    beginShape(QUADS);  
    int wP2 = imgPainting2.width;
    int hP2 = imgPainting2.height; 
    texture(imgPainting2);
    vertex(10, -65, -99.99, 0, 0);        // Upper Left Corner              (Right Painting)
    vertex(80, -65, -99.99, wP2, 0);      // Upper Right Corner
    vertex(80, 20, -99.99, wP2, hP2);     // Bottom Right Corner
    vertex(10, 20, -99.99, 0, hP2);       // Bottom Reft Corner
    endShape(QUADS);
  }

  public void drawFirePlace() {
    beginShape(QUADS);  
    int wF = imgFirePlace.width;
    int hF = imgFirePlace.height;  
    texture(imgFirePlace);
    vertex(-60, 30, -99.99, 0, 0);        // Upper left Corner              (Fireplace)
    vertex(60, 30, -99.99, wF, 0);        // Upper Right Corner
    vertex(60, 100, -99.99, wF, hF);      // Bottom Right Corner
    vertex(-60, 100, -99.99, 0, hF);      // Bottom Left Corner
    endShape(QUADS);
  }

  //------------ THE SHIMNEY OF THE HOUSE ------------

  public void drawShimney() {
    
    

    beginShape(QUADS);
    int wS = imgWall.width;
    int hS = imgWall.height;  
    texture(imgWall);

    vertex(40, -210, -50, wS, hS);        // Upper Left Corner              (Front Wall of Shimney)
    vertex(70, -210, -50, 0, hS);         // Upper Right Corner
    vertex(70, -110, -50, 0, 0);          // Lower Right Corner
    vertex(40, -110, -50, wS, 0);         // Lower Left Corner

    vertex(40, -210, -80, wS, hS);        // Upper Left Corner              (Back Wall of Shimney)
    vertex(70, -210, -80, 0, hS);         // Upper Right Corner
    vertex(70, -110, -80, 0, 0);          // Lower Right Corner
    vertex(40, -110, -80, wS, 0);         // Lower Left Corner

    vertex(70, -210, -80, wS, hS);        // Upper left Corner              (Right Wall of Shimney)
    vertex(70, -210, -50, 0, hS);         // Upper Right Corner
    vertex(70, -110, -50, 0, 0);          // Lower Right Corner
    vertex(70, -110, -80, wS, 0);         // Lower Left Corner

    vertex(40, -210, -80, wS, hS);         // Upper left Corner             (Left Wall of Shimney)
    vertex(40, -210, -50, 0, hS);          // Upper Right Corner
    vertex(40, -110, -50, 0, 0);           // Lower Right Corner
    vertex(40, -110, -80, wS, 0);          // Lower Left Corner

    vertex(40, -210, -50, wS, hS);         // Upper left Corner             (Top Wall of Shimney)
    vertex(70, -210, -50, 0, hS);          // Upper Right Corner
    vertex(70, -210, -80, 0, 0);           // Lower Right Corner
    vertex(40, -210, -80, wS, 0);          // Lower Left Corner

    endShape();

    //----- THE INSIDE SHIMMEY ------
    beginShape(QUADS);
    int wSi = imgShimneyInside.width;
    int hSi = imgShimneyInside.height;  
    texture(imgShimneyInside);
    vertex(46.5, -225, -55, wSi, hSi);     // Upper Left Corner             (Front Wall of Inside Shimney)
    vertex(63.5, -225, -55, 0, hSi);       // Upper Right Corner
    vertex(63.5, -110, -55, 0, 0);         // Lower Right Corner
    vertex(46.5, -110, -55, wSi, 0);       // Lower Left Corner

    vertex(46.5, -225, -72, wSi, hSi);     // Upper Left Corner             (Back Wall of Inside Shimney)
    vertex(63.5, -225, -72, 0, hSi);       // Upper Right Corner
    vertex(63.5, -110, -72, 0, 0);         // Lower Right Corner
    vertex(46.5, -110, -72, wSi, 0);       // Lower Left Corner

    vertex(63.5, -225, -72, wSi, hSi);     // Upper left Corner             (Right Wall of Inside Shimney)
    vertex(63.5, -225, -55, 0, hSi);       // Upper Right Corner
    vertex(63.5, -110, -55, 0, 0);         // Lower Right Corner
    vertex(63.5, -110, -72, wSi, 0);       // Lower Left Corner

    vertex(46.5, -225, -72, wSi, hSi);     // Upper left Corner             (Left Wall of Inside Shimney)
    vertex(46.5, -225, -55, 0, hSi);       // Upper Right Corner
    vertex(46.5, -110, -55, 0, 0);         // Lower Right Corner
    vertex(46.5, -110, -72, wSi, 0);       // Lower Left Corner

    endShape();

    beginShape(QUADS);

    int wTi = imgShimneyTop.width;
    int hTi = imgShimneyTop.height;  
    texture(imgShimneyTop);
    vertex(46.5, -225, -55, wTi, hTi);     // Upper left Corner             (Top Wall of Inside Shimney)
    vertex(63.5, -225, -55, 0, hTi);       // Upper Right Corner
    vertex(63.5, -225, -72, 0, 0);         // Lower Right Corner
    vertex(46.5, -225, -72, wTi, 0);       // Lower Left Corner

    endShape();
  }
}
