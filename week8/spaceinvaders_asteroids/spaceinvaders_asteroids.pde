import ddf.minim.*;
Minim minim;
AudioPlayer soundShoot; 

Player ship; 
ArrayList<Asteroid> asteroids; 
ArrayList<Shot> shots; 

boolean keyLeft = false;
boolean keyRight= false; 
boolean keyShoot= false; 
int score; 

void setup() {
  size(600, 600); 
  frameRate(30); 
  background(10); 
  noCursor(); 
  minim= new Minim(this); 
  soundShoot= minim.loadFile("Laser_Shoot.wav"); 
  ship= new Player(width/2, height*0.9);
  asteroids= new ArrayList<Asteroid>();
  shots= new ArrayList<Shot>(); 
  restart(); 
 }

void draw() {
  rectMode(CORNER);
  noStroke(); 
  fill(10,80); 
  rect(0,0,width, height); 
  
  fill(255); 
  textAlign(CENTER); 
  textSize(30);
  String scoreText= "SCORE: " + score;
  text(scoreText, width/2, height*.10); 
  
  ship.display(); 
  ship.update(); 
  
  int maxAsteroids= score+3; 
  int newAsteroidTiming = 30-score;
  float asteroidSpeed= random(score*1.25, score*0.25+4); 
  
  if(asteroids.size()< maxAsteroids && frameCount % newAsteroidTiming ==0){
    asteroids.add(new Asteroid(random(width), 0, asteroidSpeed)); 
  }
  
  for(int i= 0; i<shots.size(); i++){
    Shot tempShot= shots.get(i); 
    tempShot.update(); 
    tempShot.display(); 
    tempShot.dissipate(i); 
  }  
  for(int i=0; i < asteroids.size(); i++){
    Asteroid tempAst = asteroids.get(i); 
    tempAst.update(); 
    tempAst.display(); 
    if(tempAst.y>height && tempAst.x< width*0.5){
      asteroids.remove(i); 
    } 
    for(int j= 0; j<shots.size(); j++){
        Shot tempShot= shots.get(j); 
        tempAst.shotCollision(tempShot, tempAst,i,j);
    }
    if(ship.alive ==true) {
      tempAst.playerCollision(ship, tempAst);
    }
    if (ship.alive==false){
      restart(); 
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      keyLeft= true; 
    }
    if (keyCode == RIGHT) {
      keyRight= true; 
    }
  }
  if (key== ' '){
    keyShoot= true; 
  }
}

void keyReleased() {
 if (key == CODED) {
    if (keyCode == LEFT) {
      keyLeft= false; 
    }
    if (keyCode == RIGHT) {
      keyRight= false; 
    }
  }
   if (key== ' '){
    keyShoot= false; 
  }
}

void restart() {
   asteroids.clear(); 
   asteroids.add(new Asteroid(random(width), 0, random(2,6))); 
   asteroids.add(new Asteroid(random(width), 0, random(2,6)));
   asteroids.add(new Asteroid(random(width), 0, random(2,6)));
   ship.x= width/2;
   ship.y= height*.9; 
   ship.velocity = new PVector(0,0); 
   ship.alive= true; 
}

