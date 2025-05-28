void gameClicks() {
  mode = PAUSE;
}
void game() {
  background(black);
  // player
  fill(white);
  circle(playerX, playerY, playerD);

  //ball
  fill(white);
  circle(ballx, bally, balld);

  ballx += vx;
  bally += vy;

  //bricks
  fill(white);
  int i = 0;
  while (i < x.length) {
    if (alive[i] == true){
    manageBrick(i);
    }
    i++;
  }

  println(x);
  println(y);
  // bouncing code
  if (bally <= 0) {
    vy *= -1;
    bally = 0;
  }
  if (bally >= height) { // CHANGE THIS WHEN YOU GET TO THAT POINT
    vy *= -1;
    bally = height;
  }
  if (ballx <= 0) {
    vx += 3;
    vx *= -1;
    ballx = 0;
  }
  if (ballx >= width) {
    vx += 3;
    vx *= -1;
    ballx = width;
  }

  // ball collision code
  if (dist(playerX, playerY, ballx, bally) <= playerD / 2 + balld / 2) {
    vx = (ballx - playerX) / 7; // just for slowing it down
    vy = (bally - playerY) / 7;
  }

  //movement
  if (leftKey && playerX > playerD / 2) playerX -= playerSpeed; // BROKEN
  if (rightKey && playerX < width - playerD / 2) playerX += playerSpeed;
}
void manageBrick(int i){
      switch (i) {
      case 0: fill(pastelRed); //fill thing is broken due to dissapearing bricks FIX FIX IFX
      break;
      case 13: fill(pastelOrange);
      break;
      case 26: fill(pastelYellow);
      break;
      case 39: fill(pastelGreen);
      break;
      case 52: fill(pastelLightBlue);
      break;
      case 65: fill(pastelBlue);
      break;
      case 78: fill(pastelPurple);
      break;
    }
    circle(x[i], y[i], brickd);
    if (dist(ballx, bally, x[i], y[i]) < balld/2 + brickd/2) { //Brick collsiosjn
      vx = (ballx - x[i]) / 3;
      vy = (bally - y[i]) / 3;
      alive[i] = false;
    }
}
