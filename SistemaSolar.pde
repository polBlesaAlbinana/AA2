// Escena del Sistema Solar

// Imagen y forma del Sol en la escena del Sistema Solar
PImage Sol;
PShape esferaSol;
float radioSol = 666.0;
float rotacionSol = 0.12;

PShape esferaSolInf;
float radioSolInf = 150.0;

// Imagen y forma de la Tierra en la escena del Sistema Solar
PImage Tierra;
PShape esferaTierra;
float radioTierra = 33.71;
float anguloDeInclinacionTierra = 23.44;
float rotacionTierra = 0.1;
int tierraSolRadio = 2350;

float anguloTierra;
float velocidadTierra = 0.01;

PShape esferaTierraInf;
float radioTierraInf = 50.0;

// Imagen y forma de Mercurio en la escena del Sistema Solar
PImage Mercurio;
PShape esferaMercurio;
float radioMercurio = 9.397;
float rotacionMercurio = 0.0006;
float anguloDeInclinacionMercurio = 7.0;
int mercurioSolRadio = 1060;

float anguloMercurio;
float velocidadMercurio = 0.016;

PShape esferaMercurioInf;
float radioMercurioInf = 25.0;

// Imagen y forma de Venus en la escena del Sistema Solar
PImage Venus;
PShape esferaVenus;
float radioVenus = 30.518;
float rotacionVenus = 0.0003;
float anguloDeInclinacionVenus = 3.39;
int venusSolRadio = 1800;

float anguloVenus;
float velocidadVenus = 0.012;

PShape esferaVenusInf;
float radioVenusInf = 50.0;

// Imagen y forma de Marte en la escena del Sistema Solar
PImage Marte;
PShape esferaMarte;
float radioMarte = 13.895;
float rotacionMarte = 0.05;
float anguloDeInclinacionMarte = 25.19;
int marteSolRadio = 2700;

float anguloMarte;
float velocidadMarte = 0.008;

PShape esferaMarteInf;
float radioMarteInf = 40.0;

// Imagen y forma de Jupiter en la escena del Sistema Solar
PImage Jupiter;
PShape esferaJupiter;
float radioJupiter = 208.307;
float rotacionJupiter = 1.2;
float anguloDeInclinacionJupiter = 3.12;
int jupiterSolRadio = 4000;

float anguloJupiter;
float velocidadJupiter = 0.000004;

PShape esferaJupiterInf;
float radioJupiterInf = 100.0;

// Imagen y forma de Saturno en la escena del Sistema Solar
PImage Saturno;
PShape esferaSaturno;
float radioSaturno = 170.893;
float rotacionSaturno = 1.0;
float anguloDeInclinacionSaturno = 26.73;
int saturnoSolRadio = 5200;

float anguloSaturno;
float velocidadSaturno = 0.000003;

PShape esferaSaturnoInf;
float radioSaturnoInf = 100.0;

// Imagen y forma de Urano en la escena del Sistema Solar
PImage Urano;
PShape esferaUrano;
float radioUrano = 61.167;
float rotacionUrano = 0.883;
float anguloDeInclinacionUrano = 97.86;
int uranoSolRadio = 6050;

float anguloUrano;
float velocidadUrano = 0.000002;

PShape esferaUranoInf;
float radioUranoInf = 50.0;

// Imagen y forma de Neptuno en la escena del Sistema Solar
PImage Neptuno;
PShape esferaNeptuno;
float radioNeptuno = 58.553;
float rotacionNeptuno = 0.58;
float anguloDeInclinacionNeptuno = 28.32;
int neptunoSolRadio = 6850;

float anguloNeptuno;
float velocidadNeptuno = 0.000001;

PShape esferaNeptunoInf;
float radioNeptunoInf = 50.0;


