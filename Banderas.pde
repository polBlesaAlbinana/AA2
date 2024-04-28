// Escena Banderas
float banderasX = 355.56;
float banderasY = 200.0;


// África
// Marruecos
PImage marruecosFlag;
PShape marruecosShape;
// Sudafrica
PImage sudafricaFlag;
PShape sudafricaShape;
// Egipto
PImage egiptoFlag;
PShape egiptoShape;
//Nigeria
PImage nigeriaFlag;
PShape nigeriaShape;
// Uganda
PImage ugandaFlag;
PShape ugandaShape;
// Kenia
PImage keniaFlag;
PShape keniaShape;
// Madagascar
PImage madagascarFlag;
PShape madagascarShape;


// Europa
// Inglaterra
PImage inglaterraFlag;
PShape inglaterraShape;
// Francia
PImage franciaFlag;
PShape franciaShape;
// Alemania
PImage alemaniaFlag;
PShape alemaniaShape;
// Paises Bajos
PImage paisesBajosFlag;
PShape paisesBajosShape;
// España
PImage espanyaFlag;
PShape espanyaShape;
// Ucrania
PImage ucraniaFlag;
PShape ucraniaShape;
// Italia
PImage italiaFlag;
PShape italiaShape;



void escenaBanderas() {

  cursor(CROSS);

  translate(-mouseX * 0.5, -mouseY * 0.55);

  pushMatrix();
  translate(0, 0, -500);
  for (int counter = 0; counter < amount_estrellas; counter++) {
    fill(255);
    ellipse(estrellas_x[counter], estrellas_y[counter], radius_estrellas, radius_estrellas);
  }
  popMatrix();

  // Título
  textAlign(LEFT, CENTER);
  textSize(20);
  fill(255);
  text("PAISES MÁS RECONOCIDOS DEL MUNDO", 10, 10);

  // Nombre de los continentes
  // África
  textAlign (LEFT, CENTER);
  textSize(35);
  fill(255, 0, 0);
  text("África", 40, 45);
  // Europa
  textSize(35);
  fill(255, 0, 0);
  text("Europa", 40, 369);
  // América
  textSize(35);
  fill(255, 0, 0);
  text("América", 40, 693);
  //Asia
  textSize(35);
  fill(255, 0, 0);
  text("Asia", 40, 1017);
  // Oceanía
  textSize(35);
  fill(255, 0, 0);
  text("Oceanía", 40, 1341);

  // Continentes y sus paises
  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  // África
  // Marruecos
  shape(marruecosShape);
  textSize(20);
  fill(255);
  text("MARRUECOS", 222.78, 315.6);
  // Sudáfrica
  shape(sudafricaShape);
  textSize(20);
  fill(255);
  text("SUDÁFRICA", 623.38, 315.6);
  // Egipto
  shape(egiptoShape);
  textSize(20);
  fill(255);
  text("EGIPTO", 1023.98, 315.6);
  // Nigeria
  shape(nigeriaShape);
  textSize(20);
  fill(255);
  text("NIGERIA", 1424.54, 315.6);
  // Uganda
  shape(ugandaShape);
  textSize(20);
  fill(255);
  text("UGANDA", 1825.1, 315.6);
  // Kenia
  shape(keniaShape);
  textSize(20);
  fill(255);
  text("KENIA", 2225.66, 315.6);
  // Madagascar
  shape(madagascarShape);
  textSize(20);
  fill(255);
  text("MADAGASCAR", 2626.24, 315.6);

  // Europa
  // Inglaterra
  shape(inglaterraShape);
  textSize(20);
  fill(255);
  text("INGLATERRA", 222.78, 646.6);
  // Francia
  shape(franciaShape);
  textSize(20);
  fill(255);
  text("FRANCIA", 623.38, 646.6);
  // Alemania
  shape(alemaniaShape);
  textSize(20);
  fill(255);
  text("ALEMANIA", 1023.98, 646.6);
  // Paises Bajos
  shape(paisesBajosShape);
  textSize(20);
  fill(255);
  text("PAISES BAJOS", 1424.54, 646.6);
  // Espanya
  shape(espanyaShape);
  textSize(20);
  fill(255);
  text("ESPAÑA", 1825.1, 646.6);
  // Ucrania
  shape(ucraniaShape);
  textSize(20);
  fill(255);
  text("UCRANIA", 2225.66, 646.6);
  // Italia
  shape(italiaShape);
  textSize(20);
  fill(255);
  text("ITALIA", 2626.24, 646.6);
}
