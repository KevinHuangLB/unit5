void gameClicks(){
  mode = PAUSE;
}
void game(){
  background(black);
  // player
  fill(white);
  println(playerX);
  println(playerY);
  println(playerD);
  circle(playerX,playerY,playerD);
  
  //movement
  if (leftKey && playerX > playerD/2) playerX -= playerSpeed; // BROKEN
}
