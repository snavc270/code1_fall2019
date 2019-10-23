class Asteroid {
    float x, y; 
    float velocity; 
    float w; 
    
    //constructor
    
    Asteroid (float x, float y, float velocity) {
      this.x= x;
      this.y= y; 
      this.velocity= velocity;
      
      w= random(30,100); 
    }    
    //methods
    void update() {
      y+= velocity; 
    }
    void display(){
      pushMatrix(); 
      translate(x, y); 
      noFill(); 
      stroke(200,255,255,180); 
      ellipse(0, 0,w,w);
      popMatrix();
     
     
    }
    
   void shotCollision(Shot shot, Asteroid asteroid, int asteroidIndex, int shotIndex){ 
      if (dist(x,y, shot.x, shot.y)< w/2 +2) {
         shots.remove(shotIndex);
         asteroids.remove(asteroidIndex); 
         score++;  
      }
   }
        
   void playerCollision( Player ship, Asteroid asteroid) {
     if (dist(x,y, ship.x, ship.y)< w/2 +5){
       fill(255, 255, 255, 180);
       ellipse(ship.x, ship.y, 180, 180); 
       ship.alive= false;
     }
     
   }   
    
  
}
