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
  
  //ball
  fill(white);
  circle(ballx,bally,balld);
  
  ballx += vx;
  bally += vy;
  
  // bouncing code
  if (bally <= 0){
    vy *= -1;
    bally = 0;
  }
  if (bally >= height){
    vy *= -1;
    bally = height;
  }
    if (ballx <= 0) {
    vx += 3;
    vx *= -.1;
    ballx = 0;
  }
  if (ballx >= height) {
    vx += 3;
    vx *= -.1;
    ballx = height;
  }

  // ball collision code
  if (dist(playerX,playerY,ballx,bally) <= playerD / 2 + balld / 2){
    vx = (ballx - playerX) / 7; // just for slowing it down
    vy = (bally - playerY) / 7;
  }
  
  //movement
  if (leftKey && playerX > playerD / 2) playerX -= playerSpeed; // BROKEN
  if (rightKey && playerX < width - playerD / 2) playerX += playerSpeed;
}
