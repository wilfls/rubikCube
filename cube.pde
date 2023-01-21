Circles up, right, left;
Ball balls[];

CircleBalls []circleOfBalls;

Point startAction;
Point endAction;

void setup() {
  size(800, 800);
  up = new Circles(400, 311.4359, 300, 375, 450);
  right = new Circles(480, 450, 300, 375, 450);
  left = new Circles(320, 450, 300, 375, 450);


  circleOfBalls = new CircleBalls[9];
  faceA[0] = faceA_0;
  faceA[1] = faceA_1;
  faceA[2] = faceA_2;
  faceA[3] = faceA_3;
  faceA[4] = faceA_4;
  faceA[5] = faceA_5;
  faceA[6] = faceA_6;
  faceA[7] = faceA_7;
  faceA[8] = faceA_8;

  faceB[0] = faceB_0;
  faceB[1] = faceB_1;
  faceB[2] = faceB_2;
  faceB[3] = faceB_3;
  faceB[4] = faceB_4;
  faceB[5] = faceB_5;
  faceB[6] = faceB_6;
  faceB[7] = faceB_7;
  faceB[8] = faceB_8;

  faceC[0] = faceC_0;
  faceC[1] = faceC_1;
  faceC[2] = faceC_2;
  faceC[3] = faceC_3;
  faceC[4] = faceC_4;
  faceC[5] = faceC_5;
  faceC[6] = faceC_6;
  faceC[7] = faceC_7;
  faceC[8] = faceC_8;

  faceD[0] = faceD_0;
  faceD[1] = faceD_1;
  faceD[2] = faceD_2;
  faceD[3] = faceD_3;
  faceD[4] = faceD_4;
  faceD[5] = faceD_5;
  faceD[6] = faceD_6;
  faceD[7] = faceD_7;
  faceD[8] = faceD_8;

  faceE[0] = faceE_0;
  faceE[1] = faceE_1;
  faceE[2] = faceE_2;
  faceE[3] = faceE_3;
  faceE[4] = faceE_4;
  faceE[5] = faceE_5;
  faceE[6] = faceE_6;
  faceE[7] = faceE_7;
  faceE[8] = faceE_8;

  faceF[0] = faceF_0;
  faceF[1] = faceF_1;
  faceF[2] = faceF_2;
  faceF[3] = faceF_3;
  faceF[4] = faceF_4;
  faceF[5] = faceF_5;
  faceF[6] = faceF_6;
  faceF[7] = faceF_7;
  faceF[8] = faceF_8;

  balls = new Ball[54];
  for (int i =0; i<9; i++) {
    balls[i] = new Ball(faceA[i].x, faceA[i].y, emerald);
  }

  for (int i =0; i<9; i++) {
    balls[i+9] = new Ball(faceB[i].x, faceB[i].y, ice);
  }

  for (int i =0; i<9; i++) {
    balls[i+18] = new Ball(faceC[i].x, faceC[i].y, orange);
  }

  for (int i =0; i<9; i++) {
    balls[i+27] = new Ball(faceD[i].x, faceD[i].y, magenta);
  }

  for (int i =0; i<9; i++) {
    balls[i+36] = new Ball(faceE[i].x, faceE[i].y, cyan);
  }

  for (int i =0; i<9; i++) {
    balls[i+45] = new Ball(faceF[i].x, faceF[i].y, gold);
  }
  
  circleOfBalls[0] = new CircleBalls();
  circleOfBalls[0].includeBall(0, balls[0]);
  circleOfBalls[0].includeBall(1, balls[1]);
  circleOfBalls[0].includeBall(2, balls[2]);
  //circleOfBalls[0].includeBall(3, balls[3]);
  circleOfBalls[0].includeBall(3, balls[27]);
  circleOfBalls[0].includeBall(4, balls[28]);
  circleOfBalls[0].includeBall(5, balls[29]);
  circleOfBalls[0].includeBall(6, balls[36]);
  circleOfBalls[0].includeBall(7, balls[37]);
  circleOfBalls[0].includeBall(8, balls[38]);
  circleOfBalls[0].includeBall(9, balls[18]);
  circleOfBalls[0].includeBall(10, balls[19]);
  circleOfBalls[0].includeBall(11, balls[20]);
  
  //circleOfBalls[0].setBall(0, ball[0];
}

void draw() {
  background(50);
  up.display();
  right.display();
  left.display();
  for (int i = 0; i< balls.length; i++) {
    balls[i].display();
  }
}

class Circles {
  float centerX;
  float centerY;

  float internalR;
  float middleR;
  float externalR;

  Circles(float x, float y, float i, float m, float e) {
    centerX = x;
    centerY= y;

    internalR = i;
    middleR = m;
    externalR = e;
  }

