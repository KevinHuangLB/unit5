// FIX WIN WIN DOES NOT WORK
void gameOverClicks() {
  mode = INTRO;
  playerLives = 3;
  score = 0;
  lose.pause();
  lose.rewind();
}
void gameOver() {
  background(black);
  textAlign(CENTER);
  fill(255, 0, 0);
  strokeWeight(100);
  textSize(150);
  if (playerLives == 0) {
    lose.play();
    fill(redDark);
    text("YOU LOSE!", 505, 405);
    fill(255, 0, 0);
    text("YOU LOSE!", 500, 400);
    textSize(50);
    fill(white);
    text("Click to play again", 500, 600);
    textSize(50);
    fill(255, 0, 0);
    text("Score: " + score, 500, 500);
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
