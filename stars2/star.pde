/*
class Ball {
  //instance variables (what does the object needs to know inorder to perform its function)
  
  
  //constructor (give the initial value for the instance variables)
  
  
  //behavior functions (all the things the object can do)
  
}
*/

class Star {
  //instance variables
  float x, y;
  float vx, vy;
  float size;
  color c;
  
  //constructors
  Star() {
    x = random(0,width);
    y = random(0,height/5);
    size = random(1,5);
    vx = 0;
    vy = size;
    c = color(random(0,255),random(0,255),random(0,255));
  }
  
  //behavior functions
  void act() {
    x = x + vx;
    y = y + vy;
  }
  
  void show() {
    fill(c);
    square(x,y,size);      
  }
 
  boolean isDead() { 
    if (y == height) return true; 
    else return false;
  }
}
