void gameOverClicks() {
  mode = INTRO;
}
void gameOver() {
  background(black);
  textAlign(CENTER);
  fill(255, 0, 0);
  strokeWeight(100);
  textSize(150);
  if (playerLives == 0) {
    text("YOU LOSE!", 500, 400);
    textSize(50);
    fill(white);
    text("Click to play again", 500, 600);
    textSize(50);
    fill(255, 0, 0);
    text("Score: " + score, 500, 500);
  } else if (score == 91) {
    fill(0, 255, 0);
    text("YOU WIN!", 500, 400);
    textSize(50);
    fill(white);
    text("Click to play again", 500, 600);
    textSize(50);
    fill(255, 0, 0);
    text("Lives: " + playerLives, 500, 500);
  }
}
