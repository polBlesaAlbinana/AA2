// Vartiables
// Mercurio
PImage MercurioPlaneta;
PShape esferaMercurioPlaneta;

// Venus
PImage VenusPlaneta;
PShape esferaVenusPlaneta;

// La Tierra
PImage LaTierraPlaneta;
PShape esferaLaTierraPlaneta;

// Marte
PImage MartePlaneta;
PShape esferaMartePlaneta;

// Jupiter
PImage JupiterPlaneta;
PShape esferaJupiterPlaneta;

// Saturno
PImage SaturnoPlaneta;
PShape esferaSaturnoPlaneta;

PImage anillosSaturnoPlaneta;
PShape anillosSaturnoPlanetaShape;

// Urano
PImage UranoPlaneta;
PShape esferaUranoPlaneta;

// Neptuno
PImage NeptunoPlaneta;
PShape esferaNeptunoPlaneta;

// KeyPressed
void keyPressed() {
  if (estadoActual == EstadoPantalla.SISTEMA_SOLAR) {
    switch(key) {
    case '1':
      estadoActual = EstadoPantalla.MERCURIO;
      break;
    case '2':
      estadoActual = EstadoPantalla.VENUS;
      break;
    case '3':
      estadoActual = EstadoPantalla.LATIERRA;
      break;
    case '4':
      estadoActual = EstadoPantalla.MARTE;
      break;
    case '5':
      estadoActual = EstadoPantalla.JUPITER;
      break;
    case '6':
      estadoActual = EstadoPantalla.SATURNO;
      break;
    case '7':
      estadoActual = EstadoPantalla.URANO;
      break;
    case '8':
      estadoActual = EstadoPantalla.NEPTUNO;
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


// Mercurio
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

// Venus
void escenaVenus() {
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

  shape(esferaVenusPlaneta);
  popMatrix();
}

// La Tierra
void escenaLaTierra() {
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

  shape(esferaLaTierraPlaneta);
  popMatrix();
}

// Marte
void escenaMarte() {
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

  shape(esferaMartePlaneta);
  popMatrix();
}

// Jupiter
void escenaJupiter() {
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

  shape(esferaJupiterPlaneta);
  popMatrix();
}

// Saturno
void escenaSaturno() {
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

  shape(esferaSaturnoPlaneta);

  pushMatrix();
  rotateX(radians(280));
  rotateZ(radians(-100));
  shape(anillosSaturnoPlanetaShape);
  popMatrix();

  popMatrix();
}

// Urano
void escenaUrano() {
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

  shape(esferaUranoPlaneta);
  popMatrix();
}

// Neptuno
void escenaNeptuno() {
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

  shape(esferaNeptunoPlaneta);
  popMatrix();
}
