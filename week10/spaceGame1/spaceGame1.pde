Ship myShip; 
ArrayList<Ship> myShips = new ArrayList<Ship>(); // creating an array list 
//that will store objects that are of the type ship 

Player myPlayer; //naming the instance from our template
int score = 0; 
void setup(){
  size(800, 600); 
  myShip = new Ship();
  myPlayer = new Player(); 
  
  for(int i =0; i<20; i++){
    myShips.add(new Ship()); //initially adding 20 ships to our arraylist
  }
}

void draw(){
  background(255); 
  myShip.drawShip(); 
  myShip.move(); 
  
  myPlayer.drawPlayer(); 
  myPlayer.move(); 
  myPlayer.checkBoundaries(); 
  
  for(int i = 0; i<myShips.size(); i++){ //.size accesses the dynamic size of our array
    Ship s = myShips.get(i); //creating temporary placeholders for our ships
    //because the index of an individual ship is constantly changing 
    //.get returns the element's current position in the arrayList
    
    s.drawShip(); 
    s.move(); 
    
    //if our player position is within the radius
    //of our enemy ship position 
    if(dist(myPlayer.xPos, myPlayer.yPos, s.xPos, s.yPos)<25){
      println("collision detected: " + i); 
      myShips.remove(i); //remove the ship that is colliding with our player
      score ++; 
    }
  }
  
  textSize(24); 
  text("SCORE:" + score, 25, 25); 
  //println(myShips[0].xPos); 
}