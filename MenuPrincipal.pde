// Menú principal

// Imagen y forma de la Tierra del menú principal
PImage TierraMenu;
PShape esferaTierraMenu;

// Rotaciones de la Tierra del menú principal
float rotacionTierraMenuX = 0.02;
float rotacionTierraMenuY = 0.02;
float rotacionTierraMenuZ = 0.02;

// Tamaño y posición de botones
int buttonWidth = 200;
int buttonHeight = 50;
int buttonX;
int buttonY1;
int buttonY2;

// Imagenes opciones del menú
PImage sistemaSolar;
PImage sistemaSolarBlack;
PImage continentes;
PImage continentesBlack;
PImage africa;

void escenaMenu() {

  // Rotación de la Tierra en el menú principal
  pushMatrix();
  pointLight(255, 255, 255, width, height, 1000);
  // Posicionamiento de las estrellas
  translate(0, 0, -1450);
  for (int counter = 0; counter < amount_estrellas; counter++) {
    ellipse(estrellas_x[counter], estrellas_y[counter], radius_estrellas, radius_estrellas);
  }
  translate(0, 0, 1450);
  translate(width / 2, height / 2, -2000);
  rotateX(radians(rotacionTierraMenuX));
  rotateY(radians(rotacionTierraMenuY));
  rotateZ(radians(rotacionTierraMenuZ));

  if (rotacionTierraMenuX > 360)
  {
    rotacionTierraMenuX = 0;
  } else
  {
    rotacionTierraMenuX += 0.02;
  }

  if (rotacionTierraMenuY > 360)
  {
    rotacionTierraMenuY = 0;
  } else
  {
    rotacionTierraMenuY += 0.02;
  }

  if (rotacionTierraMenuZ > 360)
  {
    rotacionTierraMenuZ = 0;
  } else
  {
    rotacionTierraMenuZ += 0.02;
  }

  shape(esferaTierraMenu);
  popMatrix();

  // Opciones del menú
  pushMatrix();
  translate(width / 2.0, height / 2.0);
  imageMode(CENTER);

 if (mouseOverContinentes() == false) {
    image(continentes, 0, 0, 450, 100);
  } else {
    image(continentesBlack, 0, 0, 450, 100);
  }
   
  if (mouseOverSolar() == false) {
    image(sistemaSolar, 0, -100, 450, 100);
  } else {
    image(sistemaSolarBlack, 0, -100, 450, 100);
  }
  popMatrix();

  //// Dibuja los botones para "Recetas" y "Educación"
  //pushMatrix();
  //textAlign(CENTER, CENTER);

  //// Botón para "Recetas"
  //fill(200);
  //stroke(0);
  //rect(buttonX, buttonY1, buttonWidth, buttonHeight);
  //fill(0);
  //text("Recetas", buttonX + buttonWidth / 2, buttonY1 + buttonHeight / 2);

  //// Botón para "Educación"
  //fill(200);
  //stroke(0);
  //rect(buttonX, buttonY2, buttonWidth, buttonHeight);
  //fill(0);
  //text("Educación", buttonX + buttonWidth / 2, buttonY2 + buttonHeight / 2);

  //popMatrix();


  // Creditos
  pushMatrix();
  textAlign(CENTER, CENTER);
  fill(255);
  stroke(169);
  line((width / 2) - 82, height - 17, (width / 2) + 82, height - 17);
  textSize(15);
  fill(255);
  text("Alfredo Ugarte y Pol Blesa", width / 2, height - 30);
  popMatrix();
}
