void introClicks() {
  mode = GAME;
}
void intro() {
  background(red);
  textAlign(CENTER);
  textSize(150);
  text("AIR HOCKEY", width/2, height/2);

  fill(255);
  rectMode(CENTER);
  rect(width/2, height/3 * 2, 300, 150);
  textSize(60);
  fill(0);
  text("PLAY", width/2, height/3 * 2);
}
