void game() {
  lastTouchCount++;
  if (score == 3) {
    winner = 1;
    mode = GAMEOVER;
  }
  if (score2 == 3){
    winner = 2;
    mode = GAMEOVER;
  }

  background(white);
  println("First player score is " + score);
  println("Second player score is " + score2);
  // player 1
  if (score == 1) fill(130, 0, 0);
  else if (score == 2) fill(60, 0, 0);
  else {
    fill(red);
  }
  strokeWeight(5);
  stroke(black);
  circle(x, y, d);


  //player 2
  if (score2 == 1) fill(0, 0, 130);
  else if (score2 == 2) fill(0, 0, 60);
  else {
    fill(blue);
  }
  circle(x2, y2, d);
  //String scoretwo = Integer.toString(score2);
  //text(scoretwo,x,y);

  //ball
  fill(green);
  stroke(black);
  strokeWeight(5);
  circle(ballx, bally, balld);

  //goals
  fill(red);
  rect(goalx, goaly, goald, 50);
  fill(blue);
  rect(goalx2, goaly2, goald, 50);

  //movement

  if (wKey && y > d / 2) y -= playerSpeed; /// FIX TOMRROW FIX TOMORROW FIX TOORROW FI X TORMOROOW
  if (sKey && y < height - d/2) y += playerSpeed;
  if (aKey && x > d/2) x -= playerSpeed;
  if (dKey && x < width - d/2) x += playerSpeed;

  if (upKey && y2 > d/2) y2 -=playerSpeed;
  if (downKey && y2 < height - d/2) y2 += playerSpeed;
  if (leftKey && x2 > d/2) x2 -= playerSpeed;
  if (rightKey && x2 < width - d/2) x2 += playerSpeed; // FI XTOMROROW FIX TOMORORWOW

  if (goalLeftKey && goalx > goald / 2) goalx -=7;
  if (goalRightKey && goalx < width - goald/2) goalx += 7;
  if (goal2LeftKey && goalx2 > goald/2) goalx2 -= 7;
  if (goal2RightKey && goalx2 < width - goald/2) goalx2 += 7; // FI XTOMROROW FIX TOMORORWOW


  ballx += vx;
  bally += vy;

  //gravity

  ////bouncing code
  if (bally <= 0) {
    vy *= -1;
    bally = 0;
  }
  if (bally >= height) {
    vy *= -1;
    bally = height;
  }
  if (ballx <= 0) {
    vx *= -1;
    ballx = 0;
  }
  if (ballx >= height) {
    vx *= -1;
    ballx = height;
  }

  if (dist(x, y, ballx, bally) <= d/2 + balld / 2) {
    lastTouch = 0;
    lastTouchCount = 0;
    vx = (ballx - x) / 3;
    vy = (bally - y) / 3;
  }
  if (dist(x2, y2, ballx, bally) <= d/2 + balld / 2) {
    lastTouch = 1;
    lastTouchCount = 0;
    vx = (ballx - x2) / 3;
    vy = (bally - y2) / 3;
  }

  //goal code
  if (goalx - goald / 2 < ballx && ballx < (goalx + goald / 2) && goaly - 50/2< bally && bally < (goaly + 50/2)) {
    if (lastTouch == 1 || lastTouchCount > 50) {
      score2++;
      ballx = width / 2;
      bally = height / 2;
      vx = 0;
      vy = 0;
      background(red);
    }
  }
  if (goalx2 - goald / 2 < ballx && ballx < (goalx2 + goald / 2) && goaly2 - 50/2 < bally && bally < (goaly2 + 50/2)) {
    if (lastTouch == 0 || lastTouchCount > 50) {
      background(blue);
      ballx = width/2;
      bally = height /2;
      vx = 0;
      vy = 0;
      score++;
    }
  }
}
