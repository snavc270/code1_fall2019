
ArrayList<Ship> myShips = new ArrayList<Ship>(); // creating an array list 
//that will store objects that are of the type ship 

Player myPlayer; //naming the instance from our template
int score = 0; 
void setup(){
  size(800, 600); 

  myPlayer = new Player(); 
  
  for(int i =0; i<5; i++){
    for(int j = 0; j<5; j++){
    myShips.add(new Ship(i*100+100, j*100+100)); //using nested for loops to position our objects
    }  
  }
}

void draw(){
  background(255); 
  
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
  
  if(frameCount % 30 == 0){
    myShips.add(new Ship(0, random(0,height))); //new ships are only spawned 
    //at 0 and a random height 
  }
  
  textSize(24); 
  text("SCORE:" + score, 25, 25); 
  //println(myShips[0].xPos); 
}