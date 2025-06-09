void gameOverClicks() {
  mode = INTRO;
  playerLives = 3;
  score = 0;
}
void gameOver() {
  background(black);
  textAlign(CENTER);
  fill(255, 0, 0);
  strokeWeight(100);
  textSize(150);
  if (playerLives == 0) {
    lose.play();
    text("YOU LOSE!", 500, 400);
    textSize(50);
    fill(white);
    text("Click to play again", 500, 600);
    textSize(50);
    fill(255, 0, 0);
    text("Score: " + score, 500, 500);
  } else if (score == 91) {
    win.play();
    fill(0, 255, 0);
    text("YOU WIN!", 500, 400);
    textSize(50);
    fill(white);
    text("Click to play again", 500, 600);
    textSize(50);
    fill(255, 0, 0);
    text("Lives: " + playerLives, 500, 500);
    score = 0;
    playerLives = 3;
  }
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
}
