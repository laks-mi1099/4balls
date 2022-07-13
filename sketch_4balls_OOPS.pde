Ball ball1, ball2, ball3, ball4;
final int WIDTH = 750;
final int HEIGHT = 750;
final int radius = 20;
void settings() {
  size(WIDTH,HEIGHT);
}

void setup(){
  //Sets the value of yposition and interval according to problem statement for each ball.
  ball1 = new Ball(HEIGHT/5,1);
  ball2 = new Ball(2*HEIGHT/5,2);
  ball3 = new Ball(3*HEIGHT/5,3);
  ball4 = new Ball(4*HEIGHT/5,4);
  
}

void draw() {
  //Call the function
  ball1.rollball();
  ball2.rollball();
  ball3.rollball();
  ball4.rollball();
}

class Ball{
  int yposition;
  int xposition = 0;
  int interval;
  
  //Constructor to assign the yposition of the ball and the interval. initial xposition is same for all objects.
  Ball(int y, int i){
    yposition = y;
    interval = i;
  }
  
  //Executes the ellipse() function and increments the value of xposition according to interval.
  void rollball(){
    ellipse(xposition, yposition, radius, radius);
    xposition = xposition + interval;
  }  
}
