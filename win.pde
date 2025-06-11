void winClicks(){
  mode = INTRO;
  playerLives = 3;
  score = 0;
  lose.pause();
  lose.rewind();
}
void win(){
if (score == 91) {
    fill(0,255,0);
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
}
