float x;
float y;
float easing = 0.05;
int frame = 0;

void setup() {
  size(640, 360); 
  noStroke();  
}

void draw() { 
  background(51);
  println(mouseX,mouseY);
  
  float targetX = mouseX;
  float dx = targetX - x; 
  x += dx * easing; //moving with mouseX with distance
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing; //moving with mouseY with distance
  
if (mouseX > 320) { //position of mouseX
    background(51); 
  } else {
    background(#B4B6B9);
  }
  
if (mousePressed == true) { // If the mouse is pressed
   if (mouseButton == LEFT) { //mouse left click
   background(#486467);
   cursor(HAND); //draw cursor as hand
  } else if (mouseButton == RIGHT) { //mouse right click
   background(#474F64);
   cursor(CROSS); //draw cursor as cross
  }  
  
}

if (frame > 3600) { //if frame is more than 1 min
   noLoop();  
 } else { //otherwise
   fill(#AFA796); 
   ellipse(x/2, y, 80, 80); //first appeared ball
 }  
   frame++; 
 
 
if (keyPressed == false) { // If the key is released //<>//
   if (keyCode == UP) { //press 'up'
   fill(#AA8D8D);
   ellipse(x/1.5, y, 66, 66); //third ball
   fill(#AF8473); 
   ellipse(x, y, 33, 33); //second ball
  } else if (keyCode == DOWN) { //press'down'
   fill(#718093); //color changed
   ellipse(x/2, y, 80, 80);// first appeared ball 
   fill(200); //color changed
   ellipse(x, y, 66, 66); //second ball
   fill(150); //color changed
   ellipse(x/1.5, y, 33, 33); //third ball
   fill(#7A9391); //color changed
   ellipse(x/1.5, y/2, 33, 33); //forth ball
   fill(#6E7683); //color changed
   ellipse(x/1.5, y/1.5, 66, 66); //5th ball
   
   float r = random (255); //color changed randomly
   fill(r);
   ellipse(x/2, y/1.5, 66, 66); //5th ball
  }
 }
}