import processing.sound.*;

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

// goal variabel
float goalx,goalx2,goaly,goaly2,goald;
int score,score2;


// keyboard variables
boolean wKey, sKey, aKey, dKey;
boolean upKey, downKey, leftKey, rightKey;


//SOUND
SoundFile fail, success, music;



void setup() {
  //loading assests
  fail = new SoundFile(this, "FAILURE.wav");
  music = new SoundFile(this, "MUSIC.mp3");

  music.loop();
  music.amp(0.2);
  rectMode(CENTER);
  size(1000, 1000, P2D);
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
  vy = 8;

  ax = 4;
  ay = 4;

  // goal setup
  goalx = width/2;
  goalx2 = width/2;
  goaly = 0;
  goaly2 = height;
  goald = width/3;
  
  score = 0;
  score2 = 0;
}


void draw() {
  background(white);
  // player 1
  strokeWeight(5);
  stroke(black);
  fill(white);
  circle(x, y, d);
  //String scoreone = Integer.toString(score);
  //text(scoreone,x,y);
  println(score); // FIX SCORE SCORE SCORE SCOR EO SCOKRSJIJIOFjsiojaf
  //player 2
  fill(black);
  circle(x2, y2, d);
  //String scoretwo = Integer.toString(score2);
  //text(scoretwo,x,y);

  //ball
  fill(blue);
  stroke(black);
  strokeWeight(5);
  circle(ballx, bally, balld);

  //goals
  fill(red);
  rect(goalx,goaly,goald,50);
  rect(goalx2,goaly2,goald,50);

  //movement

  if (wKey && y > d / 2) y -= 10; /// FIX TOMRROW FIX TOMORROW FIX TOORROW FI X TORMOROOW
  if (sKey && y < height - d/2) y += 10;
  if (aKey && x > d/2) x -= 10;
  if (dKey && x < width - d/2) x += 10;

  if (upKey && y2 > d/2) y2 -=10;
  if (downKey && y2 < height - d/2) y2 += 10;
  if (leftKey && x2 > d/2) x2 -= 10;
  if (rightKey && x2 < width - d/2) x2 += 10; // FI XTOMROROW FIX TOMORORWOW

  
  ballx += vx;
  bally += vy;

  //gravity

  ////bouncing code
  if (bally <= 0) {
    vy *= -.9;
    bally = 0;
  }
  if (bally >= height) {
    vy *= -.9;
    bally = height;
  }
  if (ballx <= 0) {
    vx *= -.9;
    ballx = 0;
  }
  if (ballx >= height) {
    vx *= -.9;
    ballx = height;
  }

  if (dist(x, y, ballx, bally) <= d/2 + balld / 2) {
    vx = (ballx - x) / 5;
    vy = (bally - y) / 5;
    fail.play();
  }
  if (dist(x2, y2, ballx, bally) <= d/2 + balld / 2) {
    vx = (ballx - x2) / 5;
    vy = (bally - y2) / 5;
  }
  
  //goal code
  if (goalx - goald / 2 < ballx && ballx < (goalx + goald / 2) && goaly - 50/2< bally && bally < (goaly + 50/2)){

    score++;
    background(red);
  }
    if (goalx2 < ballx && ballx < goalx2 + goald && goaly2 < bally && bally < goaly2 + 50){

    score2++;
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
