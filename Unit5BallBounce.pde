color black = #000000;
color white = #ffffff;
color red = #ff0000;
color blue = #0000ff;


float ballx, bally, balld;

float vx, vy;

float ax,ay;

void setup() {
  size(600, 600, P2D);
  ballx = width /2 ;
  bally = height/2;
  balld = 50;
  vx = 8;
  vy = 10;
  
  ax = 0;
  ay = 1;
}

void draw() {
  fill(blue);
  stroke(black);
  strokeWeight(5);
  circle(ballx, bally, balld);


  //movement
  ballx += vx;
  bally += vy;
  
  //gravity
  vx += ax;
  vy += ay;
  
  //bouncing code
  if (bally <= 0){
    vy *= -0.9;
    bally = 0;
  }
  if (bally >= height){
    vy *= -0.9;
    bally = height;
  }
  if (ballx <= 0){
    vx *= -0.9;
    ballx = 0;
  }
  if (ballx >= height){
    vx *= -0.9;
    ballx = height;
  }
}
