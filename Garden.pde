class Garden {
  float xG, yG, zG;

  

  public Garden(float xG, float yG, float zG) {
    this.xG = xG;
    this.yG = yG;
    this.zG = zG;
  }

  public void drawGarden()
  { 
    noStroke();
    pushMatrix();
    translate(xG, yG);
    scale(1.5);



    drawGrass();
    drawBigWood();
    drawWoodLeftRight(0, 0, 0);
    drawWoodBackFront(0, 0, 0);

    int distance = 40;                            // Distances between the Garden

    pushMatrix();
    for (int index = 0; index < 16; index++ ) {   // (Back & Front Fence Vertexs)
      drawWoodBackFront(distance, 0, 0);
    }
    popMatrix();

    for (int index = 0; index < 17; index++) {    // (Left & Right Fence Vertexs)
      drawWoodLeftRight(0, 0, distance);
    }
    popMatrix();
  }



  // -------------------------------- Vertexs of the GRASS of the Garden ------------------------------------

  public void drawGrass() {
    int tWidth = imgGrass.width;
    int tHeight = imgGrass.height; 

    beginShape(QUADS);
    texture(imgGrass);

    vertex(-350, 100.1, 350, tWidth, tHeight);    // Upper left to Corner      (Vertex coordinate for Grass)
    vertex(350, 100.1, 350, 0, tHeight);          // Upper right to Corner
    vertex(350, 100.1, -350, 0, 0);               // Bottom right to Corner
    vertex(-350, 100.1, -350, tWidth, 0);         // Bottom left to Corner
    endShape();
  }

  // -------------------------------- Vertexs of the LEFT & RIGHT of the Fence -------------------------------

  public void drawWoodLeftRight(int xLR, int yLR, int zLR) {  

    int tWidth = imgWood.width;
    int tHeight = imgWood.height;

    translate(xLR, yLR, zLR);

    beginShape(QUADS);
    texture(imgWood);

    vertex(-350, 40, -330, tWidth, tHeight);         // Upper left to Corner       (Left fence of the home)
    vertex(-350, 40, -350, 0, tHeight);              // Upper right to Corner
    vertex(-350, 100.1, -350, 0, 0);                 // Bottom right to Corner    
    vertex(-350, 100.1, -330, tWidth, 0);            // Bottom left to Corner

    vertex(350, 40, -330, tWidth, tHeight);          // Upper left to Corner       (Fence right of the home)
    vertex(350, 40, -350, 0, tHeight);               // Upper right to Corner
    vertex(350, 100.1, -350, 0, 0);                  // Bottom right to Corner    
    vertex(350, 100.1, -330, tWidth, 0);             // Bottom left to Corner 

    endShape();
  }


  // ---------------------------------- Vertexs of the BACK & FRONT of the Fence ------------------------------

  public void drawWoodBackFront(int xBF, int yBF, int zBF) { 
    int tWidth = imgWood.width;
    int tHeight = imgWood.height;

    translate(xBF, yBF, zBF);

    beginShape(QUADS);
    texture(imgWood);

    vertex(-330, 40, -350, tWidth, tHeight);         // Upper left to Corner       (Back fence of the home)
    vertex(-310, 40, -350, 0, tHeight);              // Upper right to Corner
    vertex(-310, 100.1, -350, 0, 0);                 // Bottom right to Corner    
    vertex(-330, 100.1, -350, tWidth, 0);            // Bottom left to Corner 

    vertex(-330, 40, 350, tWidth, tHeight);          // Upper left to Corner       (Front fence of the home)
    vertex(-310, 40, 350, 0, tHeight);               // Upper right to Corner
    vertex(-310, 100.1, 350, 0, 0);                  // Bottom right to Corner    
    vertex(-330, 100.1, 350, tWidth, 0);             // Bottom left to Corner 

    endShape();
  }


  // ----------------------------------- Vertexs of the STRIP of the Fence ---------------------------------------

  public void drawBigWood() {     

    int bwWidth = imgStrip.width;
    int bwHeight = imgStrip.height;

    beginShape(QUADS);
    texture(imgStrip);

    vertex(-350, 60, 349.9, bwWidth, bwHeight);      // Upper left to Corner       (Front strip of the fence)
    vertex(350, 60, 349.9, 0, bwHeight);             // Upper right to Corner
    vertex(350, 50, 349.9, 0, 0);                    // Bottom right to Corner    
    vertex(-350, 50, 349.9, bwWidth, 0);             // Bottom left to Corner

    vertex(-350, 60, -349.9, bwWidth, bwHeight);     // Upper left to Corner       (Back strip of the fence)
    vertex(350, 60, -349.9, 0, bwHeight);            // Upper right to Corner
    vertex(350, 50, -349.9, 0, 0);                   // Bottom right to Corner    
    vertex(-350, 50, -349.9, bwWidth, 0);            // Bottom left to Corner

    vertex(349.9, 60, -350, bwWidth, bwHeight);      // Upper left to Corner       (Right strip of the fence)
    vertex(349.9, 60, 350, 0, bwHeight);             // Upper right to Corner
    vertex(349.9, 50, 350, 0, 0);                    // Bottom right to Corner    
    vertex(349.9, 50, -350, bwWidth, 0);             // Bottom left to Corner

    vertex(-349.9, 60, -350, bwWidth, bwHeight);     // Upper left to Corner       (Left strip of the fence)
    vertex(-349.9, 60, 350, 0, bwHeight);            // Upper right to Corner
    vertex(-349.9, 50, 350, 0, 0);                   // Bottom right to Corner    
    vertex(-349.9, 50, -350, bwWidth, 0);            // Bottom left to Corner

    endShape();
  }
}
