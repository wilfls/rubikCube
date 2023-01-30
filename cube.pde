Circles up, right, left;
Ball balls[];

CircleBalls []circleOfBalls;

Point startAction;
Point endAction;

float angle;
float radius;

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
      balls[i] = new Ball(faceA[i].x, faceA[i].y, emerald, 300);
    } else if (count <6) {
      balls[i] = new Ball(faceA[i].x, faceA[i].y, emerald, 375);
    } else {
      balls[i] = new Ball(faceA[i].x, faceA[i].y, emerald, 450);
    }
    balls[i].changeCenter(xLeft, yLeft);
    count++;
  }

  count=0;
  for (int i =0; i<9; i++) {
    if (count<3) {
      balls[i+9] = new Ball(faceB[i].x, faceB[i].y, ice, 300);
    } else if (count <6) {
      balls[i+9] = new Ball(faceB[i].x, faceB[i].y, ice, 375);
    } else {
      balls[i+9] = new Ball(faceB[i].x, faceB[i].y, ice, 450);
    }
    balls[i+9].changeCenter(xLeft, yLeft);
    count++;
  }

  count=0;
  for (int i =0; i<9; i++) {
    if (count<3) {
      balls[i+18] = new Ball(faceC[i].x, faceC[i].y, orange, 300);
    } else if (count <6) {
      balls[i+18] = new Ball(faceC[i].x, faceC[i].y, orange, 375);
    } else {
      balls[i+18] = new Ball(faceC[i].x, faceC[i].y, orange, 450);
    }
    balls[i+18].changeCenter(xUp, yUp);
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
    balls[i+27].changeCenter(xRight, yRight);
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
    balls[i+36].changeCenter(xUp, yUp);
    count++;
  }

  count=0;
  for (int i =0; i<9; i++) {
    if (count<3) {
      balls[i+45] = new Ball(faceF[i].x, faceF[i].y, gold, 300);
    } else if (count <6) {
      balls[i+45] = new Ball(faceF[i].x, faceF[i].y, gold, 375);
    } else {
      balls[i+45] = new Ball(faceF[i].x, faceF[i].y, gold, 450);
    }
    balls[i+45].changeCenter(xRight, yRight);
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

  balls[0].belongToCircle[0]=0;
  balls[3].belongToCircle[0]=0;
  balls[6].belongToCircle[0]=0;
  balls[30].belongToCircle[0]=0;
  balls[33].belongToCircle[0]=0;
  balls[35].belongToCircle[0]=0;
  balls[44].belongToCircle[0]=0;
  balls[43].belongToCircle[0]=0;
  balls[41].belongToCircle[0]=0;
  balls[26].belongToCircle[0]=0;
  balls[23].belongToCircle[0]=0;
  balls[20].belongToCircle[0]=0;

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

  balls[1].belongToCircle[0]=1;
  balls[4].belongToCircle[0]=1;
  balls[7].belongToCircle[0]=1;
  balls[28].belongToCircle[0]=1;
  balls[31].belongToCircle[0]=1;
  balls[34].belongToCircle[0]=1;
  balls[42].belongToCircle[0]=1;
  balls[40].belongToCircle[0]=1;
  balls[38].belongToCircle[0]=1;
  balls[25].belongToCircle[0]=1;
  balls[22].belongToCircle[0]=1;
  balls[19].belongToCircle[0]=1;

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

  balls[2].belongToCircle[0]=2;
  balls[5].belongToCircle[0]=2;
  balls[8].belongToCircle[0]=2;
  balls[27].belongToCircle[0]=2;
  balls[29].belongToCircle[0]=2;
  balls[32].belongToCircle[0]=2;
  balls[39].belongToCircle[0]=2;
  balls[37].belongToCircle[0]=2;
  balls[36].belongToCircle[0]=2;
  balls[24].belongToCircle[0]=2;
  balls[21].belongToCircle[0]=2;
  balls[18].belongToCircle[0]=2;

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
  //gold 45
  circleOfBalls[3].includeBall(9, balls[50]);
  circleOfBalls[3].includeBall(10, balls[52]);
  circleOfBalls[3].includeBall(11, balls[53]);

  balls[0].belongToCircle[1]=3;
  balls[1].belongToCircle[1]=3;
  balls[2].belongToCircle[1]=3;
  balls[9].belongToCircle[0]=3;
  balls[11].belongToCircle[0]=3;
  balls[14].belongToCircle[0]=3;
  balls[36].belongToCircle[1]=3;
  balls[38].belongToCircle[1]=3;
  balls[41].belongToCircle[1]=3;
  balls[50].belongToCircle[0]=3;
  balls[52].belongToCircle[0]=3;
  balls[53].belongToCircle[0]=3;

  circleOfBalls[4] = new CircleBalls(375, "left");
  //emerald
  circleOfBalls[4].includeBall(0, balls[3]);
  circleOfBalls[4].includeBall(1, balls[4]);
  circleOfBalls[4].includeBall(2, balls[5]);
  //ice
  circleOfBalls[4].includeBall(3, balls[10]);
  circleOfBalls[4].includeBall(4, balls[13]);
  circleOfBalls[4].includeBall(5, balls[16]);
  //cyan 36
  circleOfBalls[4].includeBall(6, balls[37]);
  circleOfBalls[4].includeBall(7, balls[40]);
  circleOfBalls[4].includeBall(8, balls[43]);
  //gold
  circleOfBalls[4].includeBall(9, balls[47]);
  circleOfBalls[4].includeBall(10, balls[49]);
  circleOfBalls[4].includeBall(11, balls[51]);

  balls[3].belongToCircle[1]=4;
  balls[4].belongToCircle[1]=4;
  balls[5].belongToCircle[1]=4;
  balls[10].belongToCircle[0]=4;
  balls[13].belongToCircle[0]=4;
  balls[16].belongToCircle[0]=4;
  balls[37].belongToCircle[1]=4;
  balls[40].belongToCircle[1]=4;
  balls[43].belongToCircle[1]=4;
  balls[47].belongToCircle[0]=4;
  balls[49].belongToCircle[0]=4;
  balls[51].belongToCircle[0]=4;

  circleOfBalls[5] = new CircleBalls(300, "left");
  //emerald
  circleOfBalls[5].includeBall(0, balls[6]);
  circleOfBalls[5].includeBall(1, balls[7]);
  circleOfBalls[5].includeBall(2, balls[8]);
  //ice
  circleOfBalls[5].includeBall(3, balls[12]);
  circleOfBalls[5].includeBall(4, balls[15]);
  circleOfBalls[5].includeBall(5, balls[17]);
  //cyan 36
  circleOfBalls[5].includeBall(6, balls[39]);
  circleOfBalls[5].includeBall(7, balls[42]);
  circleOfBalls[5].includeBall(8, balls[44]);
  //gold
  circleOfBalls[5].includeBall(9, balls[45]);
  circleOfBalls[5].includeBall(10, balls[46]);
  circleOfBalls[5].includeBall(11, balls[48]);

  balls[6].belongToCircle[1]=5;
  balls[7].belongToCircle[1]=5;
  balls[8].belongToCircle[1]=5;
  balls[12].belongToCircle[0]=5;
  balls[15].belongToCircle[0]=5;
  balls[17].belongToCircle[0]=5;
  balls[39].belongToCircle[1]=5;
  balls[42].belongToCircle[1]=5;
  balls[44].belongToCircle[1]=5;
  balls[45].belongToCircle[0]=5;
  balls[46].belongToCircle[0]=5;
  balls[48].belongToCircle[0]=5;

  circleOfBalls[6] = new CircleBalls(450, "right");
  //ice 9
  circleOfBalls[6].includeBall(0, balls[12]);
  circleOfBalls[6].includeBall(1, balls[10]);
  circleOfBalls[6].includeBall(2, balls[9]);
  //orange 18
  circleOfBalls[6].includeBall(3, balls[18]);
  circleOfBalls[6].includeBall(4, balls[19]);
  circleOfBalls[6].includeBall(5, balls[20]);
  //gold 45
  circleOfBalls[6].includeBall(6, balls[53]);
  circleOfBalls[6].includeBall(7, balls[51]);
  circleOfBalls[6].includeBall(8, balls[48]);
  //magenta 27
  circleOfBalls[6].includeBall(9, balls[30]);
  circleOfBalls[6].includeBall(10, balls[28]);
  circleOfBalls[6].includeBall(11, balls[27]);

  circleOfBalls[7] = new CircleBalls(375, "right");
  //ice 9
  circleOfBalls[7].includeBall(0, balls[15]);
  circleOfBalls[7].includeBall(1, balls[13]);
  circleOfBalls[7].includeBall(2, balls[11]);
  //orange 18
  circleOfBalls[7].includeBall(3, balls[21]);
  circleOfBalls[7].includeBall(4, balls[22]);
  circleOfBalls[7].includeBall(5, balls[23]);
  //gold 45
  circleOfBalls[7].includeBall(6, balls[52]);
  circleOfBalls[7].includeBall(7, balls[49]);
  circleOfBalls[7].includeBall(8, balls[46]);
  //magenta 27
  circleOfBalls[7].includeBall(9, balls[33]);
  circleOfBalls[7].includeBall(10, balls[31]);
  circleOfBalls[7].includeBall(11, balls[29]);

  circleOfBalls[8] = new CircleBalls(300, "right");
  //ice 9
  circleOfBalls[8].includeBall(0, balls[17]);
  circleOfBalls[8].includeBall(1, balls[16]);
  circleOfBalls[8].includeBall(2, balls[14]);
  //orange 18
  circleOfBalls[8].includeBall(3, balls[24]);
  circleOfBalls[8].includeBall(4, balls[25]);
  circleOfBalls[8].includeBall(5, balls[26]);
  //gold 45
  circleOfBalls[8].includeBall(6, balls[50]);
  circleOfBalls[8].includeBall(7, balls[47]);
  circleOfBalls[8].includeBall(8, balls[45]);
  //magenta 27
  circleOfBalls[8].includeBall(9, balls[35]);
  circleOfBalls[8].includeBall(10, balls[34]);
  circleOfBalls[8].includeBall(11, balls[32]);
  radius = 300/2;
}

