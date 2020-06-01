PImage imgWall, imgWood, imgStrip, imgRoof, imgDoor, imgWindow, imgPainting1, imgPainting2, 
  imgFirePlace, imgShimneyInside, imgShimneyTop, imgGrass, imgFloor, imgChair, imgKey, 
  imgKeyOutside, imgBackground, imgTurtleCurt, imgTurtleFoot, imgSlug, imgSlugSkin, 
  imgClock, imgTreeBody, imgTreeLeaf, imgSmoke, imgLamp;

ArrayList<Trees> trees = new ArrayList();                        // Creating arrayList for Trees
ArrayList<SmokeChimney> smokeChimney = new ArrayList();          // Creating arrayList for SmokeChimney

Animals animals;
Camera camera;
Clock clock;
Furnitures furnitures;
Garden garden;
House house;
SmokeChimney smoke;
Lamp lamp;

boolean cameraEnabled = true;
boolean isOn = false;                                            // Variable keeping the state of the light

float rotX = 0, rotY = 0;
float lastX, lastY;
float distX, distY;

// Lights positions
float lightX = 120, lightY = 30, lightZ = -149.9;

// Animal values
float direcMove = 10;
boolean directionTurtle = true;
boolean directionSlug = true;

//min max vlaues of Animals
int animalsX = -330;
int animalsY = -50;

//min max values of Clock
int clockX = 0;
int clockY = -85;
int clockZ = -146;

//min max values of Furnitures
int furnituresX = 0;
int furnituresY = -50;

//min max values of Garden
int gardenX = 0;
int gardenY = -50;

//min max values of House
int houseX = 0;
int houseY = -50;

//min max values of Lamp
int lampX = 0;
int lampY = -180;
int lampZ = 0;

void setup()
{
  fullScreen(P3D);

  imgWall = loadImage("imgWall.jpg");
  imgWood = loadImage("imgWood.jpg");
  imgStrip = loadImage("imgStrip.jpg");
  imgRoof = loadImage("imgRoof.jpg");
  imgDoor = loadImage("imgDoor.jpg");
  imgWindow = loadImage("imgWindow.jpg");
  imgPainting1 = loadImage("imgPainting1.jpg");
  imgPainting2 = loadImage("imgPainting2.jpg");
  imgFirePlace = loadImage("imgFirePlace.jpg");
  imgShimneyInside = loadImage("imgShimneyInside.jpg");
  imgShimneyTop = loadImage("imgShimneyTop.jpg");
  imgGrass = loadImage("imgGrass.jpg");
  imgFloor = loadImage("imgFloor.png");
  imgChair = loadImage("imgChair.jpg");
  imgKey = loadImage("imgKey.jpg");
  imgKeyOutside = loadImage("imgKeyOutside.jpg");
  imgBackground = loadImage("imgBackground.jpg");
  imgTurtleCurt = loadImage("imgTurtleCurt.jpg");
  imgTurtleFoot = loadImage("imgTurtleFoot.png");
  imgSlug = loadImage("imgSlug.png");
  imgSlugSkin = loadImage("imgSlugSkin.jpg");
  imgTreeBody = loadImage("imgTreeBody.jpg");
  imgTreeLeaf = loadImage("imgTreeLeaf.jpg");
  imgSmoke = loadImage("imgSmoke.jpg");
  imgLamp = loadImage("imgLamp.jpg");


  camera = new Camera();
  animals = new Animals(animalsX, animalsY, 0);
  clock = new Clock (clockX, clockY, clockZ);
  furnitures = new Furnitures(furnituresX, furnituresY, 0);
  garden = new Garden(gardenX, gardenY, 0);
  house = new House(houseX, houseY, 0);
  lamp = new Lamp(lampX, lampY, lampZ);

  for (int i = 0; i < 600; i++)                                                     // Creating the random smokes
  { 
    SmokeChimney SC = new SmokeChimney(random(76, 89), -385, random(-100, -89));  
    smokeChimney.add(SC);
  }

  for (int i = 0; i < 10; i++)                                                      // Creating the random trees
  { 
    Trees T = new Trees(random(-450, 450), -50, random(-450, -250));  
    trees.add(T);
  }

  cameraEnabled = true;
}
void draw()
{  
  image(imgBackground, 0, 0, width, height);
  background(imgBackground);
  lights();

  if (isOn)                                                                          // Checks the state in which the light should be
    pointLight(255, 255, 255, 0, 0, 0);

  if (cameraEnabled == true) {
    camera.firstPersonCamera();
  }

  rotateX(rotX + distY);
  rotateY(rotY + distX);

  for (int i = 0; i < trees.size(); i++) {                                           // Taking the trees from ArrayList
    trees.get(i).drawTrees();
  }
  
  for (int i = 0; i < smokeChimney.size(); i++) {                                    // Taking the drawSmokeChimneys from ArrayList
    smokeChimney.get(i).drawSmokeChimney();
  }

  pushMatrix();
  translate(120, 30, -142);
  fill(0);
  scale(1,1,1);
  sphere(5);                                                                         // Light Switch
  popMatrix();

  house.drawHouse();
  furnitures.drawFurnitures();
  clock.drawClock();
  garden.drawGarden();
  lamp.drawLamp();

  fill(255);
  animals.drawAnimals();


  if (animals.yTurtleHead > -545 && directionTurtle == true) {                      // Turtle move in the garden
    animals.yTurtleBottomFoots -=1;
    animals.yTurtleUpperFoots -=1;
    animals.yTurtleHead -=1;
    animals.yTurtleCurt -=1;
    if (animals.yTurtleHead == -545) {
      animals.yTurtleHead += 20;                                                    // The turtle change its face from front to back
      directionTurtle = false;
    }
  } else {
    animals.yTurtleBottomFoots +=1;
    animals.yTurtleUpperFoots +=1;
    animals.yTurtleHead +=1;
    animals.yTurtleCurt +=1;
    if (animals.yTurtleHead == 55) {
      animals.yTurtleHead -= 20;                                                    // The turtle change its face from back to front
      directionTurtle = true;
    }
  }

  if (animals.zSlugCurt > -100 && directionSlug == true) {                          // Slug move in the garden
    animals.zSlugCurt -= 1;
    if (animals.zSlugCurt == -100) {  
      animals.zSlugAntenna += 35;                                                   // The Slog schanges its face
      animals.zSlugSkin += 20;
      directionSlug = false;
    }
  } else {
    animals.zSlugCurt += 1;
    if (animals.zSlugCurt == 200) {
      animals.zSlugAntenna -= 35;                                                   // Slug canghes its face back to front
      animals.zSlugSkin -= 20;
      directionSlug =true;
    }
  }
}

public void mousePressed() {
  lastX = mouseX;
  lastY = mouseY;
}

public void mouseDragged() {
  distX = radians(mouseX - lastX);
  distY = radians(lastY - mouseY);
}

public void mouseReleased() {
  rotX += distY; 
  rotY += distX;
  distX = distY = 0;

  float distance = dist(width/2 +375, height/2 + 100, mouseX, mouseY);              // Calculation between mouse x, y coorditates and ellipse
  if (distance <=75)
    isOn = !isOn;
}
