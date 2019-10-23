//player 
//ball 
//collision dection 
//score 
//lives 
//timer 

Paddle player1; 
Ball ball; 
PVector playPos [] = new PVector[2]; 
void setup(){
  size(800, 600); 
  
  playPos[0] = new PVector(width-100, height/2); 
  player1 = new Paddle(playPos[0]); 
  ball = new Ball(width/2, height/2); 
}

void draw(){
  background(0); 
  player1.update(); 
  player1.display(); 
  
  ball.display(); 
  ball.move(); 
  
  //if ball goes outside of y boundaries 
  if(ball.y > height-ball.size/2 || ball.y < ball.size/2){
    ball.bounceY(); 
  }
  
  if(ball.x <= ball.size/2){
    ball.bounceX(); 
  }
  
  if(ball.x >= width-ball.size/2){
    ball.reset(); 
  }
   
  //need to check if the ball position is within 
  //the boundaries of the player paddle 
  if(ball.x >= player1.position.x - (5+ball.size/2) && 
  ball.y >= player1.position.y - player1.rectSize/2 
  && ball.y <= player1.position.y + player1.rectSize/2){
    ball.bounceP(); 
  }
  
}