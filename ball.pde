class Ball {
  float xCenter;
  float yCenter;
  float radius;
  float angle;
  float velocity;
  color c;

  float xCircle;
  float yCircle;

  int []belongToCircle;

  Ball(float xPosition, float yPosition, color col, float r) {
    xCenter = xPosition;
    yCenter = yPosition;
    c = col;

    velocity = 0.0111;
   // angle = random(0,5);
    radius = r/2;

    belongToCircle = new int[2];
  }

  void display() {
    radius = 0;
    float x = xCenter + cos(angle)*radius;
    float y = yCenter + sin(angle)*radius;

   // float x = xCircle + cos(angle)*radius;
   // float y = yCircle + sin(angle)*radius;


    fill(c, 150);
    circle(x, y, 12);

   /* angle+=velocity;

    if (round(x) == round(xCenter) && round(y) == round(yCenter)) {
      velocity = 0;
    }*/

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
