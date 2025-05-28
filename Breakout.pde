// Kevin Huang
// 2-3
// May. 15 2025

int mode;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

color black = #000000;
color white = #ffffff;

color pastelRed = #ffadad;
color pastelOrange = #ffd6a5;
color pastelYellow = #fdffb6;
color pastelGreen = #caffbf;
color pastelLightBlue = #9bf6ff;
color pastelBlue = #a0c4ff;
color pastelPurple = #bdb2ff;

//player variables
int playerX;
int playerY;
int playerD;
int playerSpeed;

//ball variables
float ballx, bally, balld;

float vx, vy;

float ax, ay;

//keyboard variables
boolean leftKey, rightKey;

//brick variables
int[] x;
int[] y;
boolean[] alive;

int brickd;


void setup() {
  size(1000, 1000, P2D);

  mode = INTRO;

  playerX = width/2;
  playerY = height;
  playerD = 200;
  playerSpeed = 10;

  //ball setup
  ballx = width/2;
  bally = height/5 * 4;
  balld = 20;

  vx = 0;
  vy = 3;

  //brick variables
  //setup array of bricks
  int numBricks = 91; // 7 x 13 
  x = new int[numBricks];
  y = new int[numBricks];
  alive = new boolean[numBricks];
  int i = 50;
  int j = 50;
  int count = 0;
  while (i < 501) { //501 just to make one more row, since last row is on y=500
    j = 50;
    while (j < width) {
      x[count] = j;
      y[count] = i;
      alive[count] = true;
      j += 75;
      count++;
    }
    i += 75;
  }
  println(count);
  //x: 50 125 200 275 350 425 500 575 650 725 800 875 950
  //y: 50 125 200 275 350 425
  brickd = 25;
}
void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else {
    println("Error, mode is " + mode);
  }
}
