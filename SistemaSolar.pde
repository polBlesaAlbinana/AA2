// Escena del Sistema Solar

// Imagen y forma del Sol en la escena del Sistema Solar
PImage Sol;
PShape esferaSol;
float radioSol = 666.0;
float rotacionSol = 0.12;

// Imagen y forma de la Tierra en la escena del Sistema Solar
PImage Tierra;
PShape esferaTierra;
float radioTierra = 33.71;
float anguloDeInclinacionTierra = 23.44;
float rotacionTierra = 0.1;
int tierraSolRadio = 2700;

float anguloTierra;
float velocidadTierra = 0.01;

// Imagen y forma de Mercurio en la escena del Sistema Solar
PImage Mercurio;
PShape esferaMercurio;
float radioMercurio = 9.397;
float rotacionMercurio = 0.0006;
float anguloDeInclinacionMercurio = 7.0;
int distanciaMercurioTierra = 1390;
int mercurioSolRadio = 1310;

float anguloMercurio;
float velocidadMercurio = 0.016;

// Imagen y forma de Venus en la escena del Sistema Solar
PImage Venus;
PShape esferaVenus;
float radioVenus = 30.518;
float rotacionVenus = 0.0003;
float anguloDeInclinacionVenus = 3.39;
int venusSolRadio = 2050;

float anguloVenus;
float velocidadVenus = 0.012;

// Imagen y forma de Marte en la escena del Sistema Solar
PImage Marte;
PShape esferaMarte;
float radioMarte = 13.895;
float rotacionMarte = 0.05;
float anguloDeInclinacionMarte = 25.19;
int marteSolRadio = 3450;

float anguloMarte;
float velocidadMarte = 0.008;


// Imagen y forma de Jupiter en la escena del Sistema Solar
PImage Jupiter;
PShape esferaJupiter;
float radioJupiter = 208.307;
float rotacionJupiter = 1.2;
float anguloDeInclinacionJupiter = 3.12;
int jupiterSolRadio = 4850;

float anguloJupiter;
float velocidadJupiter = 0.000004;

// Imagen y forma de Saturno en la escena del Sistema Solar
PImage Saturno;
PShape esferaSaturno;
float radioSaturno = 170.893;
float rotacionSaturno = 1.0;
float anguloDeInclinacionSaturno = 26.73;
int saturnoSolRadio = 6350;

float anguloSaturno;
float velocidadSaturno = 0.000003;

// Imagen y forma de Urano en la escena del Sistema Solar
PImage Urano;
PShape esferaUrano;
float radioUrano = 61.167;
float rotacionUrano = 0.883;
float anguloDeInclinacionUrano = 97.86;
int uranoSolRadio = 8100;

float anguloUrano;
float velocidadUrano = 0.000002;

// Imagen y forma de Neptuno en la escena del Sistema Solar
PImage Neptuno;
PShape esferaNeptuno;
float radioNeptuno = 58.553;
float rotacionNeptuno = 0.58;
float anguloDeInclinacionNeptuno = 28.32;
int neptunoSolRadio = 9600;

float anguloNeptuno;
float velocidadNeptuno = 0.000001;


void escenaSistemaSolar() {

  noCursor();

  translate(width / 2, height / 2, -2500);

  // ambientLight(255, 255, 255, -distanciaSolTierra, 0, 0);

  rotateX(radians(330));
  rotateY(mouseX * 0.01);

  // Sol
  pushMatrix();

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

  // Tierra
  pushMatrix();

  rotateY(radians(rotacionTierra));
  if (rotacionTierra > 360)
  {
    rotacionTierra = 0;
  } else
  {
    rotacionTierra += 0.1;
  }

  rotateY(anguloTierra);
  translate(tierraSolRadio, 0.0, 0.0);
  rotateX(radians(anguloDeInclinacionTierra));
  shape(esferaTierra);
  popMatrix();

  // Mercurio
  pushMatrix();

  rotateY(radians(rotacionMercurio));
  if (rotacionMercurio > 360)
  {
    rotacionMercurio = 0;
  } else
  {
    rotacionMercurio += 0.0006;
  }

  rotateY(anguloMercurio);
  translate(mercurioSolRadio, 0.0, 0.0);
  rotateX(radians(anguloDeInclinacionMercurio));
  shape(esferaMercurio);
  popMatrix();

  // Venus
  pushMatrix();

  rotateY(radians(rotacionVenus));
  if (rotacionVenus > 360)
  {
    rotacionVenus = 0;
  } else
  {
    rotacionVenus += 0.0003;
  }

  rotateY(anguloVenus);
  translate(venusSolRadio, 0.0, 0.0);
  rotateX(radians(anguloDeInclinacionVenus));
  shape(esferaVenus);
  popMatrix();

  // Marte
  pushMatrix();

  rotateY(radians(rotacionMarte));
  if (rotacionMarte > 360)
  {
    rotacionMarte = 0;
  } else
  {
    rotacionMarte += 0.05;
  }

  rotateY(anguloMarte);
  translate(marteSolRadio, 0.0, 0.0);
  rotateX(radians(anguloDeInclinacionMarte));
  shape(esferaMarte);
  popMatrix();

  // Jupiter
  pushMatrix();

  rotateY(radians(rotacionJupiter));
  if (rotacionJupiter > 360)
  {
    rotacionJupiter = 0;
  } else
  {
    rotacionJupiter += 1.2;
  }

  rotateY(anguloJupiter);
  translate(jupiterSolRadio, 0.0, 0.0);
  rotateX(radians(anguloDeInclinacionJupiter));
  shape(esferaJupiter);
  popMatrix();

  // Saturno
  pushMatrix();

  rotateY(radians(rotacionSaturno));
  if (rotacionSaturno > 360)
  {
    rotacionSaturno = 0;
  } else
  {
    rotacionSaturno += 1.0;
  }

  rotateY(anguloSaturno);
  translate(saturnoSolRadio, 0.0, 0.0);
  rotateX(radians(anguloDeInclinacionSaturno));
  shape(esferaSaturno);
  popMatrix();

  // Urano
  pushMatrix();
  
  rotateY(radians(rotacionUrano));
  if (rotacionUrano > 360)
  {
    rotacionUrano = 0;
  } else
  {
    rotacionUrano += 0.883;
  }

  rotateY(anguloUrano);
  translate(uranoSolRadio, 0.0, 0.0);
  rotateX(radians(anguloDeInclinacionUrano));
  shape(esferaUrano);
  popMatrix();

  // Neptuno
  pushMatrix();

  rotateY(radians(rotacionNeptuno));
  if (rotacionNeptuno > 360)
  {
    rotacionNeptuno = 0;
  } else
  {
    rotacionNeptuno += 0.58;
  }

  rotateY(anguloNeptuno);
  translate(neptunoSolRadio, 0.0, 0.0);
  rotateX(radians(anguloDeInclinacionNeptuno));
  shape(esferaNeptuno);
  popMatrix();

  // Angulos de los planetas
  anguloTierra += velocidadTierra;
  anguloMercurio += velocidadMercurio;
  anguloVenus += velocidadVenus;
  anguloMarte += velocidadMarte;
  anguloJupiter += velocidadJupiter;
  anguloSaturno += velocidadSaturno;
  anguloUrano += velocidadUrano;
  anguloNeptuno += velocidadNeptuno;
}
