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

int brickd;

void setup() {
  size(1000, 1000,P2D);

  mode = INTRO;

  playerX = width/2;
  playerY = height;
  playerD = 200;
  playerSpeed = 10;

  //ball setup
  ballx = width/2;
  bally = height/2;
  balld = 20;

  vx = 0;
  vy = 3;

  //brick variables
  //setup array of bricks
  x = new int[40];
  y = new int[40];
  int i = 25;
  int j = 25;
  int count = 0;
  while (i < 500) {
    j = 25;
    while (j < width) {
      x[count] = j;
      y[count] = i;
      j += 200;
      count++;
    }
    i += 200;
  }
  println(count);
  
  brickd = 100;
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
