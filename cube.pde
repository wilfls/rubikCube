Circles up, right, left;
Ball balls[];

CircleBalls []circleOfBalls;

Point startAction;
Point endAction;

void setup() {
  size(800, 800);
  up = new Circles(400, 311.4359, 300, 375, 450, "up");
  right = new Circles(480, 450, 300, 375, 450, "right");
  left = new Circles(320, 450, 300, 375, 450, "left");


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
  int count=0;
  for (int i =0; i<9; i++) {
    if (count<3) {
      balls[i] = new Ball(faceA[i].x, faceA[i].y, emerald, 300/2);
    } else if (count <6) {
      balls[i] = new Ball(faceA[i].x, faceA[i].y, emerald, 375/2);
    } else {
      balls[i] = new Ball(faceA[i].x, faceA[i].y, emerald, 450/2);
    }
    balls[i].changeCenter(xLeft, yLeft);
    count++;
  }

  //balls[0].changeCenter(400, 311.4359);
  count=0;
  for (int i =0; i<9; i++) {
    if (count<3) {
      balls[i+9] = new Ball(faceB[i].x, faceB[i].y, ice, 300/2);
    } else if (count <6) {
      balls[i+9] = new Ball(faceB[i].x, faceB[i].y, ice, 375/2);
    } else {
      balls[i+9] = new Ball(faceB[i].x, faceB[i].y, ice, 450/2);
    }
    balls[i+9].changeCenter(xLeft, yLeft);
    count++;
  }

  for (int i =0; i<9; i++) {
    if (count<3) {
      balls[i+18] = new Ball(faceC[i].x, faceC[i].y, orange, 300);
    } else if (count <6) {
      balls[i+18] = new Ball(faceC[i].x, faceC[i].y, orange, 375);
    } else {
      balls[i+18] = new Ball(faceC[i].x, faceC[i].y, orange, 450);
    }
    balls[i+9].changeCenter(xUp, yUp);
    count++;
  }

count =0;
  for (int i =0; i<9; i++) {
    if (count<3) {
      balls[i+27] = new Ball(faceD[i].x, faceD[i].y, magenta, 300);
    } else if (count <6) {
      balls[i+27] = new Ball(faceD[i].x, faceD[i].y, magenta, 375);
    } else {
      balls[i+27] = new Ball(faceD[i].x, faceD[i].y, magenta, 450);
    }
    balls[i+9].changeCenter(xRight, yRight);
    count++;
  }
  
count =0;
  for (int i =0; i<9; i++) {
    if (count<3) {
      balls[i+36] = new Ball(faceE[i].x, faceE[i].y, cyan, 300);
    } else if (count <6) {
      balls[i+36] = new Ball(faceE[i].x, faceE[i].y, cyan, 375);
    } else {
      balls[i+36] = new Ball(faceE[i].x, faceE[i].y, cyan, 450);
    }
    balls[i+9].changeCenter(xUp, yUp);
    count++;
  }

  for (int i =0; i<9; i++) {
    if (count<3) {
      balls[i+45] = new Ball(faceF[i].x, faceF[i].y, gold, 300);
    } else if (count <6) {
      balls[i+45] = new Ball(faceF[i].x, faceF[i].y, gold, 375);
    } else {
      balls[i+45] = new Ball(faceF[i].x, faceF[i].y, gold, 450);
    }
    balls[i+9].changeCenter(xRight, yRight);
    count++;
  }

  circleOfBalls[0] = new CircleBalls(450, "up");
  //emerald
  circleOfBalls[0].includeBall(0, balls[0]);
  circleOfBalls[0].includeBall(1, balls[3]);
  circleOfBalls[0].includeBall(2, balls[6]);
  //magenta
  circleOfBalls[0].includeBall(3, balls[30]);
  circleOfBalls[0].includeBall(4, balls[33]);
  circleOfBalls[0].includeBall(5, balls[35]);
  //cyan
  circleOfBalls[0].includeBall(6, balls[44]);
  circleOfBalls[0].includeBall(7, balls[43]);
  circleOfBalls[0].includeBall(8, balls[41]);
  //orange
  circleOfBalls[0].includeBall(9, balls[26]);
  circleOfBalls[0].includeBall(10, balls[23]);
  circleOfBalls[0].includeBall(11, balls[20]);

  circleOfBalls[1] = new CircleBalls(375, "up");
  //emerald
  circleOfBalls[1].includeBall(0, balls[1]);
  circleOfBalls[1].includeBall(1, balls[4]);
  circleOfBalls[1].includeBall(2, balls[7]);
  //magenta
  circleOfBalls[1].includeBall(3, balls[28]);
  circleOfBalls[1].includeBall(4, balls[31]);
  circleOfBalls[1].includeBall(5, balls[34]);
  //cyan
  circleOfBalls[1].includeBall(6, balls[42]);
  circleOfBalls[1].includeBall(7, balls[40]);
  circleOfBalls[1].includeBall(8, balls[38]);
  //orange
  circleOfBalls[1].includeBall(9, balls[25]);
  circleOfBalls[1].includeBall(10, balls[22]);
  circleOfBalls[1].includeBall(11, balls[19]);

  circleOfBalls[2] = new CircleBalls(300, "up");
  //emerald
  circleOfBalls[2].includeBall(0, balls[2]);
  circleOfBalls[2].includeBall(1, balls[5]);
  circleOfBalls[2].includeBall(2, balls[8]);
  //magenta
  circleOfBalls[2].includeBall(3, balls[27]);
  circleOfBalls[2].includeBall(4, balls[29]);
  circleOfBalls[2].includeBall(5, balls[32]);
  //cyan
  circleOfBalls[2].includeBall(6, balls[39]);
  circleOfBalls[2].includeBall(7, balls[37]);
  circleOfBalls[2].includeBall(8, balls[36]);
  //orange
  circleOfBalls[2].includeBall(9, balls[24]);
  circleOfBalls[2].includeBall(10, balls[21]);
  circleOfBalls[2].includeBall(11, balls[18]);

  circleOfBalls[3] = new CircleBalls(450, "left");
  //emerald
  circleOfBalls[3].includeBall(0, balls[0]);
  circleOfBalls[3].includeBall(1, balls[1]);
  circleOfBalls[3].includeBall(2, balls[2]);
  //ice
  circleOfBalls[3].includeBall(3, balls[9]);
  circleOfBalls[3].includeBall(4, balls[11]);
  circleOfBalls[3].includeBall(5, balls[14]);
  //cyan
  circleOfBalls[3].includeBall(6, balls[36]);
  circleOfBalls[3].includeBall(7, balls[38]);
  circleOfBalls[3].includeBall(8, balls[41]);
  //gold
  circleOfBalls[3].includeBall(9, balls[50]);
  circleOfBalls[3].includeBall(10, balls[52]);
  circleOfBalls[3].includeBall(11, balls[53]);
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

  String position;

  Circles(float x, float y, float i, float m, float e, String p) {
    centerX = x;
    centerY= y;

    internalR = i;
    middleR = m;
    externalR = e;
    position = p;
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
    float r = 0;
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

    if (startAction != null && endAction != null && r!= 0) {
      println("temos uma ação");
      boolean up = false;
      boolean right =false;
      if (endAction.x - startAction.x > 0 ) {
        right = true;
      }
      if (endAction.y- startAction.y < 0 ) {
        up = true;
      }

      int circle=0;

      for (int i=0; i<circleOfBalls.length; i++) {
        println(i);
        if (circleOfBalls[i].r/2 == r && circleOfBalls[i].p == position) {
          circle = i;
          break;
        }
      }

      if (startAction.x > centerX && startAction.y > centerY) {
        if (!right) {
          circleOfBalls[circle].move(true);
          println("horário");
        } else {
          println("anti-horário");
          circleOfBalls[circle].move(false);
        }
      }else if (startAction.x < centerX && startAction.y > centerY) {
        if (!right) {
          circleOfBalls[circle].move(true);
          println("horário");
        } else {
          println("anti-horário");
          circleOfBalls[circle].move(false);
        }
      }else if (startAction.x > centerX && startAction.y < centerY) {
        if (right) {
          circleOfBalls[circle].move(true);
          println("horário");
        } else {
          println("anti-horário");
          circleOfBalls[circle].move(false);
        }
      }else if (startAction.x < centerX && startAction.y < centerY) {
        if (right) {
          circleOfBalls[circle].move(true);
          println("horário");
        } else {
          println("anti-horário");
          circleOfBalls[circle].move(false);
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

  Ball up;
  Ball down;
  Ball left;
  Ball right;

  String horiz; //horizontal
  String vert; // vertical

  float xCircle;
  float yCircle;

  Ball(float xPosition, float yPosition, color col, float r) {
    xCenter = xPosition;
    yCenter= yPosition;

    c = col;

    velocity=0.01;
    angle=0;
    radius = r;
  }

  void display() {
    radius = 0;
    float x = xCenter + cos(angle)*radius;
    float y = yCenter + sin(angle)*radius;

   // float x = xCircle + cos(angle)*radius;
   // float y = yCircle + sin(angle)*radius;


    fill(c, 150);
    circle(x, y, 12);
/*
    angle+=velocity;
 
    if (x >= xCenter-10 &&  x <= xCenter+10 && y >= yCenter-10 && y <= yCenter+10 ) {
      velocity = 0;
    }*/

    //println(angle, xCenter, yCenter);
  }

  void glow() {
    noStroke();
    fill(c, 100);
    circle(xCenter, yCenter, 20);
  }

  void changeCenter(float x, float y) {
    xCircle = x;
    yCircle = y;

    // float xLine= xStart-xCircle;
    //float yLine= yStart-yCircle;

    //float xRelative = xCenter- xCircle;
    //float yRelative = yCenter - yCircle;

    // angle =2*PI- acos(((xLine*xRelative)+(yLine*yRelative))/( sqrt(pow(xLine, 2)+ pow(yLine, 2))*sqrt(pow(xRelative, 2)+pow(yRelative, 2))));

    //   angle = acos((xStart*xCenter+yStart*yCenter)/( sqrt(pow(xStart,2)+ pow(yStart, 2))*sqrt(pow(xCenter,2)+pow(yCenter,2))));
    // println(degrees(angle), xLine, yLine, xRelative, yRelative);
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

class CircleBalls {
  Ball []balls;
  float r;
  String p;

  CircleBalls(float radius, String position) {
    balls = new Ball[12];
    r = radius;
    p = position;
  }

  void includeBall(int i, Ball b) {
    balls[i] = b;
  }

  void move(boolean clock) {
    float tempX ;
    float tempY = balls[0].yCenter;
    if (clock) {
      tempX = balls[11].xCenter;
      tempY = balls[11].yCenter;
      for (int i = 11; i>0; i--) {
        balls[i].xCenter = balls[i-1].xCenter;
        balls[i].yCenter = balls[i-1].yCenter;
      }

      balls[0].xCenter =tempX;
      balls[0].yCenter = tempY;
    } else {
      tempX = balls[0].xCenter;
      tempY = balls[0].yCenter;

      for (int i = 0; i<11; i++) {
        balls[i].xCenter = balls[i+1].xCenter;
        balls[i].yCenter = balls[i+1].yCenter;
      }

      balls[11].xCenter =tempX;
      balls[11].yCenter = tempY;
      ;
    }
  }
}

void mousePressed() {
  startAction = new Point(mouseX, mouseY);
}

void mouseReleased() {
  endAction = new Point(mouseX, mouseY);
}
