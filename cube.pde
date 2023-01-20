Circles up, right, left;

void setup() {
  size(800, 800);
  up = new Circles(400, 311.4359, 300, 375, 450);
  right = new Circles(480, 450, 300, 375, 450);
  left = new Circles(320, 450, 300, 375, 450);

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

  //internal left circle position and color
  left.CreateInternalBalls(3.62);
  left.ballsInternal[9].setColor(cyan);
  left.ballsInternal[10].setColor(cyan);
  left.ballsInternal[11].setColor(cyan);

  left.ballsInternal[0].setColor(magenta);
  left.ballsInternal[1].setColor(magenta);
  left.ballsInternal[2].setColor(magenta);

  left.ballsInternal[3].setColor(gold);
  left.ballsInternal[4].setColor(gold);
  left.ballsInternal[5].setColor(gold);

  left.ballsInternal[6].setColor(emerald);
  left.ballsInternal[7].setColor(emerald);
  left.ballsInternal[8].setColor(emerald);

  //middle left circle position and color
  left.CreateMiddleBalls(3.84);
  left.ballsMiddle[9].setColor(cyan);
  left.ballsMiddle[10].setColor(cyan);
  left.ballsMiddle[11].setColor(cyan);

  left.ballsMiddle[0].setColor(magenta);
  left.ballsMiddle[1].setColor(magenta);
  left.ballsMiddle[2].setColor(magenta);

  left.ballsMiddle[3].setColor(gold);
  left.ballsMiddle[4].setColor(gold);
  left.ballsMiddle[5].setColor(gold);

  left.ballsMiddle[6].setColor(emerald);
  left.ballsMiddle[7].setColor(emerald);
  left.ballsMiddle[8].setColor(emerald);

  //external left circle position and color
  left.CreateExternalBalls(4.03);
  left.ballsExternal[9].setColor(cyan);
  left.ballsExternal[10].setColor(cyan);
  left.ballsExternal[11].setColor(cyan);

  left.ballsExternal[0].setColor(magenta);
  left.ballsExternal[1].setColor(magenta);
  left.ballsExternal[2].setColor(magenta);

  left.ballsExternal[3].setColor(gold);
  left.ballsExternal[4].setColor(gold);
  left.ballsExternal[5].setColor(gold);

  left.ballsExternal[6].setColor(emerald);
  left.ballsExternal[7].setColor(emerald);
  left.ballsExternal[8].setColor(emerald);

  right.CreateInternalBalls(1.52);
  right.ballsInternal[0].setColor(cyan);
  right.ballsInternal[1].setColor(cyan);
  right.ballsInternal[2].setColor(cyan);

  right.ballsInternal[9].setColor(orange);
  right.ballsInternal[10].setColor(orange);
  right.ballsInternal[11].setColor(orange);

  right.ballsInternal[6].setColor(gold);
  right.ballsInternal[7].setColor(gold);
  right.ballsInternal[8].setColor(gold);

  right.ballsInternal[3].setColor(ice);
  right.ballsInternal[4].setColor(ice);
  right.ballsInternal[5].setColor(ice);
  right.CreateMiddleBalls(3.6);
  right.CreateExternalBalls(3.6);


  up.CreateInternalBalls(5.73);
  up.CreateMiddleBalls(3.6);
  up.CreateExternalBalls(3.6);
}

void draw() {
  background(50);
  up.display();
  right.display();
  left.display();
  fill(250, 250, 250);
  for (int i = 0; i < faceF.length; i++) {
    circle(faceF[i].x, faceF[i].y, 10);
  }


  fill(0, 0, 250, 150);
}

class Circles {
  float centerX;
  float centerY;

  float internalR;
  float middleR;
  float externalR;

  Ball[] ballsInternal;
  Ball[] ballsMiddle;
  Ball[] ballsExternal;


  Circles(float x, float y, float i, float m, float e) {
    centerX = x;
    centerY= y;

    internalR = i;
    middleR = m;
    externalR = e;
    ballsInternal = new Ball[12];
    ballsMiddle = new Ball[12];
    ballsExternal = new Ball[12];
    for (int j = 0; j < ballsExternal.length; j++) {
      ballsExternal[j] = new Ball(x, y, e/2, (j), 0.006);
    }
  }

  void CreateInternalBalls(float start) {
    ballsInternal[6] = new Ball(centerX, centerY, internalR/2, (start), 0.01);
    ballsInternal[7] = new Ball(centerX, centerY, internalR/2, (start+0.317), 0.01);
    ballsInternal[8] = new Ball(centerX, centerY, internalR/2, (start+0.613), 0.01);
    start+=1.05;
    ballsInternal[9] = new Ball(centerX, centerY, internalR/2, (start), 0.01);
    ballsInternal[10] = new Ball(centerX, centerY, internalR/2, (start+0.317), 0.01);
    ballsInternal[11] = new Ball(centerX, centerY, internalR/2, (start+0.613), 0.01);
    start+=1.567;
    ballsInternal[0] = new Ball(centerX, centerY, internalR/2, (start), 0.01);
    ballsInternal[1] = new Ball(centerX, centerY, internalR/2, (start+0.3), 0.01);
    ballsInternal[2] = new Ball(centerX, centerY, internalR/2, (start+0.617), 0.01);
    start+=1.05;
    ballsInternal[3] = new Ball(centerX, centerY, internalR/2, (start), 0.01);
    ballsInternal[4] = new Ball(centerX, centerY, internalR/2, (start+0.3), 0.01);
    ballsInternal[5] = new Ball(centerX, centerY, internalR/2, (start+0.617), 0.01);
  }

