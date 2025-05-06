void game() {
  background(white);
  println("Score is " + score);
  // player 1
  strokeWeight(5);
  stroke(black);
  fill(white);
  circle(x, y, d);

  //player 2
  fill(black);
  circle(x2, y2, d);
  //String scoretwo = Integer.toString(score2);
  //text(scoretwo,x,y);

  //ball
  fill(blue);
  stroke(black);
  strokeWeight(5);
  circle(ballx, bally, balld);

  //goals
  fill(red);
  rect(goalx, goaly, goald, 50);
  rect(goalx2, goaly2, goald, 50);

  //movement

  if (wKey && y > d / 2) y -= 10; /// FIX TOMRROW FIX TOMORROW FIX TOORROW FI X TORMOROOW
  if (sKey && y < height - d/2) y += 10;
  if (aKey && x > d/2) x -= 10;
  if (dKey && x < width - d/2) x += 10;

  if (upKey && y2 > d/2) y2 -=10;
  if (downKey && y2 < height - d/2) y2 += 10;
  if (leftKey && x2 > d/2) x2 -= 10;
  if (rightKey && x2 < width - d/2) x2 += 10; // FI XTOMROROW FIX TOMORORWOW

  if (goalLeftKey && goalx > goald / 2) goalx -=10;
  if (goalRightKey && goalx < width - goald/2) goalx += 10;
  if (goal2LeftKey && goalx2 > goald/2) goalx2 -= 10;
  if (goal2RightKey && goalx2 < width - goald/2) goalx2 += 10; // FI XTOMROROW FIX TOMORORWOW


  ballx += vx;
  bally += vy;

  //gravity

  ////bouncing code
  if (bally <= 0) {
    vy *= -.9;
    bally = 0;
  }
  if (bally >= height) {
    vy *= -.9;
    bally = height;
  }
  if (ballx <= 0) {
    vx *= -.9;
    ballx = 0;
  }
  if (ballx >= height) {
    vx *= -.9;
    ballx = height;
  }

  if (dist(x, y, ballx, bally) <= d/2 + balld / 2) {
    vx = (ballx - x) / 5;
    vy = (bally - y) / 5;
    fail.play();
  }
  if (dist(x2, y2, ballx, bally) <= d/2 + balld / 2) {
    vx = (ballx - x2) / 5;
    vy = (bally - y2) / 5;
  }

  //goal code
  if (goalx - goald / 2 < ballx && ballx < (goalx + goald / 2) && goaly - 50/2< bally && bally < (goaly + 50/2)) {

    score++;
    background(red);
  }
  if (goalx2 - goald / 2 < ballx && ballx < (goalx2 + goald / 2) && goaly2 - 50/2 < bally && bally < (goaly2 + 50/2)) {
    background(blue);
    score2++;
  }
}
