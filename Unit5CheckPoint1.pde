import processing.sound.*;

//mode variables
int mode;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

color white = #ffffff;
color black  = #000000;
color red = #FF0000;
color blue = #0000ff;
color green = #0AFF0C;

// player variables
float x, y, d;
float x2, y2;
int playerSpeed;
int winner;

//ball variables
float ballx, bally, balld;

float vx, vy;

float ax, ay;

int lastTouch;
int lastTouchCount;
int ballSpeed;

// goal variabel
float goalx,goalx2,goaly,goaly2,goald;
int score,score2;


// keyboard variables
boolean wKey, sKey, aKey, dKey;
boolean upKey, downKey, leftKey, rightKey;
boolean goalLeftKey,goalRightKey,goal2LeftKey,goal2RightKey;


//SOUND
SoundFile fail, success, music;



void setup() {
  //loading assests
  fail = new SoundFile(this, "FAILURE.wav");
  music = new SoundFile(this, "MUSIC.mp3");

//  music.loop();
//  music.amp(0.2);
  rectMode(CENTER);
  size(1000, 1000, P2D);
  x = width / 3;
  y = height/2;

  x2 = width / 3 * 2;
  y2 = height/2;
  d = 110;

  //ball setup
  ballx = width /2 ;
  bally = height/2;
  balld = 85;
  vx = 3;
  vy = 3;
  
  playerSpeed = 12;
  ballSpeed = 20;

  ax = 3;
  ay = 3;

  // goal setup
  goalx = width/2;
  goalx2 = width/2;
  goaly = 0;
  goaly2 = height;
  goald = width/4;
  
  score = 0;
  score2 = 0;
  
  mode = INTRO;
  lastTouch = -1;
  winner = 0;
}


void draw() {
  if (mode == INTRO){
    intro();
  }else if(mode == GAME) {
    game();
  }else if (mode == PAUSE){
    pause();
  }else if (mode == GAMEOVER){
    gameOver();
  }else {
    println("Error, mode is " + mode);
  }
}
