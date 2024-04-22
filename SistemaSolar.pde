// Escena del Sistema Solar

// Imagen y forma de la Tierra en la escena del Sistema Solar
PImage Tierra;
PShape esferaTierra;
float rotacionTierra = 0.04;

// Imagen y forma del Sol en la escena del Sistema Solar
PImage Sol;
PShape esferaSol;
int distanciaSolTierra = -2800;


void escenaSistemaSolar() {

  translate(width / 2, height / 2, -5000);
  rotateX(radians(-30));
  rotateY(mouseX);

  pushMatrix();
  rotateY(radians(rotacionTierra));
   if (rotacionTierra > 360)
  {
    rotacionTierra = 0;
  } else
  {
    rotacionTierra += 0.04;
  }

  shape(esferaTierra);
  popMatrix();

  pushMatrix();
  translate(distanciaSolTierra, 0, 0);
  shape(esferaSol);
  popMatrix();
 
}
