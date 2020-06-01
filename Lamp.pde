class Lamp
{
  float xL, yL, zL, sizeLamp;
  PShape shapeLamp;
  
  public Lamp(float xL, float yL, float zL)
  {
    this.xL = xL;
    this.yL = yL;
    this.zL = zL;
    
    sizeLamp = 20;
    noStroke();
    shapeLamp = createShape(SPHERE, sizeLamp);  // creating Lamp Shape
    shapeLamp.setTexture(imgLamp); // Give the Texture to the shape
    
  }
  
  public void drawLamp(){
    noStroke();
    pushMatrix();
    translate(xL, yL, zL);
    shape(shapeLamp);
    popMatrix();
  }
  
}
