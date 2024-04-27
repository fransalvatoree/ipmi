PImage miimagen;
void setup() {
  size(800,400);
  miimagen = loadImage("paisaje.jpg");
  background(148,179,237);
}
void draw() {
  image(miimagen,0,0);
  noStroke();
  fill(4,31,84);
  rect(400,270,400,130);
  fill(255,147,0,50);
 ellipse(600,170,80,80);
  fill(255,255,158,200);
  ellipse(600,170,50,50);
 
  fill(255,200);
  ellipse(480,210,150,50);
  fill(66,37,5);
  triangle(400,270,600,170,800,270);
  fill(255,200);
  ellipse(720,210,150,40);
  fill(255,200);
  ellipse(740,100,210,40);
   stroke(255,255,158);
   strokeWeight(5);
  line(600,170,550,280);
  line(600,170,520,270);
  line(600,170,450,270);
  line(600,170,600,280);
  line(600,170,630,270);
  line(600,170,680,280);
  line(600,170,720,260);
  
}
