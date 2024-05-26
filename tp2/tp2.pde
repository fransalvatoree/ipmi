//Salvatore Francesca 
PImage miimagen;
PImage miimagen2;
PImage miimagen3;
PImage miimagen4;
int miVariable;
float posY1, posY2, posY3, posY4;
String texto; 
String texto2;
String texto3;
String texto4;

void setup() {
  
   size(640,480);
   textSize(30);
   miimagen= loadImage("imagen1.jpg");
   miimagen2= loadImage ("imagen2.jpg");
   miimagen3= loadImage ("imagen3.jpg");
   miimagen4= loadImage ("imagen4.jpg");
   background(0);
   texto = "Primero, descarga la aplicación Preguntados\n en tu dispositivo móvil desde la\n tienda de aplicaciones correspondiente.\n Una vez instalada, ábrela.";
   texto2 = "Ahora podrás seleccionar una categoría\n de preguntas para comenzar.\n Estas categorías pueden incluir geografía,\n historia, arte, ciencia, entre otros temas.";
   texto3 = "El juego te hará preguntas en la\n categoría que elegiste. Tendrás\n que seleccionar la respuesta correcta\n entre las opciones proporcionadas.\n";
   texto4 = "Puedes desafiar a tus amigos a jugar contra ti.\n Competirán para ver quién puede\n responder más preguntas correctamente\n en un tiempo determinado.";
println(frameCount);
   
}
void draw(){
 background(255);
 fill(0); 
  // Texto 1
  if (frameCount >= 0 && frameCount <= 300) {
    image(miimagen, 0, 0);
    posY1 = frameCount * 0.5; // Ajusta la velocidad del deslizamiento
    text(texto, 50, posY1);
  }
  
  // Texto 2
  if (frameCount > 300 && frameCount <= 600) {
    image(miimagen2, 0, 0);
    posY2 = (frameCount - 300) * 0.5; // Ajusta la velocidad del deslizamiento
    text(texto2, 40, posY2);
  }
  
  // Texto 3
  if (frameCount > 600 && frameCount <= 900) {
    image(miimagen4, 0, 0);
    posY3 = (frameCount - 600) * 0.5; // Ajusta la velocidad del deslizamiento
    text(texto3, 40, posY3);
  }
  
  // Texto 4
  if (frameCount > 900 && frameCount <= 1200) {
    image(miimagen3, 0, 0);
    posY4 = (frameCount - 900) * 0.5; // Ajusta la velocidad del deslizamiento
    text(texto4, 40, posY4);
  }
}
