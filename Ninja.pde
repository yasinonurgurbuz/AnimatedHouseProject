class Ninja {
  float xN, yN, zN;

  public Ninja(float xN, float yN, float zN)
  {
    this.xN = xN;
    this.yN = yN;
    this.zN = zN;
  }
  
  public void drawNinja()     
  { 
    noStroke();
    pushMatrix();
    translate(xN, yN);
    drawNinjaPicture();
    popMatrix();
  }

  public void drawNinjaOutside()
  { 
    noStroke();
    pushMatrix();
    translate(xN, yN);
    drawNinjaOutsidePicture();
    popMatrix();
  }

  //----------------------- The outside of the Ninja Picture ------------------------
  public void drawNinjaPicture()
  {
    int iWidth = imgKey.width;
    int iHeight = imgKey.height;  

    beginShape(QUADS);
    texture(imgKey);
    vertex(-90, 10, 265, iWidth, iHeight);    // Upper Left Corner        (Front wall of the House)
    vertex(90, 10, 265, 0, iHeight);          // Upper Right Corner
    vertex(90, 90, 265, 0, 0);                 // Lower Right Corner
    vertex(-90, 90, 265, iWidth, 0);           // Lower Left Corner
    endShape();
  }
  
   //----------------------- The inside of the Ninja Picture ------------------------
  public void drawNinjaOutsidePicture()
  {
    int ikoWidth = imgKeyOutside.width;
    int ikoHeight = imgKeyOutside.height;  

    beginShape(QUADS);
    texture(imgKeyOutside);
    vertex(-70, 10, 35, ikoWidth, ikoHeight);    // Upper Left Corner        (Front wall of the House)
    vertex(70, 10, 35, 0, ikoHeight);          // Upper Right Corner
    vertex(70, 90, 35, 0, 0);                 // Lower Right Corner
    vertex(-70, 90, 35, ikoWidth, 0);           // Lower Left Corner
    endShape();
  }
  
  
  
}
