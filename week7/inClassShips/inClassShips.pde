Ship myShip; 
Ship [] myShips = new Ship[20]; 
void setup(){
  size(800, 600); 
  myShip = new Ship();
 
  for(int i =0; i<20; i++){
    myShips[i] = new Ship(); 
  }
}

void draw(){
  background(255); 
  myShip.drawShip(); 
  myShip.move(); 
  
  for(int i = 0; i<20; i++){
    myShips[i].drawShip(); 
    myShips[i].move(); 
  }
}