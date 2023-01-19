Circles up, right, left;


void setup() {
  size(800, 800);
  up = new Circles(400, 311.4359, 300, 375, 450);
  right = new Circles(480, 450, 300, 375, 450);
  left = new Circles(320, 450, 300, 375, 450);

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
  //  circle(400, 450, 10);

  fill(0, 0, 250, 150);
  // circle(400, 290, 10);
  //circle(400, 330, 10);
  // circle(400, 373, 10);
  // circle(352, 315, 10);
  // circle(447, 315, 10);
  // circle(359, 357, 10);
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
    /*for (int j = 0; j < ballsInternal.length; j++) {
     ballsInternal[j] = new Ball(x, y, i/2, (0+0.1*j), 0.01, color(0,0, 250 ));
     }*/
    /*  ballsInternal[0] = new Ball(x, y, i/2, (-0.045), 0.01, color(0, 0, 250 ));
     ballsInternal[1] = new Ball(x, y, i/2, (0.25), 0.01, color(0, 0, 250 ));
     ballsInternal[2] = new Ball(x, y, i/2, (0.56), 0.01, color(0, 0, 250 ));
     ballsInternal[3] = new Ball(x, y, i/2, (1), 0.01, color(0, 0, 250 ));
     ballsInternal[4] = new Ball(x, y, i/2, (1.29), 0.01, color(0, 0, 250 ));
     ballsInternal[5] = new Ball(x, y, i/2, (1.63), 0.01, color(0, 0, 250 ));
     ballsInternal[6] = new Ball(x, y, i/2, (3.62), 0.01, color(0, 0, 250 ));
     ballsInternal[7] = new Ball(x, y, i/2, (3.93), 0.01, color(0, 0, 250 ));
     ballsInternal[8] = new Ball(x, y, i/2, (4.23), 0.01, color(0, 0, 250 ));
     ballsInternal[9] = new Ball(x, y, i/2, (4.67), 0.01, color(0, 0, 250 ));
     ballsInternal[10] = new Ball(x, y, i/2, (4.99), 0.01, color(0, 0, 250 ));
     ballsInternal[11] = new Ball(x, y, i/2, (5.27), 0.01, color(0, 0, 250 ));*/


    ballsMiddle = new Ball[12];
    /*for (int j = 0; j < ballsMiddle.length; j++) {
     ballsMiddle[j] = new Ball(x, y, m/2, (j), 0.008);
     }*/

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
