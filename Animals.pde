class Animals {
  float xA, yA, zA;

  float yTurtleBottomFoots = -20;
  float yTurtleUpperFoots = -30;
  float yTurtleHead = -35;
  float yTurtleCurt = -25;

  float zSlugCurt = -100;                                               //  First location of Slug  
  float zSlugSkin = -10; 
  float zSlugAntenna = -18;


  PShape turtleCrust;                               
  PShape turtleFoot;   
  PShape slug;         
  PShape slugSkin;     

  public Animals(float xA, float yA, float zA) {
    this.xA = xA;
    this.yA = yA;
    this.zA = zA;
  }

  public void drawAnimals() {
    noStroke();
    pushMatrix();
    translate(xA, yA);
    scale(1.5);

    drawSlug();
    drawTurtleCurt();
    popMatrix();
  }
  
  //------------------------- THE TURTLE CURT -------------------------------------
  public void drawTurtleCurt() {  
    turtleCrust = createShape(SPHERE, 10);
    turtleCrust.setTexture(imgTurtleCurt);

    turtleFoot = createShape(SPHERE, 5);
    turtleFoot.setTexture(imgTurtleFoot);

    pushMatrix();
    rotateZ(radians(90));                                              // It changes the turtleFoot

    translate(0, 0, 250); // Kaplumbagın Z koordınat ayarı
    shape(turtleCrust, 95, yTurtleCurt, 5, 20);                        //  Curt of turtle

    translate(0, 0, 5);
    shape(turtleFoot, 97, yTurtleBottomFoots, 5, 5);                   //  Bottom front foot of turtle 

    translate(0, 0, -10);                       
    shape(turtleFoot, 97, yTurtleBottomFoots, 5, 5);                   //  Bottom back foot of turtle 

    translate(0, 0, 10);
    shape(turtleFoot, 97, yTurtleUpperFoots, 5, 5);                    //  Upper front foot of turtle 

    translate(0, 0, -10);
    shape(turtleFoot, 97, yTurtleUpperFoots, 5, 5);                    //  Upper back foot of turtle

    translate(0, 0, 5);
    shape(turtleFoot, 92, yTurtleHead, 9, 9);                          //  Head of turtle

    popMatrix();
  }

  //------------------------- THE SLUG -------------------------------------
  public void drawSlug() {              // Sümüklü bocek  olusumu
    slug = createShape(SPHERE, 15);
    slug.setTexture(imgSlug);

    slugSkin = createShape(SPHERE, 30);    
    slugSkin.setTexture(imgSlugSkin);

    pushMatrix();
    // translate(sag/sol, yukarı/assagıya , ileri/geri);

    translate(0, 0, zSlugCurt);
    shape(slug, -80, 90, 25, 25);                           //  curt of slug

    translate(0, 0, zSlugSkin);                                  
    shape(slugSkin, -85, 97.6, 7, 5);                     //  skin of slug

    translate(0, 0, zSlugAntenna);
    strokeWeight(3);
    stroke(250, 235, 178);
    line(-86, 92, -86, 97);                               //  left antenna of slug
    line(-84, 92, -84, 97);                               //  right antenna of slug
    noStroke();

    popMatrix();
  }
}
