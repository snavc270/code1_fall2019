
void setup(){
  size(600, 600); 
  rectMode(CENTER); 
}
float theta = 0; 
void draw(){
  background(255); 
  theta += .5;
  
  noFill();  
  pushMatrix();  
    translate(width/2, height/2); 
    rotate(radians(theta)); 
    scale(2);
    rect(0, 0, 100, 100); 
  popMatrix(); 
  
 
    
    for(int i= 0; i<100; i++){
      pushMatrix();
        translate(width/2, height/2); 
        rotate(radians(-theta+i)); 
        rect(0, 0, i*5, i*5);
       popMatrix();  
    }
  
}