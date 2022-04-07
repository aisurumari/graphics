float angle = 0;
float speed = 0.1;
PShape kot;
PShape globe;
PImage ziemia;

void setup(){
 
  fullScreen(P3D);
  noStroke();
  kot = loadShape("12221_Cat_v1_l3.obj");
  ziemia = loadImage("earthmap1k.jpg");
  globe = createShape(SPHERE, 20); 
  globe.setTexture(ziemia);
}



void draw(){
  background(0);
  lights();
  translate(width * 0.5, height * 0.5);
  
  pushMatrix();
     sokolMilenium();
  popMatrix();
  
  translate(distanceX, hight * up, distanceZ);
  
  //sun
  pointLight(243, 240, 247, 0, 0, 0);
  emissive(#FAFF08);
  fill(#FAFF08);
  sphere(50);
  emissive(0, 0, 0);
  
  
  
  
  //planet blue - specular (rozbłysk materiału)
  pushMatrix();
  rotateX(0.2*angle);
  translate(0, 0, 100);
  fill(#08FFF9);
  specular(#08FFF9);
  shininess(1.0);
  sphere(20);
  
  
    //moon dark blue
    pushMatrix();
    rotate(angle*0.1);
    translate(57, 0);
    fill(#100250);
    sphere(5);
    popMatrix();
   
   //moon light blue
    pushMatrix();
    rotateY(angle*0.07);
    translate(90, 0);
    fill(#77E7F5);
    sphere(5);
    popMatrix();
   
   
  popMatrix();
  
  //planet green + box
  pushMatrix();
  rotateY(0.3*angle);
  translate(170, 0, 0);
  fill(#08FF32);
  box(20);
  
  
    //moon dark green
    pushMatrix();
    rotateY(angle*0.1);
    rotateZ(angle*0.1);
    translate(50, 0);
    fill(#1A640F);
    sphere(5);
    popMatrix();
   
   //moon light green
    pushMatrix();
    rotateX(angle*0.07);
    translate(30, 0);
    fill(#5BE069);
    sphere(5);
    popMatrix();
    
    //moon earth
    pushMatrix();
    rotate(angle*0.15);
    translate(50, 60);
    noFill();
    shape(globe);
    popMatrix();
    
  popMatrix();
  
  //planet pink + spot light
  pushMatrix();
  rotateY(0.4*angle);
  translate(0, 0, 200);
  fill(#FF08DF);
  sphere(20);
  spotLight(255,0,0,0,0,0,1,0,0,30,1);
  
  
    //moon purple
    pushMatrix();
    rotate(angle*0.1);
    translate(100, 0);
    fill(#5F18A7);
    sphere(5);
    popMatrix();
   
   //moon light pink
    pushMatrix();
    rotateY(angle*0.07);
    translate(75, 0);
    fill(#E083CB);
    sphere(5);
    popMatrix();
  popMatrix();
  
  
  //planet cat
  pushMatrix();
  rotateZ(0.05*angle);
  translate(100, 100, 0);
  noFill();
  scale(2);
  shape(kot);
  popMatrix();
  
  angle += speed;
}
