float sunX;
float sunY;
boolean day;
float moonX;
float moonY;

void setup() {
  size(1300, 850);
  sunX = -200;
  sunY = 600;
  moonX = -200;
  moonY = 600;
  day = true;
}

void draw() {
  if (day) {
    background(#cae9ff);
    
    fill(#ffc300);
    circle(sunX, sunY, 200);
    
    sunX += 1.3;
    sunY -= 1;
    
    if (sunY <= -150) {
      day = false;
      moonX = -200;
      moonY = 600;
    }
  } else {
    background(0);
    
    fill(#ffc300);
    circle(moonX, moonY, 200);
    fill(0);
    circle(moonX - 100, moonY, 200);
    
    moonX += 1.3;
    moonY -= 1;
    
    if (moonY <= -150) {
      day = true;
      sunX = -200; 
      sunY = 600;
    }
  }

  // house
  fill(#3a86ff);
  stroke(0);
  strokeWeight(10);
  rect(550, 500, 500, 350);
  
  // roof
  fill(#e85d04);
  triangle(450, 500, 800, 300, 1150, 500);
  
  // window
  fill(#edf6f9);
  circle(670, 620, 100);
  
  // door
  fill(#936639);
  rect(800, 700, 100, 150);
  
  line(880, 785, 895, 785);
}
