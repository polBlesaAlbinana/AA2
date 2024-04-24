// Escena del Sistema Solar

// Imagen y forma de la Tierra en la escena del Sistema Solar
PImage Tierra;
PShape esferaTierra;
float rotacionTierra = 0.04;

// Imagen y forma del Sol en la escena del Sistema Solar
PImage Sol;
PShape esferaSol;
int distanciaSolTierra = 2800;

// Imagen y forma de Mercurio en la escena del Sistema Solar
PImage Mercurio;
PShape esferaMercurio;
int distanciaMercurioTierra = 1540;


// Imagen y forma de Venus en la escena del Sistema Solar
PImage Venus;
PShape esferaVenus;
int distanciaVenusTierra = 800;

// Imagen y forma de Marte en la escena del Sistema Solar
PImage Marte;
PShape esferaMarte;
int distanciaMarteTierra = 900;

// Imagen y forma de Jupiter en la escena del Sistema Solar
PImage Jupiter;
PShape esferaJupiter;
int distanciaJupiterTierra = 2250;

// Imagen y forma de Saturno en la escena del Sistema Solar
PImage Saturno;
PShape esferaSaturno;
int distanciaSaturnoTierra = 3750;

// Imagen y forma de Urano en la escena del Sistema Solar
PImage Urano;
PShape esferaUrano;
int distanciaUranoTierra = 5500;

// Imagen y forma de Neptuno en la escena del Sistema Solar
PImage Neptuno;
PShape esferaNeptuno;
int distanciaNeptunoTierra = 7000;


void escenaSistemaSolar() {

  translate(width / 2, height / 2, -1000);
  rotateX(radians(-30));
  rotateY(mouseX * 0.1);

  // Tierra
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

  // Sol
  pushMatrix();
  translate(-distanciaSolTierra, 0, 0);
  shape(esferaSol);
  popMatrix();

  // Mercurio
  pushMatrix();
  translate(-distanciaMercurioTierra, 0, 0);
  shape(esferaMercurio);
  popMatrix();

  // Venus
  pushMatrix();
  translate(-distanciaVenusTierra, 0, 0);
  shape(esferaVenus);
  popMatrix();

  // Marte
  pushMatrix();
  translate(distanciaMarteTierra, 0, 0);
  shape(esferaMarte);
  popMatrix();

  // Jupiter
  pushMatrix();
  translate(distanciaJupiterTierra, 0, 0);
  shape(esferaJupiter);
  popMatrix();

  // Saturno
  pushMatrix();
  translate(distanciaSaturnoTierra, 0, 0);
  shape(esferaSaturno);
  popMatrix();

  // Urano
  pushMatrix();
  translate(distanciaUranoTierra, 0, 0);
  shape(esferaUrano);
  popMatrix();

  // Neptuno
  pushMatrix();
  translate(distanciaNeptunoTierra, 0, 0);
  shape(esferaNeptuno);
  popMatrix();
}
