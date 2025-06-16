void winClicks() {
  mode = INTRO;
  playerLives = 3;
  score = 0;
  win.pause();
  win.rewind();
}
void win() {
  background(black);
  strokeWeight(100);
  textAlign(CENTER);
    fill(0, 255, 0);
    win.play();
    fill(0, 255, 0);
    textSize(150);
    fill(greenDark);
    text("YOU WIN!", 505, 405);
    fill(0,255,0);
    text("YOU WIN!", 500, 400);
    textSize(50);
    fill(white);
    text("Click to play again", 500, 600);
    textSize(50);
    fill(255, 0, 0);
    text("Lives: " + playerLives, 500, 500);
  }
