void circulosaumento(int fila, int col) {
  int xPos = col * 25 + 415;
  int yPos = fila * 25 + 15;
  int diametro = calcularDiametro(col);  // USO DE FUNCIÓN CON RETURN

  if (dist(mouseX, mouseY, xPos, yPos) < 80) {
    fill(255, 0, 209);
  } else {
    fill(generarColor());  // USO DE FUNCIÓN CON RETURN
  }

  ellipse(xPos, yPos, diametro, diametro);
}

void circulosdisminuir(int fila, int col) {
  int xPos = col * 25 + 615;
  int yPos = (fila + numFilas) * 25 - 385;
  int diametro = calcularDiametroInverso(col);  // USO DE FUNCIÓN CON RETURN

  if (dist(mouseX, mouseY, xPos, yPos) < 80) {
    fill(255, 0, 209);
  } else {
    fill(generarColor());  // USO DE FUNCIÓN CON RETURN
  }

  ellipse(xPos, yPos, diametro, diametro);
}

// Función que calcula diámetro para círculos que aumentan
int calcularDiametro(int col) {
  return diametroInicial + col * incremento;
}

// Función que calcula diámetro para círculos que disminuyen
int calcularDiametroInverso(int col) {
  return diametroInicial + (numCols - col - 1) * incremento;
}

// Función que devuelve un color aleatorio pastel
color generarColor() {
  return color(random(242), random(200, 236), random(219, 250));
}
