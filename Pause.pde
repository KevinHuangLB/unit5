void pauseClicks(){
  mode = GAME;
}
void pause(){
  textAlign(CENTER);
  textSize(200);
  fill(0);
  rectMode(CENTER);
  rect(width/2 - 60, height / 2, 40,200);
  rect(width/2 + 60, height / 2, 40,200);
}
