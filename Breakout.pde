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

//keyboard variables
boolean leftKey,rightKey;

void setup(){
  size(1000,1000);
  
  mode = INTRO;
  
  playerX = width/2;
  playerY = height;
  playerD = 200;
  playerSpeed = 10;
}
void draw(){
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
