class Ball {
  float x;
  float y;
  float radius;
  float angle;
  float velocity;
  color c;

  float xCircle;
  float yCircle;

  int []belongToCircle;

  boolean moving;
  float finalAngle;

  Ball(float xPosition, float yPosition, color col, float r) {
    x = xPosition;
    y = yPosition;
    c = col;

    velocity = 0.0111;
    // angle = random(0,5);
    radius = r/2;

    belongToCircle = new int[2];
    moving = false;
  }

  void display() {
    //  radius = 0;
    //float x = xCenter + cos(angle)*radius;
    //float y = yCenter + sin(angle)*radius;

    float xNow = xCircle + cos(angle)*radius;
    float yNow = yCircle + sin(angle)*radius;


    fill(c, 150);
    circle(xNow, yNow, 12);
    if (angle!= finalAngle) {
      //  println("moving", angle);
      angle+=velocity;
    }
  }

  void glow() {
    noStroke();
    fill(c, 100);
    circle(x, y, 20);
  }

  void changeCenter(float xC, float yC) {
    xCircle = xC;
    yCircle = yC;


    angle = Angle(x, y, xCircle, yCircle, radius);
    finalAngle = angle;
  }

  void moveTo(float xNew, float yNew) {
    moving = true;


    float newAngle = Angle(xNew, yNew, xCircle, yCircle, radius);
    finalAngle = newAngle;
    float distance = newAngle - angle;
    //velocity = distance/10;
    //  println(distance);
  }
}
