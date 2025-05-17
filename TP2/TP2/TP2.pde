//Salvatore Francesca 
//comision 2

PImage chancho1, chancho2, chancho3;
String estado;
String textoMenu = "Chancho va!";
String textoP1 = "El juego consiste en repartir 4 cartas a cada jugador,\n cuando un jugador grita ¡CHANCHO VA! cada uno pasa\n una carta al jugador de la derecha.\n Se acomodan las cartas y comienza el juego,cuando\n un jugador junta 4 cartas con el mismo chancho y nùmero";
String textoP2 = "grita ¡chancho! y pone su\n mano en el centro de la mesa, el ùltimo\n en poner la mano sobre el\n jugador que formo chancho, es el perdedor.";

int c;
float velocidadTexto = 0.5; // velocidad del texto p1
float yTextoP1 = -150;      // arranque más arriba
float tamañoTextoP2 = 5;    // texto que crece en p2

float x, y, ancho, alto;

void setup() {
  size(640, 480);  
  textAlign(CENTER, CENTER);
  textSize(30);
  
  estado = "menu";
  chancho1 = loadImage("chancho1.png");
  chancho2 = loadImage("chancho2.png");
  chancho3 = loadImage("chancho3.png");
  x = 460;
  y = 400;
  ancho = 150;
  alto = 50;
  frameRate(60);  // 60 cuadros por segundo
}

void draw() {
  if (estado.equals("menu")) {
    image(chancho1, 0, 0);
    fill(255, 0, 0);
    textSize(50);
    text("Chancho va!", frameCount / 2, height / 2);

    noStroke();
    fill(110, 7, 222);
    circle(50, 70, 80);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Iniciar", 50, 70);

  } else if (estado.equals("p1")) {
    image(chancho2, 0, 0);
    fill(0);
    textSize(20);
    text(textoP1, width / 2.5, yTextoP1);
    yTextoP1 += velocidadTexto;

    c++;  
    if (c >= 1200) {  
      estado = "p2";
      c = 0;
    }

  } else if (estado.equals("p2")) {
    image(chancho3, 0, 0);
    fill(0, 20, 250);
    textSize(tamañoTextoP2);
    text(textoP2, width / 2, height / 2);

    if (tamañoTextoP2 < 24) {
      tamañoTextoP2 += 0.3;  
    }

    c++;  
    if (c >= 1200) {  
      c = 0;
    }

    // Botón rectangular
    noStroke();
    fill(200);
    rect(x, y, ancho, alto);
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", x + ancho / 2, y + alto / 2);
  }
}

void mousePressed() {
  if (estado.equals("menu")) {
    if (dist(50, 70, mouseX, mouseY) < 50 / 2) {
      estado = "p1";
      c = 0;
      yTextoP1 = -150;
    }
  } else if (estado.equals("p2")) {
    if ((mouseX > x) && (mouseX < x + ancho) && (mouseY > y) && (mouseY < y + alto)) {
      reiniciarSketch();
    }
  }
}

void reiniciarSketch() {
  estado = "menu";
  c = 0;
  yTextoP1 = -150;
  tamañoTextoP2 = 5;
}
