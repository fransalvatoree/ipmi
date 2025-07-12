// Función que devuelve el texto a mostrar
String generarTexto() {
  return "programación1Tp3";
}

// Cambiar tamaño con clicks
void mousePressed() {
  if (mouseButton == RIGHT) {
    diametroInicial++;
  } else {
    diametroInicial--;
  }
}

// Cambiar fondo o reiniciar
void keyPressed() {
  if (key == 'f') {
    background(255);
  }
  if (key == 'o') {
    background(0);
    diametroInicial = 12;
  }
}
