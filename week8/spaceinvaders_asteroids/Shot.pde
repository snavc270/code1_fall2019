class Shot{
  
  float x, y; 
  float velocity;
  int lifespan, runtime;
 
  Shot(float x, float y, float velocity) {
    this.x= x;
    this.y= y;
    this.velocity= velocity; 
    lifespan= 100; 
    runtime= 0; 
  }
  
  void display(){
    pushMatrix(); 
    translate(x,y);
    fill(200, 255, 255); 
    ellipse(0,0,3,3);  
    popMatrix(); 
  }
  
  void update(){
    
    y-=velocity; 
  }
 
   void dissipate(int index){
   runtime++; 
   if(runtime > lifespan){
     shots.remove(index); 
   }
   } 
}
