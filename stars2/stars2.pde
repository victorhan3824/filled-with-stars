//Star[] stars;
ArrayList <Star> stars;

void setup() {
  fullScreen();
  
  //initialize the star array (tells the length of the array)
  stars = new ArrayList<Star>();
}

void draw() {
  background(0);
  for (int i=0; i < 4; i++) stars.add(new Star());
    
  //draw the stars
  int i = 0;
  while (i < stars.size()) {
    Star s = stars.get(i);
    s.act();
    s.show();
    
    //removing stars and others
    if (s.isDead()) stars.remove(i);
    else i++;
  }
}
 
