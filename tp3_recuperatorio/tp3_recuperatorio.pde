//Salvatore Francesca
//comision 2
//https://youtu.be/FZyCmtEPaLA?si=-Xn_NeDKpShkSpGT
PImage image;
int numFilas = 16;
int numCols = 8;
int diametroInicial = 12;
int incremento = 2;

void setup() {
  size(800, 400);
  background(0);
  image = loadImage("circulo.jpg");
}

void draw() {
  image(image, 0, 0, 400, 400);

  // Círculos que aumentan
  for (int fila = 0; fila < numFilas; fila++) {
    for (int col = 0; col < numCols; col++) {
      circulosaumento(fila, col);
    }
  }

  // Círculos que disminuyen
  for (int fila = 0; fila < numFilas; fila++) {
    for (int col = 0; col < numCols; col++) {
      circulosdisminuir(fila, col);
    }
  }

 
}
