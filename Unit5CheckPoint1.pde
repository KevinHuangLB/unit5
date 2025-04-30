color white = #ffffff;
color black  = #000000;
color red = #FF0000;
color blue = #0000ff;

// player variables
float x, y, d;
float x2, y2;

//ball variables
float ballx, bally, balld;

float vx, vy;

float ax, ay;

// keyboard variables
boolean wKey, sKey, aKey, dKey;
boolean upKey, downKey, leftKey, rightKey;


void setup() {
  size(600, 600, P2D);
  x = width / 3;
  y = height/2;

  x2 = width / 3 * 2;
  y2 = height/2;
  d = 100;

  //ball setup
  ballx = width /2 ;
  bally = height/2;
  balld = 50;
  vx = 8;
  vy = 10;

  ax = 0;
  ay = 1;
}


void draw() {
  background(white);
  if (dist(x, y, x2, y2) < 100) background(red);
  // player 1
  strokeWeight(5);
  stroke(black);
  fill(white);
  circle(x, y, d);
  fill(black);
  circle(x2, y2, d);

  //ball
  fill(blue);
  stroke(black);
  strokeWeight(5);
  circle(ballx, bally, balld);

  //movement
  if (wKey && y > 0) y -= 5; /// FIX TOMRROW FIX TOMORROW FIX TOORROW FI X TORMOROOW
  if (sKey && y < height) y += 5;
  if (aKey && x > 0) x -= 5;
  if (dKey && x < width) x += 5;

  if (upKey && y2 > 0) y2 -=20;
  if (downKey && y2 < height) y2 += 20;
  if (leftKey && x2 > 0) x2 -= 20;
  if (rightKey && x < width) x2 += 20; // FI XTOMROROW FIX TOMORORWOW
  

  ballx += vx;
  bally += vy;

  //gravity
  vx += ax;
  vy += ay;

  //bouncing code
  if (bally <= 0) {
    vy *= -0.9;
    bally = 0;
  }
  if (bally >= height) {
    vy *= -0.9;
    bally = height;
  }
  if (ballx <= 0) {
    vx *= -0.9;
    ballx = 0;
  }
  if (ballx >= height) {
    vx *= -0.9;
    ballx = height;
  }

  if (dist(x, y, ballx, bally) <= d/2 + balld / 2) {
    vy = vx = 0;
  }
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
