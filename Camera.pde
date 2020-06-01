class Camera {

  Ninja ninja;
  float camX, camY, camZ;
  float lookX, lookY, lookZ;
  float ninjaX = 0;
  float ninjaY = -50;

  public Camera() {
    camX = 0;
    camY = 0;
    camZ = (height/2)/tan(PI/6) - width/(5.5);  

    lookX = 0;
    lookY = 0;
    lookZ = 0;

    ninja = new Ninja(ninjaX, ninjaY, 0);
  }

  public void firstPersonCamera() {

    camera(camX, camY, camZ, //default camera position without 360 degree
      lookX, lookY, lookZ, //where it is looking to
      0, 1, 0); //eye openness

    if (keyPressed)
    {
      if (key == 'w') {                             // The user goes front
        camZ -= 5;
        println("-camZ: " + camZ);
        if (camZ == 371.21655) {
          camZ = 376.21655;
          ninja.drawNinja();                        // Outside of the ninja picture
        }
      } else if (key == 's') {                      // The user goes back
        camZ += 5;
        println("+camZ: " + camZ);
        if (camZ == 616.21655) {
          camZ = 611.21655;
        }
      } else if (key == 'e') {                     // User goes into house
        camZ -= 5;
        println("e camZ:" + camZ);
        if (camZ == 141.21655) {
          camZ = 146.21655;
          ninja.drawNinjaOutside();      // Inside of the ninja picture
        }
      }
    }
  }
}
