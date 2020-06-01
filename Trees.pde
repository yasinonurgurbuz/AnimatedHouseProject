class Trees {

  float xT, yT, zT;
  float randomHeight;


  public Trees(float xT, float yT, float zT)
  {
    this.xT = xT;
    this.yT = yT;
    this.zT = zT;
    randomHeight = random(-160,-10);                   // Random heights for trees
  }

  public void drawTrees()
  { 
    noStroke();
    pushMatrix();
    translate(xT, yT, zT);
 
    drawBody();
    drawLeaves();                                     // Draw the first Leave
    translate(0, -60);
    scale(0.8);
    drawLeaves();                                     // Draw the second Leave
    translate(0, -60);
    scale(0.8);
    drawLeaves();                                     // Draw the third Leave

    popMatrix();
  }

  int detail = 60;                                    // Divide the rect into 60 small rectangles
  float angle = 360 / detail;
  
   //----------------------- BODY OF TREES ------------------------
  void drawBody()
  {
    //scale(100);
    int h = 150;
    int r = 15;
    float w = imgTreeBody.width / detail;

    beginShape(QUADS);
    texture(imgTreeBody);

    for (int i = 0; i < detail; i++)
    {
      vertex(r*cos(radians(i*angle)), 0 +randomHeight, r*sin(radians(i*angle)), w*i, 0);                      // Add heights to the body of trees
      vertex(r*cos(radians((i+1)*angle)), 0 +randomHeight, r*sin(radians((i+1)*angle)), w*(i+1), 0);
      vertex(r*cos(radians((i+1)*angle)), h , r*sin(radians((i+1)*angle)), w*(i+1), imgTreeBody.height);
      vertex(r*cos(radians(i*angle)), h, r*sin(radians(i*angle)), w*i, imgTreeBody.height);
    }


    endShape();
  }

  //----------------------- LEAVES OF TREES ------------------------
  void drawLeaves()
  {
    int h = 40, r = 40;

    beginShape(TRIANGLES);
    texture(imgTreeLeaf);
    for (int i = 0; i < detail; i++)
    {
      vertex(0, -h +randomHeight, 0 , 0, 0);                                                                   // Add heights to the body of Leaves
      vertex(r*cos(radians(i*angle)), 0 , r*sin(radians(i*angle)), imgTreeLeaf.width, imgTreeLeaf.height);
      vertex(r*cos(radians((i+1)*angle)), 0 , r*sin(radians((i+1)*angle)), 0, imgTreeLeaf.height);
    }
    endShape();
  }
}
