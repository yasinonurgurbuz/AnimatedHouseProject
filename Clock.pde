class Clock {

  float xC, yC, zC;
  float secondsRadius;
  float minutesRadius;
  float hoursRadius;
  float clockDiameter;
  float clockRadius;

  public Clock(float xC, float yC, float zC) {
    this.xC = xC;
    this.yC = yC;
    this.zC = zC;

    clockRadius=min(width/22, height/22)/2;          // The clock's sizes
    hoursRadius=clockRadius*0.48;
    minutesRadius=clockRadius*0.68;
    secondsRadius=clockRadius*0.78;
  
    clockDiameter=clockRadius*2.0;                   // The size of clock's background
  }

  public void drawClock() {

    pushMatrix();
    translate(xC, yC, zC);

    drawClockTools();

    popMatrix();
  }


  public void drawClockTools() {
    fill(50); 
    noStroke();                                      // Without border line
    ellipse(xC, yC, clockDiameter, clockDiameter);
    

    stroke(255);                                     // Center White dot
    strokeWeight(8);
    point(xC, yC);

    beginShape(POINTS);                              // Directly draw a point according to strokeWeright 5
    for (int i=0; i<360; i+=6)
    {
      float angle=radians(i);                        // A conversion
                                                     //Polar coordinate conversion (Polar to x,y in Cartesian)
      float x=xC+clockRadius*0.9*(cos(angle));
      float y=yC+clockRadius*0.9*(sin(angle));
      if (i%30==0)
      {
        stroke(255, 255, 0);
        strokeWeight(15);
      } else
      {
        stroke(255);
        strokeWeight(8);
      }
      vertex(x, y);
    }
    endShape();


    //angle from 3'oclock since there is 0PI , and use map functinon to convert R(int)->R(rad in polar coordinate)
    // Angles for sin() and cos() start at 3 o'clock;
    // subtract HALF_PI to make them start at the top , norm is used to normalize the lower-level time for carry-on
    //adjust the graph


    float sec_in_rad = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
    float min_in_rad = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
    float hour_in_rad = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI*2) - HALF_PI; 



    //Hand of clock with polar coordinate
    stroke(255);
    strokeWeight(2);
    line(xC, yC, xC + cos(sec_in_rad) * secondsRadius, yC + sin(sec_in_rad) * secondsRadius);  // Length of seconds  
    stroke(#33FFFF);
    strokeWeight(4);
    line(xC, yC, xC + cos(min_in_rad) * minutesRadius, yC + sin(min_in_rad) * minutesRadius);  // Length of minutes
    stroke(255, 255, 0);
    strokeWeight(6);
    line(xC, yC, xC + cos(hour_in_rad) * hoursRadius, yC + sin(hour_in_rad) * hoursRadius);    // Length of hourse
  }
}

// https://github.com/Alfons0329/Processing_Art_Works by Alfons0329 (2016)
