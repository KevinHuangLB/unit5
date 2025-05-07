void gameOver() {
  fill(white);
  stroke(white);
  background(0, 0, 0);
  text("GAME OVER", width/2, height/3);
  if (winner == 1)
  {
    text("RED IS THE WINNER", width/2, height/2);
    text("THE SCORE IS " + score + "-" + score2, width/2, height/3 * 2);
  }
  if (winner == 2) {
    text("BLUE IS THE WINNER", width/2, height/2);
    text("THE SCORE IS " + score2 + "-" + score, width/2, height/3 * 2);
  }
}
