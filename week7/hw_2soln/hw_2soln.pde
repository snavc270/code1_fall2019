int num = 10; 

int [] xPos = new int[num]; 
int [] yPos = new int[num]; 

int [] xSpeed = new int[num]; 
int [] ySpeed = new int[num];

int [] size = new int[num]; 
color [] c = new color[num]; 

int [] opacity = new int[num];

boolean [] isClicked = new boolean[num]; 
//int size = 10; 
void setup(){
  size(600, 600); 
  for(int i = 0; i<num; i++){
    opacity[i] = 255; 
    size[i] = int(random(10, 100)); 
    
    xPos[i] = int(random(size[i]/2, width-size[i]/2)); 
    yPos[i] = int(random(size[i]/2, height-size[i]/2)); 
    
    xSpeed[i] = int(random(1, 5)); 
    ySpeed[i] = int(random(1,5)); 
    c[i] = color(random(10, 50), random(100, 255), random(100, 200));
    isClicked[i] = false; 
  }
}

void draw(){
  background(0); 
  
  for(int i = 0; i<num; i++){
    fill(c[i], opacity[i]); 
    ellipse(xPos[i], yPos[i], size[i], size[i]); 
    
    if(isClicked[i]){
      xPos[i] = xPos[i]; 
      yPos[i] = yPos[i];
    }else{
      xPos[i] = xPos[i]+ xSpeed[i]; 
      yPos[i] = yPos[i] + ySpeed[i]; 
    }
    if(xPos[i] <= size[i]/2 || xPos[i] >=width-size[i]/2){
      xSpeed[i] = xSpeed[i] *-1; 
    }
    
    if(yPos[i] <= size[i]/2 || yPos[i] >=height-size[i]/2){
      ySpeed[i] = ySpeed[i] *-1; 
    }
    
    if(keyPressed){
      opacity[i] = 255; 
    }
  }
}

//detect if an ellipse is being clicked 
void mousePressed(){
  for(int i = 0; i<num; i++){
    float d; 
    d = dist(mouseX, mouseY, xPos[i], yPos[i]); 
    if(d < size[i]/2){
      isClicked[i] = !isClicked[i]; 
    }
  }
}