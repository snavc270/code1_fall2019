//declare my variables; 
int xPos, yPos; 
int size = 100; 
boolean circleClicked = false; 
float d; 

void setup(){
  size(600, 600); 
  xPos = width/2; 
  yPos = height/2;
  noStroke(); 
}

void draw(){
  d = dist(mouseX, mouseY, xPos, yPos); 
  
  
  if(d < size/2){
    //println("inside circle");
    fill(0); 
  }else{
    fill(255); 
  }
  if(circleClicked){
    background(0); 
  }else{
    background(255);
  }
  
  println(circleClicked); 
  ellipse(xPos, yPos, size, size); 
}

void mousePressed(){
  if(d < size/2){
    circleClicked = !circleClicked; 
  }
}