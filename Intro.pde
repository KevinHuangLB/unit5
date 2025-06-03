void introClicks(){
  mode = GAME;
}
void intro(){
  background(white);
  image(gif[frame],0,0,width,height);
  frame++;
  if (frame == numberOfFrames) frame = 0;
}
