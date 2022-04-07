int hight = 0;
int directionY = 0;
int directionX = 0;
int directionZ = 0;
float rotation = 0.0;
float distanceX = 0.0;
float distanceZ = 0.0;
int up = 10;
float bumpSpeed = 1.0;
float falkonSpeed = 3.0;

void sokolMilenium(){
  
  translate(width * 0.01, height * 0.45);
  fill(#FF0000);
  box(200, 100, 200);
  
  
  translate(0,-100,0);
  rotation += 0.01 * bumpSpeed * directionY;
  if(rotation < -45 * 0.02) rotation = -45 * 0.02;
  if(rotation > 45 * 0.02) rotation = 45 * 0.02;
  rotateY(rotation);
  translate(0,0,-60);
  box(60,60,100);
  

  distanceX += directionX * falkonSpeed;
  distanceZ += directionZ * falkonSpeed;
}

void keyPressed(){
  if (key != CODED && keyCode == 'A' || key == CODED && keyCode == LEFT)
    directionX = 1;
  else if (key != CODED && keyCode == 'D' || key == CODED && keyCode == RIGHT)
    directionX = -1;
  else if (key != CODED && keyCode == 'W' || key == CODED && keyCode == UP)
    directionZ = 1;
  else if (key != CODED && keyCode == 'S' || key == CODED && keyCode == DOWN)
    directionZ = -1;
  else if (key != CODED && keyCode == 'Q' || key == CODED && keyCode == SHIFT)
    directionY = 1;
  else if (key != CODED && keyCode == 'E' || key != CODED && keyCode == BACKSPACE)
    directionY = -1;
  else if (key != CODED && keyCode == 'N')
    hight++;
  else if (key != CODED && keyCode == 'M')
    hight--;
}

void keyReleased(){
  if (key != CODED && keyCode == 'A' || key == CODED && keyCode == LEFT)
    directionX = 0;
  else if (key != CODED && keyCode == 'D' || key == CODED && keyCode == RIGHT)
    directionX = 0;
  else if (key != CODED && keyCode == 'W' || key == CODED && keyCode == UP)
    directionZ = 0;
  else if (key != CODED && keyCode == 'S' || key == CODED && keyCode == DOWN)
    directionZ = 0;
  else if (key != CODED && keyCode == 'Q' || key == CODED && keyCode == SHIFT)
    directionY = 0;
  else if (key != CODED && keyCode == 'E' || key != CODED && keyCode == BACKSPACE)
    directionY = 0;
}

void mouseClicked(){
  if(mouseButton == LEFT) hight++;
  if(mouseButton == RIGHT) hight--;
}
