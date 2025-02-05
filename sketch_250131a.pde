float sunX;
float sunY;
boolean day;

void setup(){
  size(1300,850);
  sunX = 150;
  sunY = 400;
}

void draw(){
  //sky
  background(#cae9ff);
 
  
  //house
  fill(#3a86ff);
  stroke(0);
  strokeWeight(10);
  rect(550, 500, 500, 350);
  
  //roof
  fill(#e85d04);
  triangle(450, 500, 800, 300, 1150, 500);
  
  //window
  fill(#edf6f9);
  circle(670, 620, 100);
  
  //door
  fill(#936639);
  rect(800, 700, 100, 150);
  
  line(880, 785, 895, 785);
  
  //sun
  if (sunY-250 == 0){
    day = !day;
  }
  if (day==true){
  fill(#ffc300);
  circle(sunX, sunY, 200);
  
  sunX = sunX + 1;
  sunY = sunY -1;
  }
  if (day ==false){
    fill(#ffc300);
  
}
