void gameOverClicks(){
  mode = INTRO;
}
void gameOver() {
  fill(white);
  stroke(white);
  textAlign(CENTER);  
  textSize(100);
  text("GAME OVER", width/2, height/3);
  if (winner == 1)
  {
    background(red);
    text("RED WINS", width/2, height/2);
    text("THE SCORE IS " + score + "-" + score2, width/2, height/3 * 2);
  }
  if (winner == 2) {
    background(blue);
    text("BLUE WINS", width/2, height/2);
    text("THE SCORE IS " + score2 + "-" + score, width/2, height/3 * 2);
  }
}
