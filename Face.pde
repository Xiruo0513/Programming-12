void setup(){
   size(1000, 800);
}

void draw(){
   background(255);
   face(300, 200);
}

void face(int x, int y){
   pushMatrix();
   translate(x, y);

   skin();
   //hair();
   eye(100, 250);
   eye(300, 250); 
   mouth();

   popMatrix();
}

void skin(){
   fill(#f4a261);
   stroke(0);
   strokeWeight(5);
   circle(200, 300, 500);
}


void eye(int x, int y){
  stroke(0);
  strokeWeight(3);
  fill(255);
   ellipse(x, y, 70, 100); 
   fill(0);
   circle(x, y+25, 50);  
}

void mouth(){
   stroke(0);
   strokeWeight(10);
   noFill(); 
   arc(200, 400, 200, 100, 0, radians(180)); 
}
