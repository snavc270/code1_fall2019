class Ship{
    //data 
    color c; 
    float xPos, yPos; 
    float xSpeed; 
    
    //constructor
    //instead of generating our ships randomly, we can add parameters to 
    //our constructor to position each of our objects 
    //think back to our parameters and arguments for functions
    Ship(float _xPos, float _yPos){
      c = color(random(0,100), random(100,244), 100); 
      xPos = _xPos; //_ denotes that this is a temporary variable until 
      //we pass data through when creating an instance of our class
      yPos = _yPos; 
      xSpeed = random (1, 4); 
    }
    
    void drawShip(){
      noStroke(); 
      fill(c, 100); 
      ellipse(xPos, yPos, 50, 20); 
      ellipse(xPos, yPos-10, 20, 20);  
    }
    
    void move(){
      xPos = xPos + xSpeed; 
      if(xPos > width){
        xPos = -20; 
      }
    }
}