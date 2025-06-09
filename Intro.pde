void introClicks(){
  mode = GAME;
  intro.pause();
}
void intro(){
  intro.play();
  
  image(gif[frame],0,0,width,height);
  fill(0,255,0);
  textAlign(CENTER);
  textSize(100);
  text("BREAKOUT",500,500);
  frame++;
  if (frame == numberOfFrames) frame = 0;
}
