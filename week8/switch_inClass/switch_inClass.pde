int screen = 0; 

void setup(){
  size(600, 600); 
}

void draw(){
  switch(screen){
    case 0: 
      startScreen(); 
    break; 
    case 1: 
      gameScreen();
      //if(lives < 0){ screen = 2; }
    break; 
    case 2: 
      gameOver(); 
    break; 
  }
}

void mousePressed(){
  ////first button 
  //if(screen == 0){
  //  if(dist(mouseX, mouseY, width/2, height/2)<25){
  //    println("button clicked"); 
  //    screen = 1; 
  //  }
  //}
  ////second button 
  //if(screen == 1){
  //  if(dist(mouseX, mouseY, 100, 100)< 25){
  //     screen = 2; 
  //  }
  //}  
}

void keyPressed(){
  screen ++; 
}
void startScreen(){
  background(0); 
  textSize(24); 
  fill(255); 
  text("welcome to my game, press green button to start", 25, 100, width-25, 100); 
  
  fill(0, 255, 0); 
  ellipse(width/2, height/2, 50, 50); 
}

void gameScreen(){
  background(255,0,0); 
  fill(0, 255, 0); 
  ellipse(100, 100, 50, 50); 
}

 void gameOver(){
   background(0, 0, 255); 
   text("GAME OVER", 10, 100); 
 }

//end screen(); 