void gameClicks() {
  mode = PAUSE;
}
void game() {
  if (playerLives == 0) {
    mode = GAMEOVER;
  } else if (score == 91) mode = WIN;
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
    if (alive[i] == true) {
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
    ballx = width/2;
    bally = height/5 * 3;
    playerLives--;
    vx = 0;
    vy = 3;
    playerX = width/2;
    playerY = height;
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
    hit.rewind();
    hit.play();
    vx = (ballx - playerX) / 7; // just for slowing it down
    vy = (bally - playerY) / 7;
  }

  //movement
  if (leftKey && playerX > playerD / 2) playerX -= playerSpeed; // BROKEN
  if (rightKey && playerX < width - playerD / 2) playerX += playerSpeed;

  //score
  textAlign(CENTER, CENTER);
  textSize(18);
  fill(pastelPurpleDark);
  text("Score: " + score, width*26.015/29, height*71.015/73);
  fill(pastelPurple);
  text("Score: " + score, width*26/29, height*71/73);
  fill(pastelPurpleDark);
  text("Lives: " + playerLives, width*2.0075/29, height*71.0075/73);
  fill(pastelPurple);
  text("Lives: " + playerLives, width*2/29, height*71/73);
}
void manageBrick(int i) {
  switch (y[i]) {
  case 50:
    fill(pastelRed); //fill thing is broken due to dissapearing bricks FIX FIX IFX
    break;
  case 125:
    fill(pastelOrange);
    break;
  case 200:
    fill(pastelYellow);
    break;
  case 275:
    fill(pastelGreen);
    break;
  case 350:
    fill(pastelLightBlue);
    break;
  case 425:
    fill(pastelBlue);
    break;
  case 500:
    fill(pastelPurple);
    break;
  }
  circle(x[i], y[i], brickd);
  if (dist(ballx, bally, x[i], y[i]) < balld/2 + brickd/2) { //Brick collsiosjn
    scoring.rewind();
    scoring.play();
    vx = (ballx - x[i]) / 3;
    vy = (bally - y[i]) / 3;
    alive[i] = false;
    score++;
  }
}
