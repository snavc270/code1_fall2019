class Player {
  float x, y; 
  PVector velocity; 
  float maxVelocity; 
  boolean alive; 
  float shotTimer, shotRate; 
  
  Player(float _x, float _y) {
    _x= x; 
    _y= y; 
  }
  
  
  
  void display() {
  alive= true; 
  maxVelocity = 10; 
  shotRate = 15; 
  shotTimer= 0; 
  
    if(alive==true){
      pushMatrix(); 
      translate(x,y); 
      noFill(); 
      stroke( 200, 255, 255, 180); 
      triangle(0,-12,8,8,-8,8); 
      popMatrix(); 
    }
  }
 void update() {
   if(alive == true){
     //wrap around the screen on opposite side
     if (x<0) {
      x=width;
     }
     if (x>width){
       x=0;
     }
     x += velocity.x; 
    }
   
  //set velocity based on key pressed direction
  if (keyLeft == true) {
    velocity.x -= 0.5;   
  } else if (keyRight== true) {
    velocity.x +=0.5; 
  } else {
    velocity.x-= velocity.x*0.1; 
  }
  if (shotTimer>0){
    shotTimer--;
  }else{
    shotTimer=0;
  }
  if (keyShoot== true){
    if(shotTimer==0){
      shoot(); 
      shotTimer= shotRate; 
      }
    }
 }
 
 void shoot(){
   if (alive==true){
     soundShoot.play();
     soundShoot.rewind();
     shots.add(new Shot(x,y,10)); 
   }
 }
 
}
