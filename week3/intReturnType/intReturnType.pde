//int type function 
int n1, n2; 
int sum_global; 
String additionSentence; 

void setup(){
  size(100, 100); 
  println(addNumbers(4,3)); 
  
  n1 = int(random(0,10)); 
  n2 = int(random(0,10)); 
  
  sum_global = addNumbers(n1, n2);
  
  additionSentence = str(n1) + " + " + str(n2) + " = " + str(sum_global); 
  text(additionSentence, width*.2, height/2); 
  
  returnAString("i am a string", "i am another string");
}

void draw(){
  //why can't we use the other sum here? 

}

int addNumbers(int num1, int num2){
  //this is a local variable 
  int sumLocal = num1 + num2; 
  return sumLocal; 
}

String returnAString(String string1, String string2){
  String combined
  rect(width/2, height/2, 50, 50); 
  return(string1 + "\n" + string2); 
} 