void keyPressed() {
  if (key == 'w') wKey = true;
  if (key == 's') sKey = true;
  if (key == 'a') aKey = true;
  if (key == 'd') dKey = true;

  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
  
    if (key == 'n') goalLeftKey = true;
  if (key == 'm') goalRightKey = true;
  if (key == '2') goal2LeftKey = true;
  if (key == '3') goal2RightKey = true;
}

void keyReleased() {
  if (key == 'w') wKey = false;
  if (key == 's') sKey = false;
  if (key == 'a') aKey = false;
  if (key == 'd') dKey = false;

  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == RIGHT) rightKey = false;
  
  if (key == 'n') goalLeftKey = false;
  if (key == 'm') goalRightKey = false;
  if (key == '2') goal2LeftKey = false;
  if (key == '3') goal2RightKey = false;
  
  
}
