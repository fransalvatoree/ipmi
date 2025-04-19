// Francesca Salvatore 
PImage camara;

void setup() {
  size(800, 400);
  camara = loadImage("imagen1.jpg");
  camara.resize(400, 400);
  
}

void draw() {
  // Fondo gris medio
  background(235, 222, 200);

  // Imagen original a la izquierda
  image(camara, 0, 0);
  // Coordenadas base
  float baseX = 400;

  // Cuerpo principal
  fill(234, 143, 163);
  noStroke();
  rect(baseX + 50, 25, 270, 320, 70);  // cuerpo

  // Lente exterior
  fill(230, 120, 150);
  ellipse(baseX + 240, 240, 190, 190);

  //Circulo clarito
  fill(230, 120, 150);
  stroke(255, 200, 210);
  strokeWeight(3);
  ellipse(baseX + 240, 240, 190, 190);

  // Aro interior
  fill(234, 143, 163);
  ellipse(baseX + 240, 240, 135, 135);
  
  // circulo negro
  fill(250, 170, 190);
  stroke(50);
  strokeWeight(2);
  ellipse(baseX + 240, 240, 135, 135);

  // Lente negro
  fill(20);
  ellipse(baseX + 240, 240, 70, 70);

  // Detalle blanco dentro del lente
  fill(230);
  noStroke();
  rect(baseX + 180, 230, 20, 25, 3);
  

  // Flash
  fill(240);
  rect(baseX + 135, 50, 35, 80, 20);
  
  
  // Detalle atras del visor 
  fill(255, 200, 210);
  rect(baseX + 80, 80, 35, 45);

  // Visor cuadrado
  fill(30);
  rect(baseX + 85, 85, 25, 35);

 // Botón redondo
  fill(255, 200, 210);
  ellipse(baseX + 100, 170, 40, 40);

  // Botón redondo
  fill(220, 110, 140);
  ellipse(baseX + 100, 170, 34, 34);
  
  // circulo negro
  fill(250, 170, 190);
  stroke(50);
  strokeWeight(1);
  ellipse(baseX + 100, 170, 34, 34);
  
  // Detalle de color atras de los puntitos
  fill(255, 200, 210);
  noStroke();
  rect(baseX + 190, 73, 20, 40, 25);


 // Dos puntitos cerca del texto
  fill(30);
  ellipse(baseX + 200, 85, 8, 8);
  ellipse(baseX + 200, 100, 8, 8);

  // Texto 
  fill(255);
  textSize(20);
  text("instax", baseX + 240, 60);
  textSize(13);
  text("mini 8+", baseX + 245, 75);
}
