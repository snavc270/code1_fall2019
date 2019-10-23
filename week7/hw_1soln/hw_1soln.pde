String [] myStrings = {"this", "my", "array", "of", "strings"}; 
int r; 
float ran; 
void setup(){
  size(400, 400); 
  r = int(random(0, myStrings.length)); 
  textSize(42); 
  
  ran = random(0, 1); 
  
  if(ran <.25){
    text(myStrings[0], 100, 100); 
  }else{
    text(myStrings[2], 100, 100); 
  }
  println(ran); 
} 
 
void draw(){

  //text ( string, x position, y position); 
  text(myStrings[r], width/2, height/2); 
 
   
}

void mousePressed(){
    r = int(random(0, myStrings.length)); 
}