void draw() {
  background(50);
  up.display();
  right.display();
  left.display();
  for (int i = 0; i< balls.length; i++) {
    balls[i].display();
  }

  fill(color(250, 250, 150), 100);
  circle(xUp, yUp, 10);

  circle(xUp+radius, yUp, 10);
  line(xUp, yUp, xUp+radius, yUp);
  
  angle = Angle(faceC_0.x, faceC_0.y, xUp, yUp, 300/2);

  float x = xUp + cos(angle)*radius;
  float y = yUp + sin(angle)*radius;
  circle(x, y, 10);
  line(xUp, yUp, x, y);

  println(degrees(angle));
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
      } else if (startAction.x < centerX && startAction.y > centerY) {
        if (!right) {
          circleOfBalls[circle].move(true);
          println("horário");
        } else {
          println("anti-horário");
          circleOfBalls[circle].move(false);
        }
      } else if (startAction.x > centerX && startAction.y < centerY) {
        if (right) {
          circleOfBalls[circle].move(true);
          println("horário");
        } else {
          println("anti-horário");
          circleOfBalls[circle].move(false);
        }
      } else if (startAction.x < centerX && startAction.y < centerY) {
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



class Point {
  float x;
  float y;

  Point(float xvar, float yvar) {
    x= xvar;
    y= yvar;
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
    float tempX;
    float tempY;
    if (clock) {
      tempX = balls[11].xCenter;
      tempY = balls[11].yCenter;
      for (int i = 11; i>0; i--) {
        balls[i].xCenter = balls[i-1].xCenter;
        balls[i].yCenter = balls[i-1].yCenter;
      }

      balls[0].xCenter = tempX;
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

float Angle(float x, float y, float xCenter, float yCenter, float r){
  float angle;
  // beta = acos( ( a^2 + b^2 - c^2 ) / (2ab) )
  
  float c;
  c = dist(x, y, xCenter+r, yCenter);
 // println(c);
  
  angle = acos((pow(r,2)+pow(r,2)- pow(c, 2))/ (2*r*r) );
  
  if (y<yCenter){
    angle = 2*PI- angle;
  
  }
  return angle;
}
