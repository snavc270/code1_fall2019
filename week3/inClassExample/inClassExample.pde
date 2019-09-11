float xCircle, yCircle; 
int size = 50;
int r, g, b; 

void setup(){
  size(800, 800); 
  xCircle = width/2; 
  yCircle = height/2;
  noStroke();
}

void draw(){
     //if(calcDist(xCircle, yCircle) < size/2){
     //background(255, 0, 0); 
   //}else{
   //  //background(0, 255, 0); 
   //} 
   
   fill(b, g, r); 
   r = int(map(calcDist(xCircle, yCircle), 0, width, 100, 255));  //converting float to int
   b = int(map(mouseY, 0, height, 100, 255));
   
   background(r , 50, b); 
   ellipse(xCircle, yCircle, size, size); 
   
   ellipse(100, 100, size, size); 
   //println("Distance 1: " + calcDist(100, 100)); 
   //println("Distance 2: " + calcDist(xCircle, yCircle));
}

float calcDist(float x, float y){
  float dist = sqrt(sq(x - mouseX)+sq(y - mouseY));
  return dist; 
}