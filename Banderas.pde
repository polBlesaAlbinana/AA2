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


// América
// USA
PImage usaFlag;
PShape usaShape;
// Perú
PImage peruFlag;
PShape peruShape;
// Cuba
PImage cubaFlag;
PShape cubaShape;
// Argentina
PImage argentinaFlag;
PShape argentinaShape;
// México
PImage mexicoFlag;
PShape mexicoShape;
// Brasil
PImage brasilFlag;
PShape brasilShape;
// Honduras
PImage hondurasFlag;
PShape hondurasShape;


// Asia
// Japón
PImage japonFlag;
PShape japonShape;
// Indonesia
PImage indonesiaFlag;
PShape indonesiaShape;
// India
PImage indiaFlag;
PShape indiaShape;
// Vietnam
PImage vietnamFlag;
PShape vietnamShape;
// China
PImage chinaFlag;
PShape chinaShape;
// Israel
PImage israelFlag;
PShape israelShape;
// Cambodja
PImage cambodjaFlag;
PShape cambodjaShape;


// Oceanía
// Australia
PImage australiaFlag;
PShape australiaShape;
// Nueva Zelanda
PImage nuevaZelandaFlag;
PShape nuevaZelandaShape;
// Fiyi
PImage fiyiFlag;
PShape fiyiShape;
// Papúa Nueva Guinea
PImage papuaNuevaGuineaFlag;
PShape papuaNuevaGuineaShape;
// Tonga
PImage tongaFlag;
PShape tongaShape;
// Kiribati
PImage kiribatiFlag;
PShape kiribatiShape;
// Tuvalu
PImage tuvaluFlag;
PShape tuvaluShape;



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
  text("PAÍSES ALREDEDOR DEL MUNDO", 10, 10);

  // Nombre de los continentes
  // África
  textAlign (LEFT, CENTER);
  textSize(35);
  fill(255, 0, 0);
  text("África", 40, 60);
  // Europa
  textSize(35);
  fill(255, 0, 0);
  text("Europa", 40, 384);
  // América
  textSize(35);
  fill(255, 0, 0);
  text("América", 40, 713);
  //Asia
  textSize(35);
  fill(255, 0, 0);
  text("Asia", 40, 1037);
  // Oceanía
  textSize(35);
  fill(255, 0, 0);
  text("Oceanía", 40, 1371);

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

  // América
  // USA
  shape(usaShape);
  textSize(20);
  fill(255);
  text("USA", 222.78, 977.6);
  // Perú
  shape(peruShape);
  textSize(20);
  fill(255);
  text("PERÚ", 623.38, 977.6);
  // Cuba
  shape(cubaShape);
  textSize(20);
  fill(255);
  text("CUBA", 1023.98, 977.6);
  // Argentina
  shape(argentinaShape);
  textSize(20);
  fill(255);
  text("ARGENTINA", 1424.54, 977.6);
  // México
  shape(mexicoShape);
  textSize(20);
  fill(255);
  text("MÉXICO", 1825.1, 977.6);
  // Brasil
  shape(brasilShape);
  textSize(20);
  fill(255);
  text("BRASIL", 2225.66, 977.6);
  // Honduras
  shape(hondurasShape);
  textSize(20);
  fill(255);
  text("HONDURAS", 2626.24, 977.6);

  // Asia
  // Japón
  shape(japonShape);
  textSize(20);
  fill(255);
  text("JAPÓN", 222.78, 1308.6);
  // Indonesia
  shape(indonesiaShape);
  textSize(20);
  fill(255);
  text("INDONESIA", 623.38, 1308.6);
  // India
  shape(indiaShape);
  textSize(20);
  fill(255);
  text("INDIA", 1023.98, 1308.6);
  // Vietnam
  shape(vietnamShape);
  textSize(20);
  fill(255);
  text("VIETNAM", 1424.54, 1308.6);
  // China
  shape(chinaShape);
  textSize(20);
  fill(255);
  text("CHINA", 1825.1, 1308.6);
  // Israel
  shape(israelShape);
  textSize(20);
  fill(255);
  text("ISRAEL", 2225.66, 1308.6);
  // Cambodja
  shape(cambodjaShape);
  textSize(20);
  fill(255);
  text("CAMBODJA", 2626.24, 1308.6);
  
  // Oceanía
  // Australia
  shape(australiaShape);
  textSize(20);
  fill(255);
  text("AUSTRALIA", 222.78, 1639.6);
  // Nueva Zelanda
  shape(nuevaZelandaShape);
  textSize(20);
  fill(255);
  text("NUEVA ZELANDA", 623.38, 1639.6);
  // Fiyi
  shape(fiyiShape);
  textSize(20);
  fill(255);
  text("FIYI", 1023.98, 1639.6);
  // Papúa Nueva Guinea
  shape(papuaNuevaGuineaShape);
  textSize(20);
  fill(255);
  text("PAPÚA NUEVA GUINEA", 1424.54, 1639.6);
  // Tonga
  shape(tongaShape);
  textSize(20);
  fill(255);
  text("TONGA", 1825.1, 1639.6);
  // Kiribati
  shape(kiribatiShape);
  textSize(20);
  fill(255);
  text("KIRIBATI", 2225.66, 1639.6);
  // Tuvalu
  shape(tuvaluShape);
  textSize(20);
  fill(255);
  text("TUVALU", 2626.24, 1639.6);
}
