class SmokeChimney
{
  float xSC, ySC, zSC;
  PShape smoke;
  float sizeSmoke;
  float speedSmoke;

  public SmokeChimney(float xSC, float ySC, float zSC) {   
    this.xSC = xSC;
    this.ySC = ySC;
    this.zSC = zSC;

    noStroke();
    sizeSmoke = random(1,2);                                // Taking the size of smoke shape random

    smoke = createShape(SPHERE, sizeSmoke);  
    smoke.setTexture(imgSmoke);

    speedSmoke = random(0.1,1);                             // Giving the random speed to smokes 
  }

  public void drawSmokeChimney() {
    pushMatrix();
    translate(xSC, ySC, zSC);
    drawSmokes();
    popMatrix(); 
    println(ySC);

    ySC -= speedSmoke;                                      // Smokes goes to top
    
    if (ySC <= -500) {                                      // If the smokes reach the -500, they star from beginning
      ySC = -385;
    }

  }

  public void drawSmokes() {
    beginShape(); 
    shape(smoke);  
    endShape();
  }
}
