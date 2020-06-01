class Furnitures {

  float xF, yF, zF;

  public Furnitures(float xF, float yF, float zF) {

    this.xF = xF;
    this.yF = yF;
    this.zF = zF;
  }


  public void drawFurnitures() {
    noStroke();
    pushMatrix();

    translate(xF, yF);
    scale(1.5);
    
    drawRightChair();
    drawLeftChair();
    drawTable();
    drawTableFoot();
    popMatrix();
  }
  
  public void drawRightChair(){
    
    int cWidth = imgChair.width;
    int cHeight = imgChair.height;
    
    beginShape(QUADS);
    texture(imgChair);
    
    
    // -------------- Vertexs of Front Left Chair Foot --------------
    
    
    vertex(60, 75, -40, cWidth, cHeight);       // Upper Left Corner        ((Front)Front wood of the Chair Left)
    vertex(63, 75, -40, 0, cHeight);            // Upper Right Corner
    vertex(63, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(60, 100, -40, cWidth, 0);            // Lower Left Corner
    
    vertex(63, 75, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Right wood of the Chair Left)
    vertex(63, 75, -40, 0, cHeight);            // Upper Right Corner
    vertex(63, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(63, 100, -43, cWidth, 0);            // Lower Left Corner

    vertex(60, 75, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Back wood of the Chair Left)
    vertex(63, 75, -43, 0, cHeight);            // Upper Right Corner
    vertex(63, 100, -43, 0, 0);                 // Lower Right Corner
    vertex(60, 100, -43, cWidth, 0);            // Lower Left Corner
    
    vertex(60, 75, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Left wood of the Chair Left)
    vertex(60, 75, -40, 0, cHeight);            // Upper Right Corner
    vertex(60, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(60, 100, -43, cWidth, 0);            // Lower Left Corner
    
    
    
    // -------------- Vertexs of Front Right Chair Foot --------------
    
    
    vertex(85, 40, -40, cWidth, cHeight);       // Upper Left Corner        ((Front)Front wood of the Chair Right)
    vertex(88, 40, -40, 0, cHeight);            // Upper Right Corner
    vertex(88, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(85, 100, -40, cWidth, 0);            // Lower Left Corner 
    
    vertex(88, 40, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Right wood of the Chair Right)
    vertex(88, 40, -40, 0, cHeight);            // Upper Right Corner
    vertex(88, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(88, 100, -43, cWidth, 0);            // Lower Left Corner
    
    vertex(85, 40, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Back wood of the Chair Right)
    vertex(88, 40, -43, 0, cHeight);            // Upper Right Corner
    vertex(88, 100, -43, 0, 0);                 // Lower Right Corner
    vertex(85, 100, -43, cWidth, 0);            // Lower Left Corner
    
    vertex(85, 40, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Left wood of the Chair Right)
    vertex(85, 40, -40, 0, cHeight);            // Upper Right Corner
    vertex(85, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(85, 100, -43, cWidth, 0);            // Lower Left Corner
    
    vertex(85, 40, -40, cWidth, cHeight);       // Upper Left Corner        ((Front)Top wood of the Chair Right)
    vertex(88, 40, -40, 0, cHeight);            // Upper Right Corner
    vertex(88, 40, -43, 0, 0);                  // Lower Right Corner
    vertex(85, 40, -43, cWidth, 0);             // Lower Left Corner
    
    
    // -------------- Vertexs of Back Left Chair Foot --------------
    
    
    
    vertex(60, 75, -60, cWidth, cHeight);       // Upper Left Corner        ((Back)Front wood of the Chair Left)
    vertex(63, 75, -60, 0, cHeight);            // Upper Right Corner
    vertex(63, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(60, 100, -60, cWidth, 0);            // Lower Left Corner
    
    vertex(63, 75, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Right wood of the Chair Left)
    vertex(63, 75, -60, 0, cHeight);            // Upper Right Corner
    vertex(63, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(63, 100, -63, cWidth, 0);            // Lower Left Corner
    
    vertex(60, 75, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Back wood of the Chair Left)
    vertex(63, 75, -63, 0, cHeight);            // Upper Right Corner
    vertex(63, 100, -63, 0, 0);                 // Lower Right Corner
    vertex(60, 100, -63, cWidth, 0);            // Lower Left Corner
    
    vertex(60, 75, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Left wood of the Chair Left)
    vertex(60, 75, -60, 0, cHeight);            // Upper Right Corner
    vertex(60, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(60, 100, -63, cWidth, 0);            // Lower Left Corner
    
    
    
     // -------------- Vertexs of Back Right Chair Foot --------------
 
    
    vertex(85, 40, -60, cWidth, cHeight);       // Upper Left Corner        ((Back)Front wood of the Chair Right)
    vertex(88, 40, -60, 0, cHeight);            // Upper Right Corner
    vertex(88, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(85, 100, -60, cWidth, 0);            // Lower Left Corner
    
    vertex(88, 40, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Right wood of the Chair Right)
    vertex(88, 40, -60, 0, cHeight);            // Upper Right Corner
    vertex(88, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(88, 100, -63, cWidth, 0);            // Lower Left Corner
    
    vertex(85, 40, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Back wood of the Chair Right)
    vertex(88, 40, -63, 0, cHeight);            // Upper Right Corner
    vertex(88, 100, -63, 0, 0);                 // Lower Right Corner
    vertex(85, 100, -63, cWidth, 0);            // Lower Left Corner
    
    vertex(85, 40, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Left wood of the Chair Right)
    vertex(85, 40, -60, 0, cHeight);            // Upper Right Corner
    vertex(85, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(85, 100, -63, cWidth, 0);            // Lower Left Corner
    
    vertex(85, 40, -60, cWidth, cHeight);       // Upper Left Corner        ((Back)Top wood of the Chair Right)
    vertex(88, 40, -60, 0, cHeight);            // Upper Right Corner
    vertex(88, 40, -63, 0, 0);                  // Lower Right Corner
    vertex(85, 40, -63, cWidth, 0);             // Lower Left Corner
    
    
    
    // -------------- Vertexs of Bottom  of Chair Seat --------------
    
    
    
    vertex(88, 75, -63, 0, 0);                  // Upper Right Corner       (Bottom of the Seat)
    vertex(60, 75, -63, cWidth, 0);             // Upper Left Corner
    vertex(60, 75, -40, cWidth, cHeight);       // Lower Left Corner
    vertex(88, 75, -40, 0, cHeight);            // Lower Right Corner
    
    vertex(88, 73, -63, 0, 0);                  // Upper Right Corner       (Top of the Seat)
    vertex(60, 73, -63, cWidth, 0);             // Upper Left Corner
    vertex(60, 73, -40, cWidth, cHeight);       // Lower Left Corner
    vertex(88, 73, -40, 0, cHeight);            // Lower Right Corner
    
    vertex(60, 73, -40, cWidth, cHeight);       // Upper Left Corner        (Front wood of the Seat)
    vertex(88, 73, -40, 0, cHeight);            // Upper Right Corner
    vertex(88, 75, -40, 0, 0);                  // Lower Right Corner
    vertex(60, 75, -40, cWidth, 0);             // Lower Left Corner
    
    vertex(88, 73, -63, cWidth, cHeight);       // Upper Left Corner        (Right wood of the Seat)
    vertex(88, 73, -40, 0, cHeight);            // Upper Right Corner
    vertex(88, 75, -40, 0, 0);                  // Lower Right Corner
    vertex(88, 75, -63, cWidth, 0);             // Lower Left Corner
    
    vertex(60, 73, -63, cWidth, cHeight);       // Upper Left Corner        (Back wood of the Seat)
    vertex(88, 73, -63, 0, cHeight);            // Upper Right Corner
    vertex(88, 75, -63, 0, 0);                  // Lower Right Corner
    vertex(60, 75, -63, cWidth, 0);             // Lower Left Corner
    
    vertex(60, 73, -63, cWidth, cHeight);       // Upper Left Corner        (Left wood of the Seat)
    vertex(60, 73, -40, 0, cHeight);            // Upper Right Corner
    vertex(60, 75, -40, 0, 0);                  // Lower Right Corner
    vertex(60, 75, -63, cWidth, 0);             // Lower Left Corner
    
    
    // -------------- Vertexs of Support of Chair Seat --------------
    
    
    vertex(88, 44, -63, cWidth, cHeight);       // Upper Left Corner        (Right wood of the First Support)
    vertex(88, 44, -40, 0, cHeight);            // Upper Right Corner
    vertex(88, 65, -40, 0, 0);                  // Lower Right Corner
    vertex(88, 65, -63, cWidth, 0);             // Lower Left Corner
    
    
    vertex(83, 44, -60, cWidth, cHeight);       // Upper Left Corner        (Left wood of the First Support)
    vertex(83, 44, -43, 0, cHeight);            // Upper Right Corner
    vertex(83, 65, -43, 0, 0);                  // Lower Right Corner
    vertex(83, 65, -60, cWidth, 0);             // Lower Left Corner
    
    vertex(83, 44, -43, cWidth, cHeight);       // Upper Left Corner        (Front wood of the Support)
    vertex(88, 44, -43, 0, cHeight);            // Upper Right Corner
    vertex(88, 65, -43, 0, 0);                  // Lower Right Corner
    vertex(83, 65, -43, cWidth, 0);             // Lower Left Corner 
    
    vertex(83, 44, -60, cWidth, cHeight);       // Upper Left Corner        (Back wood of the Support)
    vertex(88, 44, -60, 0, cHeight);            // Upper Right Corner
    vertex(88, 65, -60, 0, 0);                  // Lower Right Corner
    vertex(83, 65, -60, cWidth, 0);             // Lower Left Corner 
    
    
    vertex(83, 44, -43, cWidth, cHeight);       // Upper Left Corner        (Top wood of the Support)
    vertex(88, 44, -43, 0, cHeight);            // Upper Right Corner
    vertex(88, 44, -60, 0, 0);                  // Lower Right Corner
    vertex(83, 44, -60, cWidth, 0);             // Lower Left Corner 
    
    
    vertex(83, 65, -43, cWidth, cHeight);       // Upper Left Corner        (Bottom wood of the Support)
    vertex(88, 65, -43, 0, cHeight);            // Upper Right Corner
    vertex(88, 65, -60, 0, 0);                  // Lower Right Corner
    vertex(83, 65, -60, cWidth, 0);             // Lower Left Corner 
 
    
    endShape();
  }
  
  //------------------ DRAW LEFT CHAIR --------------------------------
  
  
  public void drawLeftChair(){
      
    int cWidth = imgChair.width;
    int cHeight = imgChair.height;
    
    beginShape(QUADS);
    texture(imgChair);
    
    
    // -------------- Vertexs of Front Left Chair Foot --------------
    
    
    vertex(-60, 75, -40, cWidth, cHeight);       // Upper Left Corner        ((Front)Front wood of the Chair Left)
    vertex(-63, 75, -40, 0, cHeight);            // Upper Right Corner
    vertex(-63, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(-60, 100, -40, cWidth, 0);            // Lower Left Corner
    
    vertex(-63, 75, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Right wood of the Chair Left)
    vertex(-63, 75, -40, 0, cHeight);            // Upper Right Corner
    vertex(-63, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(-63, 100, -43, cWidth, 0);            // Lower Left Corner

    vertex(-60, 75, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Back wood of the Chair Left)
    vertex(-63, 75, -43, 0, cHeight);            // Upper Right Corner
    vertex(-63, 100, -43, 0, 0);                 // Lower Right Corner
    vertex(-60, 100, -43, cWidth, 0);            // Lower Left Corner
    
    vertex(-60, 75, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Left wood of the Chair Left)
    vertex(-60, 75, -40, 0, cHeight);            // Upper Right Corner
    vertex(-60, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(-60, 100, -43, cWidth, 0);            // Lower Left Corner
    
    
    
    // -------------- Vertexs of Front Right Chair Foot --------------
    
    
    vertex(-85, 40, -40, cWidth, cHeight);       // Upper Left Corner        ((Front)Front wood of the Chair Right)
    vertex(-88, 40, -40, 0, cHeight);            // Upper Right Corner
    vertex(-88, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(-85, 100, -40, cWidth, 0);            // Lower Left Corner 
    
    vertex(-88, 40, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Right wood of the Chair Right)
    vertex(-88, 40, -40, 0, cHeight);            // Upper Right Corner
    vertex(-88, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(-88, 100, -43, cWidth, 0);            // Lower Left Corner
    
    vertex(-85, 40, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Back wood of the Chair Right)
    vertex(-88, 40, -43, 0, cHeight);            // Upper Right Corner
    vertex(-88, 100, -43, 0, 0);                 // Lower Right Corner
    vertex(-85, 100, -43, cWidth, 0);            // Lower Left Corner
    
    vertex(-85, 40, -43, cWidth, cHeight);       // Upper Left Corner        ((Front)Left wood of the Chair Right)
    vertex(-85, 40, -40, 0, cHeight);            // Upper Right Corner
    vertex(-85, 100, -40, 0, 0);                 // Lower Right Corner
    vertex(-85, 100, -43, cWidth, 0);            // Lower Left Corner
    
    vertex(-85, 40, -40, cWidth, cHeight);       // Upper Left Corner        ((Front)Top wood of the Chair Right)
    vertex(-88, 40, -40, 0, cHeight);            // Upper Right Corner
    vertex(-88, 40, -43, 0, 0);                  // Lower Right Corner
    vertex(-85, 40, -43, cWidth, 0);             // Lower Left Corner
    
    
    // -------------- Vertexs of Back Left Chair Foot --------------
    
    
    
    vertex(-60, 75, -60, cWidth, cHeight);       // Upper Left Corner        ((Back)Front wood of the Chair Left)
    vertex(-63, 75, -60, 0, cHeight);            // Upper Right Corner
    vertex(-63, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(-60, 100, -60, cWidth, 0);            // Lower Left Corner
    
    vertex(-63, 75, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Right wood of the Chair Left)
    vertex(-63, 75, -60, 0, cHeight);            // Upper Right Corner
    vertex(-63, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(-63, 100, -63, cWidth, 0);            // Lower Left Corner
    
    vertex(-60, 75, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Back wood of the Chair Left)
    vertex(-63, 75, -63, 0, cHeight);            // Upper Right Corner
    vertex(-63, 100, -63, 0, 0);                 // Lower Right Corner
    vertex(-60, 100, -63, cWidth, 0);            // Lower Left Corner
    
    vertex(-60, 75, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Left wood of the Chair Left)
    vertex(-60, 75, -60, 0, cHeight);            // Upper Right Corner
    vertex(-60, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(-60, 100, -63, cWidth, 0);            // Lower Left Corner
    
    
    
     // -------------- Vertexs of Back Right Chair Foot --------------
 
    
    vertex(-85, 40, -60, cWidth, cHeight);       // Upper Left Corner        ((Back)Front wood of the Chair Right)
    vertex(-88, 40, -60, 0, cHeight);            // Upper Right Corner
    vertex(-88, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(-85, 100, -60, cWidth, 0);            // Lower Left Corner
    
    vertex(-88, 40, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Right wood of the Chair Right)
    vertex(-88, 40, -60, 0, cHeight);            // Upper Right Corner
    vertex(-88, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(-88, 100, -63, cWidth, 0);            // Lower Left Corner
    
    vertex(-85, 40, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Back wood of the Chair Right)
    vertex(-88, 40, -63, 0, cHeight);            // Upper Right Corner
    vertex(-88, 100, -63, 0, 0);                 // Lower Right Corner
    vertex(-85, 100, -63, cWidth, 0);            // Lower Left Corner
    
    vertex(-85, 40, -63, cWidth, cHeight);       // Upper Left Corner        ((Back)Left wood of the Chair Right)
    vertex(-85, 40, -60, 0, cHeight);            // Upper Right Corner
    vertex(-85, 100, -60, 0, 0);                 // Lower Right Corner
    vertex(-85, 100, -63, cWidth, 0);            // Lower Left Corner
    
    vertex(-85, 40, -60, cWidth, cHeight);       // Upper Left Corner        ((Back)Top wood of the Chair Right)
    vertex(-88, 40, -60, 0, cHeight);            // Upper Right Corner
    vertex(-88, 40, -63, 0, 0);                  // Lower Right Corner
    vertex(-85, 40, -63, cWidth, 0);             // Lower Left Corner
    
    
    
    // -------------- Vertexs of Bottom  of Chair Seat --------------
    
    
    
    vertex(-88, 75, -63, 0, 0);                  // Upper Right Corner       (Bottom of the Seat)
    vertex(-60, 75, -63, cWidth, 0);             // Upper Left Corner
    vertex(-60, 75, -40, cWidth, cHeight);       // Lower Left Corner
    vertex(-88, 75, -40, 0, cHeight);            // Lower Right Corner
    
    vertex(-88, 73, -63, 0, 0);                  // Upper Right Corner       (Top of the Seat)
    vertex(-60, 73, -63, cWidth, 0);             // Upper Left Corner
    vertex(-60, 73, -40, cWidth, cHeight);       // Lower Left Corner
    vertex(-88, 73, -40, 0, cHeight);            // Lower Right Corner
    
    vertex(-60, 73, -40, cWidth, cHeight);       // Upper Left Corner        (Front wood of the Seat)
    vertex(-88, 73, -40, 0, cHeight);            // Upper Right Corner
    vertex(-88, 75, -40, 0, 0);                  // Lower Right Corner
    vertex(-60, 75, -40, cWidth, 0);             // Lower Left Corner
    
    vertex(-88, 73, -63, cWidth, cHeight);       // Upper Left Corner        (Right wood of the Seat)
    vertex(-88, 73, -40, 0, cHeight);            // Upper Right Corner
    vertex(-88, 75, -40, 0, 0);                  // Lower Right Corner
    vertex(-88, 75, -63, cWidth, 0);             // Lower Left Corner
    
    vertex(-60, 73, -63, cWidth, cHeight);       // Upper Left Corner        (Back wood of the Seat)
    vertex(-88, 73, -63, 0, cHeight);            // Upper Right Corner
    vertex(-88, 75, -63, 0, 0);                  // Lower Right Corner
    vertex(-60, 75, -63, cWidth, 0);             // Lower Left Corner
    
    vertex(-60, 73, -63, cWidth, cHeight);       // Upper Left Corner        (Left wood of the Seat)
    vertex(-60, 73, -40, 0, cHeight);            // Upper Right Corner
    vertex(-60, 75, -40, 0, 0);                  // Lower Right Corner
    vertex(-60, 75, -63, cWidth, 0);             // Lower Left Corner
    
    
    // -------------- Vertexs of Support of Chair Seat --------------
    
    
    vertex(-88, 44, -63, cWidth, cHeight);       // Upper Left Corner        (Right wood of the First Support)
    vertex(-88, 44, -40, 0, cHeight);            // Upper Right Corner
    vertex(-88, 65, -40, 0, 0);                  // Lower Right Corner
    vertex(-88, 65, -63, cWidth, 0);             // Lower Left Corner
    
    
    vertex(-83, 44, -60, cWidth, cHeight);       // Upper Left Corner        (Left wood of the First Support)
    vertex(-83, 44, -43, 0, cHeight);            // Upper Right Corner
    vertex(-83, 65, -43, 0, 0);                  // Lower Right Corner
    vertex(-83, 65, -60, cWidth, 0);             // Lower Left Corner
    
    vertex(-83, 44, -43, cWidth, cHeight);       // Upper Left Corner        (Front wood of the Support)
    vertex(-88, 44, -43, 0, cHeight);            // Upper Right Corner
    vertex(-88, 65, -43, 0, 0);                  // Lower Right Corner
    vertex(-83, 65, -43, cWidth, 0);             // Lower Left Corner 
    
    vertex(-83, 44, -60, cWidth, cHeight);       // Upper Left Corner        (Back wood of the Support)
    vertex(-88, 44, -60, 0, cHeight);            // Upper Right Corner
    vertex(-88, 65, -60, 0, 0);                  // Lower Right Corner
    vertex(-83, 65, -60, cWidth, 0);             // Lower Left Corner 
    
    
    vertex(-83, 44, -43, cWidth, cHeight);       // Upper Left Corner        (Top wood of the Support)
    vertex(-88, 44, -43, 0, cHeight);            // Upper Right Corner
    vertex(-88, 44, -60, 0, 0);                  // Lower Right Corner
    vertex(-83, 44, -60, cWidth, 0);             // Lower Left Corner 
    
    
    vertex(-83, 65, -43, cWidth, cHeight);       // Upper Left Corner        (Bottom wood of the Support)
    vertex(-88, 65, -43, 0, cHeight);            // Upper Right Corner
    vertex(-88, 65, -60, 0, 0);                  // Lower Right Corner
    vertex(-83, 65, -60, cWidth, 0);             // Lower Left Corner 
 
    
    endShape();
  }
  
   public void drawTable(){
    
    int tWidth = imgChair.width;
    int tHeight = imgChair.height;
    
    // ------------------- Vertexs of the Table -------------------------------------
    
    beginShape(QUADS);
    texture(imgChair);
    
    vertex(50, 84, -80, 0, 0);                   // Upper Right Corner       (Top of the Table)
    vertex(-48, 84, -80, tWidth, 0);             // Upper Left Corner
    vertex(-48, 84, -23, tWidth, tHeight);       // Lower Left Corner       
    vertex(50, 84, -23, 0, tHeight);             // Lower Right Corner
    
    vertex(50, 88, -80, 0, 0);                   // Upper Right Corner       (Bottom of the Table)
    vertex(-48, 88, -80, tWidth, 0);             // Upper Left Corner
    vertex(-48, 88, -23, tWidth, tHeight);       // Lower Left Corner       
    vertex(50, 88, -23, 0, tHeight);             // Lower Right Corner
    
    vertex(50, 84, -23, tWidth, tHeight);        // Upper Left Corner        (Front wood of the Table)
    vertex(-48, 84, -23, 0, tHeight);            // Upper Right Corner 
    vertex(-48, 88, -23, 0, 0);                  // Lower Right Corner
    vertex(50, 88, -23, tWidth, 0);              // Lower Left Corner
    
    vertex(50, 84, -80, tWidth, tHeight);        // Upper Left Corner        (Back wood of the Table)
    vertex(-48, 84, -80, 0, tHeight);            // Upper Right Corner
    vertex(-48, 88, -80, 0, 0);                  // Lower Right Corner
    vertex(50, 88, -80, tWidth, 0);              // Lower Left Corner
    
    vertex(50, 84, -23, tWidth, tHeight);        // Upper Left Corner        (Right wood of the House)
    vertex(50, 84, -80, 0, tHeight);             // Upper Right Corner
    vertex(50, 88, -80, 0, 0);                   // Lower Right Corner
    vertex(50, 88, -23, tWidth, 0);              // Lower Left Corner
    
    vertex(-48, 84, -23, tWidth, tHeight);       // Upper Left Corner        (Left wood of the House)
    vertex(-48, 84, -80, 0, tHeight);            // Upper Right Corner
    vertex(-48, 88, -80, 0, 0);                  // Lower Right Corner
    vertex(-48, 88, -23, tWidth, 0);             // Lower Left Corner
    
    endShape();
    
    // ------------------- Vertecs of the Table's Foot -------------------------------------
  
  }
  
  public void drawTableFoot(){
    
    
    int tableFootWidth = imgWall.width;
    int tableFootHeight = imgWall.height;  

    beginShape(QUADS);
    texture(imgWall);
    vertex(-30, 88, -35, tableFootWidth, tableFootHeight);         // Upper Left Corner        (Front wood of the Foot)
    vertex(30, 88, -35, 0, tableFootHeight);                       // Upper Right Corner
    vertex(30, 100, -35, 0, 0);                                    // Lower Right Corner
    vertex(-30, 100, -35, tableFootWidth, 0);                      // Lower Left Corner
    
    vertex(-30, 88, -68, tableFootWidth, tableFootHeight);         // Upper Left Corner        (Back wood of the Foot)
    vertex(30, 88, -68, 0, tableFootHeight);                       // Upper Right Corner
    vertex(30, 100, -68, 0, 0);                                    // Lower Right Corner
    vertex(-30, 100, -68, tableFootWidth, 0);                      // Lower Left Corner
    
    vertex(30, 88, -35, tableFootWidth, tableFootHeight);          // Upper Left Corner        (Right wall of the House)
    vertex(30, 88, -68, 0, tableFootHeight);                       // Upper Right Corner
    vertex(30, 100, -68, 0, 0);                                    // Lower Right Corner
    vertex(30, 100, -35, tableFootWidth, 0);                       // Lower Left Corner
    
    vertex(-30, 88, -35, tableFootWidth, tableFootHeight);          // Upper Left Corner        (Left wall of the House)
    vertex(-30, 88, -68, 0, tableFootHeight);                       // Upper Right Corner
    vertex(-30, 100, -68, 0, 0);                                    // Lower Right Corner
    vertex(-30, 100, -35, tableFootWidth, 0);                       // Lower Left Corner

    endShape();
  }
}
