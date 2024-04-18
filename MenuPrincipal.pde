//

// Imagen y forma de la Tierra del menú principal
PImage Tierra;
PShape esfera;

// Rotaciones de la Tierra del menú principal
float rotacionY = 0.08;
float rotacionX = 0.02;

void escenaMenu() {

  // Rotación de la Tierra en el menú principal
  pushMatrix();
  pointLight(255, 255, 255, width, height, 1000);
  translate(0, 0, -1450);
  for (int counter = 0; counter < amount_estrellas; counter++) {
    ellipse(estrellas_x[counter], estrellas_y[counter], radius_estrellas, radius_estrellas);
  }
  translate(0, 0, 1450);
  translate(width / 2, height / 2, -2000);
  rotateY(radians(rotacionY));
  rotateX(radians(rotacionX));

  if (rotacionY > 360)
  {
    rotacionY = 0;
  } else
  {
    rotacionY += 0.08;
  }

  if (rotacionX > 360)
  {
    rotacionX = 0;
  } else
  {
    rotacionX += 0.02;
  }

  shape(esfera);
  popMatrix();

  // Opciones del menú
  pushMatrix();
  rectMode(CENTER);
  fill(255);
  rect(width / 2, height / 2, 500, 50, 30);
  popMatrix();






  textAlign(CENTER, CENTER);

  fill(255);
  stroke(250);
  line((width / 2) - 136, height - 13, (width / 2) + 136, height - 13);
  textSize(25);
  fill(255);
  text("Alfredo Ugarte y Pol Blesa", width / 2, height - 30);
}
