// Escenas de los continentes
PImage africaTituloImage;
PShape africaTituloShape;

// Escena del continente africano
void escenaAfrica() {

  // Sin cursor
  noCursor();
  translate(0, -mouseY * 0.6);

  // Fondo de la pantalla en esta escena
  background(0);

  pushMatrix();
  translate(0, 0, -500);
  for (int counter = 0; counter < amount_estrellas; counter++) {
    fill(255);
    ellipse(estrellas_x[counter], estrellas_y[counter], radius_estrellas, radius_estrellas);
  }
  popMatrix();

  // Edición del estilo del fondo de la escena
  shapeMode(CENTER);

  strokeWeight(2.5);
  stroke(180);
  fill(255, 255, 240);
  rect(width / 6, 0, width / 1.5, height / 0.5);

  noStroke();
  fill(245, 245, 220);
  ellipse(width / 2, -50, 1000, 1000);

  shape(africaTituloShape);

  // Información
  textAlign(LEFT);

  String africaTit1 = "EXTENSIÓN, POBLACIÓN Y PAÍSES DE ÁFRICA";
  textSize(35);
  fill(50);
  text(africaTit1, 410, 500, width - 410, 500);
  String africaInf11 = "El continente africano posee una superficie de 30.300.000 kilómetros cuadrados, y se extiende desde el mar Mediterráneo al norte hasta el cabo Aguljas en el sur. Además, está rodeado por los océanos Atlántico e Índico, y separado de Asia por el mar Rojo y el istmo de Suez.";
  textSize(20);
  fill(50);
  text(africaInf11, 410, 555, width - 785, 555);
  String africaInf12 = "Los países más extensos del continente africano son: Argelia, con 2, 38 millones de kilómetros cuadrados, República Democrática de Congo con 2, 34 millones y Sudán con 1.8 millones.";
  textSize(20);
  fill(50);
  text(africaInf12, 410, 645, width - 785, 645);
  String africaInf13 = "En 2023 se estimó que la población total del continente asciende a 1447 millones de habitantes, lo que representa el 16, 5 % de la población mundial total. Los países más poblados son Nigeria con 218 millones de habitantes, Etiopía con 123 millones y Egipto con 110 millones.";
  textSize(20);
  fill(50);
  text(africaInf13, 410, 730, width - 785, 730);

  String africaTit2 = "CARACTERÍSTICAS FÍSIO-NATURALES DE ÁFRICA";
  textSize(35);
  fill(50);
  text(africaTit2, 410, 850, width - 850, 500);
  String africaInf21 = "África tiene una altitud promedio relativamente baja, de unos 650 metros sobre el nivel del mar. Este continente está atravesado por algunas cadenas montañosas, como los montes Atlas en el Norte, las montañas de Ahaggar y Tibesti en el desierto del Sahara y los montes de África Oriental donde se encuentra el monte Kilimanjaro, que con 5890 metros de altura es el punto más alto del continente.";
  textSize(20);
  fill(50);
  text(africaInf21, 410, 905, width - 785, 905);
  String africaInf22 =   "Por su ubicación en torno al ecuador y los trópicos de Cáncer y de Capricornio, el continente Africano tiene un clima predominantemente cálido.";
  textSize(20);
  fill(50);
  text(africaInf22, 410, 1020, width - 785, 1020);
  String africaInf23 = "Las regiones selváticas de África presentan una gran diversidad de especies animales y vegetales. La sabana africana, por su parte, también posee una gran diversidad de fauna pero se caracteriza además por ser la única ecorregión del mundo que alberga animales de gran porte como las jirafas, los elefantes y los rinocerontes.";
  textSize(20);
  fill(50);
  text(africaInf23, 410, 1105, width - 785, 1105);

  String africaTit3 = "CULTURA Y RELIGIÓN";
  textSize(35);
  fill(50);
  text(africaTit3, 410, 1225, width - 850, 1225);
  String africaInf31 =  "África es un continente culturalmente muy diverso. La historia colonial europea, la expansión del mundo árabe y la cultura de los pueblos originarios africanos dejaron en la población una multiplicidad de lenguas que se hablan en distintas regiones del continente. Los idiomas más hablados son el arabe, el inglés, el francés, el Suajili y el Oromo.";
  textSize(20);
  fill(50);
  text(africaInf31, 410, 1280, width - 785, 1280);
  String africaInf32 = "Las dos religiones predominantes del continente son el cristianismo, con el 43 % de la población, en especial en la región sur y oeste, y el islam, con el 40 %, especialmente en el norte y en el este. El resto de la población profesa religiones tradicionales africanas, el hinduismo, el budismo y el judaísmo.";
  textSize(20);
  fill(50);
  text(africaInf32, 410, 1395, width - 785, 1395);

  String africaTit4 = "ACTIVIDADES ECONÓMICAS DE ÁFRICA";
  textSize(35);
  fill(50);
  text(africaTit4, 410, 1515, width - 850, 1515);
  String africaInf41 = "África es un continente rico en recursos naturales y por esa razón la mayoría de las economías de los países africanos se basan en actividades primarias como la agricultura, la pesca y la minería. En algunas regiones estas actividades son la principal fuente de empleo.";
  textSize(20);
  fill(50);
  text(africaInf41, 410, 1570, width - 785, 1570);

  String africaFuente = "Fuente: https://humanidades.com/africa/";
  textSize(15);
  fill(50);
  text(africaFuente, 410, 1695, width - 785, 1695);
}

// Europa
/*

 */

// América
/*

 */

// Asia
/*

 */

// Oceania
/*

 */
