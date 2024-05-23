// Vartiables
// Mercurio
PImage MercurioPlaneta;
PShape esferaMercurioPlaneta;

// KeyPressed
void keyPressed() {
  if (estadoActual == EstadoPantalla.SISTEMA_SOLAR) {
    switch(key) {
    case '1':
      estadoActual = EstadoPantalla.MERCURIO;
      break;
    case '2':
      break;
    case '3':
      break;
    case '4':
      break;
    case '5':
      break;
    case '6':
      break;
    case '7':
      break;
    case '8':
      break;
    default:
      break;
    }
  }
}

void keyReleased() {
  if (key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' || key == '8') {
    estadoActual = EstadoPantalla.SISTEMA_SOLAR;
  }
}


void escenaMercurio() {
  noCursor();

  pushMatrix();
  pointLight(255, 255, 255, width, height, -850);

  // Posicionamiento de las estrellas
  translate(0, 0, -3000);
  for (int counter = 0; counter < amount_estrellas; counter++) {
    ellipse(estrellas_x[counter], estrellas_y[counter], radius_estrellas, radius_estrellas);
  }
  translate(0, 0, 3000);

  translate(width / 2, height / 2, -3500);

  rotateX(mouseY * 0.008);
  rotateY(mouseX * 0.008);

  shape(esferaMercurioPlaneta);
  popMatrix();
}
