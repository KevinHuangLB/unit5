void introClicks(){
  mode = GAME;
  intro.pause();
  intro.rewind();
}
void intro(){
  intro.play();
  
  image(gif[frame],0,0,width,height);
  fill(200);
  textAlign(CENTER);
  textSize(100);
  textFont(f);
  text("BREAKOUT!",506,406);
  fill(white);
  text("BREAKOUT!",500,400);
  frame++;
  if (frame == numberOfFrames) frame = 0;
}
