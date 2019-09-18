float xPos = 100, yPos = 100;
float xSpeed, ySpeed; 
int size = 50; 
float distance; 
//create a boolean to detect if your ball is clicked; 

void setup(){
  size (600, 600);
  xSpeed = random(2, 5); 
  ySpeed = random(-2, 2); 
}

void draw(){ 
  changeBackground(); 
  xPos += xSpeed; 
  yPos += ySpeed; 
  
  distance = dist(mouseX, mouseY, xPos, yPos); 
  
  //if my ellipse goes further than the right side
  //of my screen, reset 
  if(xPos > width-size/2 || xPos < size/2){
    xSpeed = -xSpeed; 
  }
  
  if(yPos > height-size/2 || yPos < size/2){
    ySpeed = -ySpeed; 
  }
  
  ellipse(xPos, yPos, size, size);  
  
  //if ball clicked --> set speed to 0 
  //if ball not clicked --> set to random value;
}

void mousePressed(){
  if(distance < size/2){
    xSpeed = random(-5, 5); 
    ySpeed = random(-2, 2);
  }  
  //if mouse is within the ball; 
  //turn ball clicked from true - false / false - true 
}

void changeBackground(){
  int g, b;
  
  b = int(map(yPos, 0, height, 0, 232));
  g = int(map(yPos, 0, height, 255, 21));
  background(255, g, b);
}