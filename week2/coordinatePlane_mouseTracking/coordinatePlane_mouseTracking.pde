void setup(){
  size(600, 600); 
  background(0);
}

  
void draw() {
  //optional transparency
  fill(0, 20); 
  rect(0, 0, width, height); 
  stroke(255);
  
  //option 1
  line(mouseX, width/2, mouseY, height/2);
  
  //option 2
  line(width/2, height/2, mouseX, mouseY); 
  
  
  //we can track where our mouse is located on the coordinate grid
  //this is a useful tool when you're trying to positiong things
  println(mouseX); 
  println(mouseY); 
}