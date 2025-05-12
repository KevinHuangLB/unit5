void introClicks() {
  mode = GAME;
}
void intro() {
  background(red);
  textAlign(CENTER);
  textSize(150);
  text("AIR HOCKEY", width/2, height/2);

  fill(255);
  rect(width/2, height/3 * 2, 300, 150);
  textSize(40);
  fill(0);
  text("PLAY", width/2, height/3 * 2, 50, 50);
}