void escenaSistemaSolar() {

  noCursor();

  // Rectángulo informativo
  pushMatrix();

  triangle(width - 50, height - 45, width - 70, height - 40, width - 70, height - 50);
  line(-5, height - 45, width - 70, height - 45);

  rectMode(CENTER);
  stroke(255);
  fill(0);
  rect(width / 2, height, width, 750);

  // Nombre de los planetas
  pushMatrix();
  textAlign(CENTER, CENTER);
  // El Sol
  textSize(30);
  fill(255);
  text("EL SOL", 200, height - 325);
  // Mercurio
  textSize(20);
  fill(255);
  text("MERCURIO", 495, height - 155);
  // Venus
  textSize(20);
  fill(255);
  text("VENUS", 670, height - 180);
  // La Tierra
  textSize(20);
  fill(255);
  text("LA TIERRA", 845, height - 180);
  // Marte
  textSize(20);
  fill(255);
  text("MARTE", 1020, height - 170);
  // Jupiter
  textSize(20);
  fill(255);
  text("JUPITER", 1195, height - 250);
  // Saturno
  textSize(20);
  fill(255);
  text("SATURNO", 1370, height - 250);
  // Urano
  textSize(20);
  fill(255);
  text("URANO", 1545, height - 180);
  // Neptuno
  textSize(20);
  fill(255);
  text("NEPTUNO", 1720, height - 180);
  popMatrix();

  // Texto informativo del Sol
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("0 km", 200, height - 85);
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(255);
  text("0", 200, height - 15);
  line(200, height - 50, 200, height - 40);

  // Texto informativo de Mercurio
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("57.9M km", 495, height - 85);
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(255);
  text("1", 495, height - 15);
  line(495, height - 50, 495, height - 40);

  // Texto informativo de Venus
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("108.2M km", 670, height - 85);
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(255);
  text("2", 670, height - 15);
  line(670, height - 50, 670, height - 40);

  // Texto informativo de la Tierra
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("149.6M km", 845, height - 85);
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(255);
  text("3", 845, height - 15);
  line(845, height - 50, 845, height - 40);

  // Texto informativo de Marte
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("227.9M km", 1020, height - 85);
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(255);
  text("4", 1020, height - 15);
  line(1020, height - 50, 1020, height - 40);

  // Texto informativo de Jupiter
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("778.3M km", 1195, height - 85);
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(255);
  text("5", 1195, height - 15);
  line(1195, height - 50, 1195, height - 40);

  // Texto informativo de Saturno
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("1400M km", 1370, height - 85);
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(255);
  text("6", 1370, height - 15);
  line(1370, height - 50, 1370, height - 40);

  // Texto informativo de Urano
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("2800M km", 1545, height - 85);
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(255);
  text("7", 1545, height - 15);
  line(1545, height - 50, 1545, height - 40);

  // Texto informativo de Neptuno
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("4500M km", 1720, height - 85);
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(255);
  text("8", 1720, height - 15);
  line(1720, height - 50, 1720, height - 40);


  // El Sol en el apartado informativo
  pushMatrix();
  translate(200, height - 200, -112.78);
  rotateY(radians(rotacionSol));
  if (rotacionSol > 360)
  {
    rotacionSol = 0;
  } else
  {
    rotacionSol += 0.12;
  }

  shape(esferaSolInf);
  popMatrix();

  // Mercurio en el apartado informativo
  pushMatrix();
  translate(495, height - 120, -18.7);
  rotateY(radians(rotacionMercurio));
  if (rotacionMercurio > 360)
  {
    rotacionMercurio = 0;
  } else
  {
    rotacionMercurio += 0.0006;
  }

  rotateX(radians(anguloDeInclinacionMercurio));
  shape(esferaMercurioInf);
  popMatrix();

  // Venus en el apartado informativo
  pushMatrix();
  translate(670, height - 130, -37.3);
  rotateY(radians(rotacionVenus));
  if (rotacionVenus > 360)
  {
    rotacionVenus = 0;
  } else
  {
    rotacionVenus += 0.0003;
  }

  rotateX(radians(anguloDeInclinacionVenus));
  shape(esferaVenusInf);
  popMatrix();

  // La Tierra en el apartado informativo
  pushMatrix();
  translate(845, height - 130, -37.3);
  rotateY(radians(rotacionTierra));
  if (rotacionTierra > 360)
  {
    rotacionTierra = 0;
  } else
  {
    rotacionTierra += 0.1;
  }

  rotateX(radians(anguloDeInclinacionTierra));
  shape(esferaTierraInf);
  popMatrix();

  // Marte en el apartado informativo
  pushMatrix();
  translate(1020, height - 125, -29.87);
  rotateY(radians(rotacionMarte));
  if (rotacionMarte > 360)
  {
    rotacionMarte = 0;
  } else
  {
    rotacionMarte += 0.05;
  }

  rotateX(radians(anguloDeInclinacionMarte));
  shape(esferaMarteInf);
  popMatrix();

  // Jupiter en el apartado informativo
  pushMatrix();
  translate(1195, height - 165, -74.7);
  rotateY(radians(rotacionJupiter));
  if (rotacionJupiter > 360)
  {
    rotacionJupiter = 0;
  } else
  {
    rotacionJupiter += 1.2;
  }

  rotateX(radians(anguloDeInclinacionJupiter));
  shape(esferaJupiterInf);
  popMatrix();

  // Saturno en el apartado informativo
  pushMatrix();
  translate(1370, height - 165, -74.7);
  rotateY(radians(rotacionSaturno));
  if (rotacionSaturno > 360)
  {
    rotacionSaturno = 0;
  } else
  {
    rotacionSaturno += 1.0;
  }

  rotateX(radians(anguloDeInclinacionSaturno));
  shape(esferaSaturnoInf); 
  popMatrix();

  // Urano en el apartado informativo
  pushMatrix();
  translate(1545, height - 130, -37.3);
  rotateY(radians(rotacionUrano));
  if (rotacionUrano > 360)
  {
    rotacionUrano = 0;
  } else
  {
    rotacionUrano += 0.883;
  }

  rotateX(radians(anguloDeInclinacionUrano));
  shape(esferaUranoInf);
  popMatrix();

  // Neptuno en el apartado informativo
  pushMatrix();
  translate(1720, height - 130, -37.3);
  rotateY(radians(rotacionNeptuno));
  if (rotacionNeptuno > 360)
  {
    rotacionNeptuno = 0;
  } else
  {
    rotacionNeptuno += 0.58;
  }

  rotateX(radians(anguloDeInclinacionNeptuno));
  shape(esferaNeptunoInf);
  popMatrix();

  popMatrix();

  pushMatrix();

  ambientLight(255, 255, 255, width / 2, height / 2, 0);

  translate(width / 2, height / 4, -2500);

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

  pushMatrix();
  rotateX(radians(280));
  rotateZ(radians(-100));
  noStroke();
  ellipse(0, 0, 600, 600);
  popMatrix();

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