  void display() {
    fill(color(200, 0));
    stroke(200);
    circle(centerX, centerY, internalR);
    circle(centerX, centerY, middleR);
    circle(centerX, centerY, externalR);

    strokeWeight(10);
    fill(color(200, 0));
    stroke(200, 50);
    float r;
    if (dist(centerX, centerY, mouseX, mouseY) >= (internalR-thick)/2 && dist(centerX, centerY, mouseX, mouseY) <= (internalR+thick)/2) {
      circle(centerX, centerY, internalR);
      ballLight(centerX, centerY, internalR/2);
      r = internalR/2;
    }
    if (dist(centerX, centerY, mouseX, mouseY) >= (middleR-thick)/2 && dist(centerX, centerY, mouseX, mouseY) <= (middleR+thick)/2) {
      circle(centerX, centerY, middleR);
      ballLight(centerX, centerY, middleR/2);
      r = middleR/2;
    }
    if (dist(centerX, centerY, mouseX, mouseY) >= (externalR-thick)/2 && dist(centerX, centerY, mouseX, mouseY) <= (externalR+thick)/2) {
      circle(centerX, centerY, externalR);
      ballLight(centerX, centerY, externalR/2);
      r = externalR/2;
      //this.drawBottom(mouseX, mouseY, externalR/2);
    }
    strokeWeight(1);
    
    if (startAction != null && endAction != null){
      println("temos uma ação");
      boolean up = false;
      boolean right =false;
      if (endAction.x - startAction.x > 0 ){
        right = true;
      }
      if (endAction.y- startAction.y < 0 ){
        up = true;
      }
      
      if (startAction.x > centerX && startAction.y > centerY) {
        if (!right){
          circleOfBalls[0].move(true);
        }
      }
      startAction = null;
      endAction = null;
    }
  }

  void ballLight(float x, float y, float r) {
    for (int i = 0; i< balls.length; i++) {
      if (dist(x, y, balls[i].xCenter, balls[i].yCenter) >= r-1 && dist(x, y, balls[i].xCenter, balls[i].yCenter) <= r+1) {
        balls[i].glow();
      }
    }
  }
/*  void drawBottom(float x, float y, float r) {
    float angle, a, b;
    a = x-centerX;
    b= y-centerY;
    if (a ==0 ) {
      angle = 0;
    } else if (b==0) {
      angle = HALF_PI;
    } else {
      angle = acos((a*a + r*r- b*b)/ (2*a*r));
    }
    
    if (b<0){
     // angle+=PI;
    }
    if (a<0){
     // angle+=HALF_PI;
    }
    println(a, b, r, degrees(angle));
    arc(x, y, 30, 20, angle, PI);
    //  rotate(-angle);
  }*/
}

class Ball {
  float xCenter;
  float yCenter;
  float radius;
  float angle;
  float velocity;
  color c;

  Ball(float xPosition, float yPosition, color col) {
    xCenter = xPosition;
    yCenter= yPosition;

    c = col;
  }

  void setColor(color col) {
    c = col;
  }
  void display() {
    float x = xCenter + cos(angle)*radius;
    float y = yCenter + sin(angle)*radius;


    fill(c, 150);
    circle(x, y, 12);
  }

  void glow() {
    noStroke();
    fill(c, 100);
    circle(xCenter, yCenter, 20);
  }
}

class Point {
  float x;
  float y;

  Point(float xvar, float yvar) {
    x= xvar;
    y= yvar;
  }
}

class Button {
  float centerX;
  float centerY;
  float angle;

  void Button(float x, float y, float a) {
    centerX = x;
    centerY = y;
    angle = a;
  }

  void display() {
    arc(centerX, centerY, 30, 20, angle, PI+angle);
  }

  void drawBottom(float x, float y) {
    PVector center = new PVector(centerX, centerY);
    PVector mouse = new PVector(x, y);
    float angle = PVector.angleBetween(center, mouse);
    //  rotate(angle);
    ellipse(x, y, 30, 10);
    //  rotate(-angle);
  }
}

class CircleBalls{
   Ball []balls;
   
   CircleBalls(){
     balls = new Ball[12];
   }
   
   void includeBall(int i, Ball b){
     balls[i] = b;
   }
   
   void move(boolean clock){
     float tempX = balls[0].xCenter;
     float tempY = balls[0].yCenter;
     
     for (int i = 0; i<8; i++){
       balls[i].xCenter = balls[i+1].xCenter;
       balls[i].yCenter = balls[i+1].yCenter;
     }
     
     balls[8].xCenter =tempX;
     balls[8].yCenter = tempY;
   }
}

void mousePressed(){
  startAction = new Point(mouseX, mouseY);
}

void mouseReleased(){
  endAction = new Point(mouseX, mouseY);
}