  void CreateMiddleBalls(float start) {
    ballsMiddle[6] = new Ball(centerX, centerY, middleR/2, (start), 0.01);
    ballsMiddle[7] = new Ball(centerX, centerY, middleR/2, (start+0.26), 0.01);
    ballsMiddle[8] = new Ball(centerX, centerY, middleR/2, (start+0.52), 0.01);
    start+=1.04;
    ballsMiddle[9] = new Ball(centerX, centerY, middleR/2, (start), 0.01);
    ballsMiddle[10] = new Ball(centerX, centerY, middleR/2, (start+0.26), 0.01);
    ballsMiddle[11] = new Ball(centerX, centerY, middleR/2, (start+0.52), 0.01);
    start+=1.22;
    ballsMiddle[0] = new Ball(centerX, centerY, middleR/2, (start), 0.01);
    ballsMiddle[1] = new Ball(centerX, centerY, middleR/2, (start+0.26), 0.01);
    ballsMiddle[2] = new Ball(centerX, centerY, middleR/2, (start+0.52), 0.01);
    start+=1.07;
    ballsMiddle[3] = new Ball(centerX, centerY, middleR/2, (start), 0.01);
    ballsMiddle[4] = new Ball(centerX, centerY, middleR/2, (start+0.26), 0.01);
    ballsMiddle[5] = new Ball(centerX, centerY, middleR/2, (start+0.52), 0.01);
  }

  void CreateExternalBalls(float start) {
    ballsExternal[6] = new Ball(centerX, centerY, externalR/2, (start), 0.01);
    ballsExternal[7] = new Ball(centerX, centerY, externalR/2, (start+0.24), 0.01);
    ballsExternal[8] = new Ball(centerX, centerY, externalR/2, (start+0.48), 0.01);
    start+=1.05;
    ballsExternal[9] = new Ball(centerX, centerY, externalR/2, (start), 0.01);
    ballsExternal[10] = new Ball(centerX, centerY, externalR/2, (start+0.24), 0.01);
    ballsExternal[11] = new Ball(centerX, centerY, externalR/2, (start+0.48), 0.01);
    start+=0.88;
    ballsExternal[0] = new Ball(centerX, centerY, externalR/2, (start), 0.01);
    ballsExternal[1] = new Ball(centerX, centerY, externalR/2, (start+0.24), 0.01);
    ballsExternal[2] = new Ball(centerX, centerY, externalR/2, (start+0.48), 0.01);
    start+=1.05;
    ballsExternal[3] = new Ball(centerX, centerY, externalR/2, (start), 0.01);
    ballsExternal[4] = new Ball(centerX, centerY, externalR/2, (start+0.24), 0.01);
    ballsExternal[5] = new Ball(centerX, centerY, externalR/2, (start+0.48), 0.01);
  }


  void ChanceInternalColor(int index, color c) {
    ballsInternal[index].setColor(c);
  }

  void display() {
    fill(color(200, 0));
    stroke(200);
    circle(centerX, centerY, internalR);
    circle(centerX, centerY, middleR);
    circle(centerX, centerY, externalR);
    for (int j = 0; j < ballsInternal.length; j++) {
      ballsInternal[j].display();
    }

    for (int j = 0; j < ballsMiddle.length; j++) {
      ballsMiddle[j].display();
    }

    for (int j = 0; j < ballsExternal.length; j++) {
      ballsExternal[j].display();
    }

    strokeWeight(10);
    fill(color(200, 0));
    stroke(200, 50);

    if (dist(centerX, centerY, mouseX, mouseY) >= (internalR-thick)/2 && dist(centerX, centerY, mouseX, mouseY) <= (internalR+thick)/2) {
      circle(centerX, centerY, internalR);
    } 
    if (dist(centerX, centerY, mouseX, mouseY) >= (middleR-thick)/2 && dist(centerX, centerY, mouseX, mouseY) <= (middleR+thick)/2) {
      circle(centerX, centerY, middleR);
    }
    if (dist(centerX, centerY, mouseX, mouseY) >= (externalR-thick)/2 && dist(centerX, centerY, mouseX, mouseY) <= (externalR+thick)/2) {
      circle(centerX, centerY, externalR);
    }

    strokeWeight(1);
  }
}

class Ball {
  float xCenter;
  float yCenter;
  float radius;
  float angle;
  float velocity;
  color c;

  Ball(float xPosition, float yPosition, float r, float a, float v) {
    xCenter = xPosition;
    yCenter= yPosition;
    radius = r;
    angle = a;
    velocity = v;
    c = color(0, 0, 0);
  }

  void setColor(color col) {
    c = col;
  }
  void display() {
    float x = xCenter + cos(angle)*radius;
    float y = yCenter + sin(angle)*radius;


    fill(c, 150);
    circle(x, y, 12);
    /* angle+=velocity;
     int r = int(random(0,200));
     if (r==10){
     velocity+=0.00007;
     }else if (r==20){
     velocity-=0.00003;
     }*/
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
