color white = #ffffff;
color black  = #000000;
color red = #FF0000;

// player variables
float x, y, d;
float x2,y2;

// keyboard variables
boolean wKey, sKey, aKey, dKey;
boolean upKey, downKey, leftKey, rightKey;

void setup() {
  size(1980, 1080, P2D);
  x = width / 3;
  y = height/2;
  
  x2 = width / 3 * 2;
  y2 = height/2;
  d = 100;
}


void draw() {
  background(white);
if (dist(x,y,x2,y2) < 100) background(red);
  // player 1
  strokeWeight(5);
  stroke(black);
  fill(white);
  circle(x, y, d);
  fill(black);
  circle(x2,y2,d);

  //movement
  if (wKey) y -= 5;
  if (sKey) y += 5;
  if (aKey) x -= 5;
  if (dKey) x += 5;
  
  if (upKey) y2 -=5;
  if (downKey) y2 += 5;
  if (leftKey) x2 -= 5;
  if (rightKey) x2 += 5;
  

}

void keyPressed() {
  if (key == 'w') wKey = true;
  if (key == 's') sKey = true;
  if (key == 'a') aKey = true;
  if (key == 'd') dKey = true;

  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
}

void keyReleased() {
  if (key == 'w') wKey = false;
  if (key == 's') sKey = false;
  if (key == 'a') aKey = false;
  if (key == 'd') dKey = false;

  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == RIGHT) rightKey = false;
}
