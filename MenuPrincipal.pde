// Menú principal

// Imagen y forma de la Tierra del menú principal
PImage Tierra;
PShape esfera;

// Rotaciones de la Tierra del menú principal
float rotacionY = 0.02;
float rotacionX = 0.02;
float rotacionZ = 0.02;

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
  rotateZ(radians(rotacionZ));

  if (rotacionY > 360)
  {
    rotacionY = 0;
  } else
  {
    rotacionY += 0.02;
  }

  if (rotacionX > 360)
  {
    rotacionX = 0;
  } else
  {
    rotacionX += 0.02;
  }
  
   if (rotacionZ > 360)
  {
    rotacionZ = 0;
  } else
  {
    rotacionZ += 0.02;
  }

  shape(esfera);
  popMatrix();

  // Opciones del menú
  pushMatrix();
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(255);
  text("SISTEMA SOLAR", width / 2, height / 2);
  popMatrix();

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
