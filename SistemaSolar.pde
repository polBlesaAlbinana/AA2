// Escena del Sistema Solar

// Imagen y forma de la Tierra en la escena del Sistema Solar
PImage Tierra;
PShape esferaTierra;
float radioTierra = 63.71;
float anguloDeInclinacionTierra = 23.44;
float rotacionTierra = 0.1;

// Imagen y forma del Sol en la escena del Sistema Solar
PImage Sol;
PShape esferaSol;
float radioSol = 696.0;
float rotacionSol = 0.12;
int distanciaSolTierra = 2800;

// Imagen y forma de Mercurio en la escena del Sistema Solar
PImage Mercurio;
PShape esferaMercurio;
float radioMercurio = 24.397;
float rotacionMercurio = 0.0006;
float anguloDeInclinacionMercurio = 7.0;
int distanciaMercurioTierra = 1540;

// Imagen y forma de Venus en la escena del Sistema Solar
PImage Venus;
PShape esferaVenus;
float radioVenus = 60.518;
float rotacionVenus = 0.0003;
float anguloDeInclinacionVenus = 3.39;
int distanciaVenusTierra = 800;

// Imagen y forma de Marte en la escena del Sistema Solar
PImage Marte;
PShape esferaMarte;
float radioMarte = 33.895;
float rotacionMarte = 0.05;
float anguloDeInclinacionMarte = 25.19;
int distanciaMarteTierra = 900;

// Imagen y forma de Jupiter en la escena del Sistema Solar
PImage Jupiter;
PShape esferaJupiter;
float radioJupiter = 238.307;
float rotacionJupiter = 1.2;
float anguloDeInclinacionJupiter = 3.12;
int distanciaJupiterTierra = 2250;

// Imagen y forma de Saturno en la escena del Sistema Solar
PImage Saturno;
PShape esferaSaturno;
float radioSaturno = 200.893;
float rotacionSaturno = 1.0;
float anguloDeInclinacionSaturno = 26.73;
int distanciaSaturnoTierra = 3750;

// Imagen y forma de Urano en la escena del Sistema Solar
PImage Urano;
PShape esferaUrano;
float radioUrano = 91.167;
float rotacionUrano = 0.883;
float anguloDeInclinacionUrano = 97.86;
int distanciaUranoTierra = 5500;

// Imagen y forma de Neptuno en la escena del Sistema Solar
PImage Neptuno;
PShape esferaNeptuno;
float radioNeptuno = 88.553;
float rotacionNeptuno = 0.58;
float anguloDeInclinacionNeptuno = 28.32;
int distanciaNeptunoTierra = 7000;


void escenaSistemaSolar() {

  translate(width / 2, height / 2, -1000);
  rotateX(radians(330));
  rotateY(mouseX * 0.1);

  // Tierra
  pushMatrix();
  rotateX(radians(anguloDeInclinacionTierra));
  rotateY(radians(rotacionTierra));
  if (rotacionTierra > 360)
  {
    rotacionTierra = 0;
  } else
  {
    rotacionTierra += 0.1;
  }

  shape(esferaTierra);
  popMatrix();

  // Sol
  pushMatrix();
  translate(-distanciaSolTierra, 0, 0);

  rotateY(radians(rotacionSol));
  if (rotacionSol > 360)
  {
    rotacionSol = 0;
  } else
  {
    rotacionSol += 0.12;
  }

  shape(esferaSol);
  popMatrix();

  // Mercurio
  pushMatrix();
  translate(-distanciaMercurioTierra, 0, 0);

  rotateX(radians(anguloDeInclinacionMercurio));
  rotateY(radians(rotacionMercurio));
  if (rotacionMercurio > 360)
  {
    rotacionMercurio = 0;
  } else
  {
    rotacionMercurio += 0.0006;
  }

  shape(esferaMercurio);
  popMatrix();

  // Venus
  pushMatrix();
  translate(-distanciaVenusTierra, 0, 0);

  rotateX(radians(anguloDeInclinacionVenus));
  rotateY(radians(rotacionVenus));
  if (rotacionVenus > 360)
  {
    rotacionVenus = 0;
  } else
  {
    rotacionVenus += 0.0003;
  }

  shape(esferaVenus);
  popMatrix();

  // Marte
  pushMatrix();
  translate(distanciaMarteTierra, 0, 0);

  rotateX(radians(anguloDeInclinacionMarte));
  rotateY(radians(rotacionMarte));
  if (rotacionMarte > 360)
  {
    rotacionMarte = 0;
  } else
  {
    rotacionMarte += 0.05;
  }

  shape(esferaMarte);
  popMatrix();

  // Jupiter
  pushMatrix();
  translate(distanciaJupiterTierra, 0, 0);

  rotateX(radians(anguloDeInclinacionJupiter));
  rotateY(radians(rotacionJupiter));
  if (rotacionJupiter > 360)
  {
    rotacionJupiter = 0;
  } else
  {
    rotacionJupiter += 1.2;
  }

  shape(esferaJupiter);
  popMatrix();

  // Saturno
  pushMatrix();
  translate(distanciaSaturnoTierra, 0, 0);

  rotateX(radians(anguloDeInclinacionSaturno));
  rotateY(radians(rotacionSaturno));
  if (rotacionSaturno > 360)
  {
    rotacionSaturno = 0;
  } else
  {
    rotacionSaturno += 1.0;
  }

  shape(esferaSaturno);
  popMatrix();

  // Urano
  pushMatrix();
  translate(distanciaUranoTierra, 0, 0);
  
  rotateX(radians(anguloDeInclinacionUrano));
  rotateY(radians(rotacionUrano));
  if (rotacionUrano > 360)
  {
    rotacionUrano = 0;
  } else
  {
    rotacionUrano += 0.883;
  }
  
  shape(esferaUrano);
  popMatrix();

  // Neptuno
  pushMatrix();
  translate(distanciaNeptunoTierra, 0, 0);
  
  rotateX(radians(anguloDeInclinacionNeptuno));
  rotateY(radians(rotacionNeptuno));
  if (rotacionNeptuno > 360)
  {
    rotacionNeptuno = 0;
  } else
  {
    rotacionNeptuno += 0.58;
  }
  
  shape(esferaNeptuno);
  popMatrix();
}
