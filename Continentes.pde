// Escenas de los continentes
// Africa título
PImage africaTituloImage;
PShape africaTituloShape;

// Europa título
PImage europaTituloImage;
PShape europaTituloShape;

// América título
PImage americaTituloImage;
PShape americaTituloShape;

// Asia título
PImage asiaTituloImage;
PShape asiaTituloShape;

// Oceanía título
PImage oceaniaTituloImage;
PShape oceaniaTituloShape;


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
  rect(width / 2, 0, width / 1.5, height / 0.3);

  noStroke();
  fill(245, 245, 220);
  ellipse(width / 2, -100, 1000, 1000);

  shape(africaTituloShape);

  // Información
  textAlign(LEFT);

  String africaTit1 = "EXTENSIÓN, POBLACIÓN Y PAÍSES DE ÁFRICA";
  textSize(35);
  fill(50);
  text(africaTit1, width / 2, 995, 1150, width / 1.75);
  String africaInf11 = "El continente africano posee una superficie de 30.300.000 kilómetros cuadrados, y se extiende desde el mar Mediterráneo al norte hasta el cabo Aguljas en el sur. Además, está rodeado por los océanos Atlántico e Índico, y separado de Asia por el mar Rojo y el istmo de Suez.";
  textSize(20);
  fill(50);
  text(africaInf11, width / 2, 1050, 1150, width / 1.75);
  String africaInf12 = "Los países más extensos del continente africano son: Argelia, con 2, 38 millones de kilómetros cuadrados, República Democrática de Congo con 2, 34 millones y Sudán con 1.8 millones.";
  textSize(20);
  fill(50);
  text(africaInf12, width / 2, 1140, 1150, width / 1.75);
  String africaInf13 = "En 2023 se estimó que la población total del continente asciende a 1447 millones de habitantes, lo que representa el 16, 5 % de la población mundial total. Los países más poblados son Nigeria con 218 millones de habitantes, Etiopía con 123 millones y Egipto con 110 millones.";
  textSize(20);
  fill(50);
  text(africaInf13, width / 2, 1225, 1150, width / 1.75);

  String africaTit2 = "CARACTERÍSTICAS FÍSIO-NATURALES DE ÁFRICA";
  textSize(35);
  fill(50);
  text(africaTit2, width / 2, 1345, 1150, width / 1.75);
  String africaInf21 = "África tiene una altitud promedio relativamente baja, de unos 650 metros sobre el nivel del mar. Este continente está atravesado por algunas cadenas montañosas, como los montes Atlas en el Norte, las montañas de Ahaggar y Tibesti en el desierto del Sahara y los montes de África Oriental donde se encuentra el monte Kilimanjaro, que con 5890 metros de altura es el punto más alto del continente.";
  textSize(20);
  fill(50);
  text(africaInf21, width / 2, 1400, 1150, width / 1.75);
  String africaInf22 =   "Por su ubicación en torno al ecuador y los trópicos de Cáncer y de Capricornio, el continente Africano tiene un clima predominantemente cálido.";
  textSize(20);
  fill(50);
  text(africaInf22, width / 2, 1515, 1150, width / 1.75);
  String africaInf23 = "Las regiones selváticas de África presentan una gran diversidad de especies animales y vegetales. La sabana africana, por su parte, también posee una gran diversidad de fauna pero se caracteriza además por ser la única ecorregión del mundo que alberga animales de gran porte como las jirafas, los elefantes y los rinocerontes.";
  textSize(20);
  fill(50);
  text(africaInf23, width / 2, 1600, 1150, width / 1.75);

  String africaTit3 = "CULTURA Y RELIGIÓN";
  textSize(35);
  fill(50);
  text(africaTit3, width / 2, 1720, 1150, width / 1.75);
  String africaInf31 =  "África es un continente culturalmente muy diverso. La historia colonial europea, la expansión del mundo árabe y la cultura de los pueblos originarios africanos dejaron en la población una multiplicidad de lenguas que se hablan en distintas regiones del continente. Los idiomas más hablados son el arabe, el inglés, el francés, el Suajili y el Oromo.";
  textSize(20);
  fill(50);
  text(africaInf31, width / 2, 1775, 1150, width / 1.75);
  String africaInf32 = "Las dos religiones predominantes del continente son el cristianismo, con el 43 % de la población, en especial en la región sur y oeste, y el islam, con el 40 %, especialmente en el norte y en el este. El resto de la población profesa religiones tradicionales africanas, el hinduismo, el budismo y el judaísmo.";
  textSize(20);
  fill(50);
  text(africaInf32, width / 2, 1890, 1150, width / 1.75);

  String africaTit4 = "ACTIVIDADES ECONÓMICAS DE ÁFRICA";
  textSize(35);
  fill(50);
  text(africaTit4, width / 2, 2010, 1150, width / 1.75);
  String africaInf41 = "África es un continente rico en recursos naturales y por esa razón la mayoría de las economías de los países africanos se basan en actividades primarias como la agricultura, la pesca y la minería. En algunas regiones estas actividades son la principal fuente de empleo.";
  textSize(20);
  fill(50);
  text(africaInf41, width / 2, 2065, 1150, width / 1.75);

  String africaFuente = "Fuente: https://humanidades.com/africa/";
  textSize(15);
  fill(50);
  text(africaFuente, width / 2, 2240, 1150, width / 1.75);
}

// Europa
// Escena del continente europeo
void escenaEuropa() {

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
  rect(width / 2, 0, width / 1.5, height / 0.3);

  noStroke();
  fill(245, 245, 220);
  ellipse(width / 2, -100, 1000, 1000);

  shape(europaTituloShape);

  // Información
  textAlign(LEFT);

  String europaTit1 = "EXTENSIÓN, POBLACIÓN Y PAÍSES DE EUROPA";
  textSize(35);
  fill(50);
  text(europaTit1, width / 2, 995, 1150, width / 1.75);
  String europaInf11 = "Europa tiene una extensión de 10,18 millones de kilómetros cuadrados. Después de Oceanía, es el continente más pequeño del planeta. A pesar de su reducido tamaño en relación al resto, Europa es un continente densamente poblado, con más de 750 millones de personas. ";
  textSize(20);
  fill(50);
  text(europaInf11, width / 2, 1050, 1150, width / 1.75);
  String europaInf12 = "La población total del continente asciende a algo más de 740 millones de habitantes, lo que representa el 9,4 % del total mundial. Los países más poblados son Rusia con 143 millones de habitantes, Turquía con 84,7 millones y Alemania con 84,3 millones.";
  textSize(20);
  fill(50);
  text(europaInf12, width / 2, 1140, 1150, width / 1.75);
  String europaInf13 = "Europa está conformado por 47 países y otros Estados como Mónaco, San Marino o el Vaticano, que son territorios con estatus especiales reconocidos por la comunidad internacional. ";
  textSize(20);
  fill(50);
  text(europaInf13, width / 2, 1225, 1150, width / 1.75);

  String europaTit2 = "CARACTERÍSTICAS FÍSIO-NATURALES DE EUROPA";
  textSize(35);
  fill(50);
  text(europaTit2, width / 2, 1345, 1150, width / 1.75);
  String europaInf21 = "Desde el sur hacia el norte las temperaturas en el continente europeo tienden a reducirse. Europa incluye climas templados en las cercanías del mar Mediterráneo y climas fríos polares en el norte del continente. Las precipitaciones son abundantes en el centro y norte del continente, y tienden a disminuir hacia el sur por la influencia del clima mediterráneo, que se caracteriza por tener un verano muy cálido y muy seco. ";
  textSize(20);
  fill(50);
  text(europaInf21, width / 2, 1400, 1150, width / 1.75);
  String europaInf22 = "Como resultado de la gran variedad de relieves y del tipo de clima templado y lluvioso que predomina, el continente europeo presenta gran cantidad de ríos de distinto caudal y extensión. Los más largos de Europa son el Volga, con 3500 kilómetros de extensión, el Danubio, con 2850 kilómetros y el Ural con 2430 kilómetros. ";
  textSize(20);
  fill(50);
  text(europaInf22, width / 2, 1540, 1150, width / 1.75);
  String europaInf23 = "Otros ríos de menor extensión pero muy importantes para la historia y la economía europea son el Rin, el Elba, el Sena, el Támesis, el Po y el Ebro. ";
  textSize(20);
  fill(50);
  text(europaInf23, width / 2, 1650, 1150, width / 1.75);

  String europaTit3 = "CULTURA Y RELIGIÓN EN EUROPA";
  textSize(35);
  fill(50);
  text(europaTit3, width / 2, 1720, 1150, width / 1.75);
  String europaInf31 =  "El continente europeo es considerado la cuna de la civilización occidental, a partir de la cual se expandieron hacia el mundo valores y modelos políticos, culturales, sociales e ideológicos. Es un conjunto muy complejo de sociedades y Estados históricamente enfrentados por conflictos sociales, culturales y económicos, por lo que tienen una larga tradición de guerras y disputas territoriales. ";
  textSize(20);
  fill(50);
  text(europaInf31, width / 2, 1775, 1150, width / 1.75);
  String europaInf32 = "La religión predominante en Europa es el cristianismo. Las religiones cristianas más difundidas son la ortodoxa (principalmente en Rusia, Grecia y Ucrania), la protestante (en Gran Bretaña y parte de Alemania y Suiza) y la católica (en España, Italia, Portugal y el Vaticano, entre otros países). ";
  textSize(20);
  fill(50);
  text(europaInf32, width / 2, 1890, 1150, width / 1.75);

  String europaTit4 = "ACTIVIDADES ECONÓMICAS DE EUROPA";
  textSize(35);
  fill(50);
  text(europaTit4, width / 2, 2010, 1150, width / 1.75);
  String europaInf41 = "Europa es una de las regiones más desarrolladas del mundo, con una economía diversificada y altamente avanzada. Entre los países más desarrollados de Europa se encuentran Alemania, Francia, Reino Unido, Rusia, Italia y Países Bajos. ";
  textSize(20);
  fill(50);
  text(europaInf41, width / 2, 2065, 1150, width / 1.75);

  String europaFuente = "Fuente: https://humanidades.com/europa/";
  textSize(15);
  fill(50);
  text(europaFuente, width / 2, 2240, 1150, width / 1.75);
}

// América
// Escena del continente americano
void escenaAmerica() {

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
  rect(width / 2, 0, width / 1.5, height / 0.3);

  noStroke();
  fill(245, 245, 220);
  ellipse(width / 2, -100, 1000, 1000);

  shape(americaTituloShape);

  // Información
  textAlign(LEFT);

  String americaTit1 = "EXTENSIÓN, POBLACIÓN Y PAÍSES DE AMÉRICA";
  textSize(35);
  fill(50);
  text(americaTit1, width / 2, 995, 1150, width / 1.75);
  String americaInf11 = "El continente americano posee una superficie de 43.316.000 km2, y se extiende desde los desiertos helados de Alaska y Groenlandia hasta el sur de la Patagonia, lo cual representa un 8,4 % de la superficie planetaria total y el 28,3% de la superficie continental absoluta. Limita en el norte con el océano Ártico, al este con el océano Atlántico, al oeste con el océano Pacífico y al sur con la Antártida.";
  textSize(20);
  fill(50);
  text(americaInf11, width / 2, 1055, 1150, width / 1.75);
  String americaInf12 = "Se divide, según sus características estructurales y geológicas, en dos grandes masas continentales de forma triangular unidas por una porción de tierra angosta y alargada. El sector norte recibe el nombre de América del Norte, el sector sur América del Sur, y el istmo que los une se llama América Central.";
  textSize(20);
  fill(50);
  text(americaInf12, width / 2, 1165, 1150, width / 1.75);
  String americaInf13 = "América está compuesta por 35 países independientes y por más de 20 territorios dependientes de otros países. La mayoría de esos territorios dependientes pertenecen políticamente a Francia, Inglaterra, Países Bajos y Estados Unidos. ";
  textSize(20);
  fill(50);
  text(americaInf13, width / 2, 1275, 1150, width / 1.75);

  String americaTit2 = "HISTORIA DE AMÉRICA";
  textSize(35);
  fill(50);
  text(americaTit2, width / 2, 1345, 1150, width / 1.75);
  String americaInf21 = "El periodo precolombino es el tiempo anterior a la llegada de los europeos, en el siglo XV. Durante este periodo, las culturas indígenas americanas se desarrollaron en diferentes regiones del continente: los aztecas y los mayas en América del Norte y América Central, los incas en los Andes y un gran número de pueblos nómades distribuidos por todo el continente.";
  textSize(20);
  fill(50);
  text(americaInf21, width / 2, 1400, 1150, width / 1.75);
  String americaInf22 = "El periodo coloniabl comenzó con la llegada de los europeos en el siglo XV y duró hasta principios del siglo XIX. Durante este tiempo, las potencias europeas colonizaron América e impusieron diferentes sistemas políticos, religiones y lenguas en todo el continente.";
  textSize(20);
  fill(50);
  text(americaInf22, width / 2, 1515, 1150, width / 1.75);
  String americaInf23 = "El periodo republicano comenzó en el siglo XIX, cuando los países americanos comenzaron a luchar por su independencia y formaron sus propias naciones. Durante este periodo los países americanos experimentaron una serie de cambios políticos, económicos y sociales como la abolición de la esclavitud, la lucha por la igualdad de derechos y la modernización económica.";
  textSize(20);
  fill(50);
  text(americaInf23, width / 2, 1600, 1150, width / 1.75);

  String americaTit3 = "CARACTERÍSTICAS FÍSIO-NATURALES DE AMÉRICA";
  textSize(35);
  fill(50);
  text(americaTit3, width / 2, 1720, 1150, width / 1.75);
  String americaInf31 =  "Debido a su extensa latitud y su gran superficie, América cuenta con una gran variedad de ambientes y climas. Existen climas fríos en los extremos norte y sur, templados en las zonas de latitudes medias y cálidos en las cercanías al ecuador y los trópicos. ";
  textSize(20);
  fill(50);
  text(americaInf31, width / 2, 1775, 1150, width / 1.75);
  String americaInf32 = "La cordillera de los Andes, que atraviesa al continente de norte a sur también condiciona las características climáticas, ya que la altura produce que las temperaturas desciendan. Por esa razón las zonas cordilleranas del continente americano también presentan climas fríos. ";
  textSize(20);
  fill(50);
  text(americaInf32, width / 2, 1855, 1150, width / 1.75);

  String americaTit4 = "ACTIVIDADES ECONÓMICAS DE AMÉRICA";
  textSize(35);
  fill(50);
  text(americaTit4, width / 2, 2010, 1150, width / 1.75);
  String americaInf41 = "El desarrollo económico entre los países americanos es muy desigual. Mientras que las actividades primarias predominan en la mayoría de los países latinoamericanos, en los países anglosajones, especialmente en Estados Unidos y Canadá, predominan actividades vinculadas a las actividades secundarias y terciarias, con gran influencia en los mercados mundiales. ";
  textSize(20);
  fill(50);
  text(americaInf41, width / 2, 2065, 1150, width / 1.75);

  String americaFuente = "Fuente: https://humanidades.com/america/";
  textSize(15);
  fill(50);
  text(americaFuente, width / 2, 2240, 1150, width / 1.75);
}

// Asia
// Escena del continente asiático
void escenaAsia() {

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
  rect(width / 2, 0, width / 1.5, height / 0.3);

  noStroke();
  fill(245, 245, 220);
  ellipse(width / 2, -100, 1000, 1000);

  shape(asiaTituloShape);

  // Información
  textAlign(LEFT);

  String asiaTit1 = "EXTENSIÓN, POBLACIÓN Y PAÍSES DE ASIA";
  textSize(35);
  fill(50);
  text(asiaTit1, 410, 500, width - 410, 500);
  String asiaInf11 = "El continente asiático forma parte de la masa continental llamada Eurasia que comparte junto con el continente europeo y que se conecta con el continente africano a través del canal de Suez. Limita con el océano Glacial Ártico al norte, el océano Índico al sur, el océano Pacífico al este y los montes Urales al oeste. Tiene una superficie total aproximada de 44,5 millones de kilómetros cuadrados. ";
  textSize(20);
  fill(50);
  text(asiaInf11, 410, 555, width - 785, 555);
  String asiaInf12 = "Asia está compuesta por 48 países, entre los que se encuentran algunos de los más extensos y poblados del planeta. ";
  textSize(20);
  fill(50);
  text(asiaInf12, 410, 670, width - 785, 670);
  String asiaInf13 = "La población total del continente asciende a más de 4500 millones de habitantes, lo que lo convierte en el de mayor población del mundo.";
  textSize(20);
  fill(50);
  text(asiaInf13, 410, 720, width - 785, 720);

  String asiaTit2 = "CARACTERÍSTICAS FÍSIO-NATURALES DE ASIA";
  textSize(35);
  fill(50);
  text(asiaTit2, 410, 810, width - 850, 500);
  String asiaInf21 = "Hacia el norte del Himalaya se encuentran extensas mesetas como la de Gobi, que abarca gran parte de la superficie de China. Hacia el norte y el este del continente el relieve predominante es de llanura, entre las que se destacan la llanura de Siberia Occidental, la llanura China Septentrional y la llanura China Meridional. ";
  textSize(20);
  fill(50);
  text(asiaInf21, 410, 870, width - 785, 870);
  String asiaInf22 = "Por su gran extensión latitudinal, los climas de Asia son muy variados. Presenta climas cálidos y húmedos en el sur, en las zonas ecuatoriales, desiertos cálidos y secos en las zonas tropicales, templados y húmedos en zonas de latitudes medias, fríos y húmedos en zonas de mayor latitud y fríos polares en el norte de Rusia. Además, su gran extensión determina que haya grandes superficies muy alejadas de la influencia del mar, lo que determina un clima muy seco y con grandes amplitudes térmicas. ";
  textSize(20);
  fill(50);
  text(asiaInf22, 410, 980, width - 785, 980);
  String asiaInf23 = "La extensión de su superficie y lo húmedo de la mayoría de sus climas también determina la presencia de grandes cuencas hidrográficas y extensos ríos, como el río Yangtsé, que con más de 6300 kilómetros de extensión es uno de los más largos del mundo, el río Amarillo con 5400 y el Mekong con 4880. ";
  textSize(20);
  fill(50);
  text(asiaInf23, 410, 1120, width - 785, 1120);

  String asiaTit3 = "CULTURA Y RELIGIÓN EN ASIA";
  textSize(35);
  fill(50);
  text(asiaTit3, 410, 1225, width - 850, 1225);
  String asiaInf31 =  "El idioma más hablado en Asia es el chino mandarín, con más de 1000 millones de personas que lo utilizan en China y otros países del continente. El segundo es el hindi, el idioma oficial de la India. El árabe, en el sur del continente, y el bengalí, en Bangladesh, son también idiomas utilizados por millones de personas. ";
  textSize(20);
  fill(50);
  text(asiaInf31, 410, 1280, width - 785, 1280);
  String asiaInf32 = "Asia es considerada la cuna de las principales religiones del mundo, como el judaísmo, el cristianismo, el islamismo, el budismo y el hinduismo. El vasto continente tiene diversas ciudades y sitios sagrados con obras arquitectónicas únicas que representan diferentes creencias. Muchas son consideradas Patrimonio de la Humanidad y, junto con los paisajes naturales, son uno de los principales atractivos turísticos. ";
  textSize(20);
  fill(50);
  text(asiaInf32, 410, 1390, width - 785, 1390);

  String asiaTit4 = "ACTIVIDADES ECONÓMICAS DE ASIA";
  textSize(35);
  fill(50);
  text(asiaTit4, 410, 1515, width - 850, 1515);
  String asiaInf41 = "China y Japón son dos de las principales potencias económicas del mundo. Estos dos países, junto a los denominados <<tigres asiáticos>> (Hong Kong, Singapur, Corea del Sur, Taiwán, Malasia, Tailandia, Indonesia y Filipinas) son los más desarrollados económicamente del continente. ";
  textSize(20);
  fill(50);
  text(asiaInf41, 410, 1570, width - 785, 1570);

  String asiaFuente = "Fuente: https://humanidades.com/asia/";
  textSize(15);
  fill(50);
  text(asiaFuente, 410, 1695, width - 785, 1695);
}

// Oceania
// Escena del continente oaceánico
void escenaOceania() {

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
  rect(width / 2, 0, width / 1.5, height / 0.3);

  noStroke();
  fill(245, 245, 220);
  ellipse(width / 2, -100, 1000, 1000);

  shape(oceaniaTituloShape);

  // Información
  textAlign(LEFT);

  String oceaniaTit1 = "EXTENSIÓN, POBLACIÓN Y PAÍSES DE OCEANÍA";
  textSize(35);
  fill(50);
  text(oceaniaTit1, 410, 500, width - 410, 500);
  String oceaniaInf11 = "La mayor parte de la superficie de Oceanía se encuentra en el océano Pacífico, relativamente aislada del resto de los continentes. En un radio de 8000 kilómetros desde Wellington, la capital de Nueva Zelanda, solo aparecen Australia, algunas islas del sudeste asiático y la Antártida. ";
  textSize(20);
  fill(50);
  text(oceaniaInf11, 410, 555, width - 785, 555);
  String oceaniaInf12 = "Oceanía tiene una superficie total de 8,7 millones de kilómetros cuadrados, de los cuales 7,7 millones corresponden a Australia, el país más grande del continente y el sexto más extenso del mundo. ";
  textSize(20);
  fill(50);
  text(oceaniaInf12, 410, 660, width - 785, 660);
  String oceaniaInf13 = "Además de Australia, Papúa Nueva Guinea, Nueva Zelanda y Tasmania (que pertenece a Australia), que son las islas más importantes del continente, el resto de Oceanía está conformada por miles de pequeñas islas. Se trata de países y colonias muy pequeñas y muy aisladas entre sí y del resto del mundo. ";
  textSize(20);
  fill(50);
  text(oceaniaInf13, 410, 740, width - 785, 740);

  String oceaniaTit2 = "CARACTERÍSTICAS FÍSIO-NATURALES DE OCEANÍA";
  textSize(35);
  fill(50);
  text(oceaniaTit2, 410, 850, width - 850, 500);
  String oceaniaInf21 = "La mayor parte de Oceanía tiene un clima cálido y seco, que son las condiciones climáticas que tiene Australia, el país que ocupa más del 85 % de su superficie. Este extenso país tiene gran parte de su territorio ocupado por desiertos cálidos y secos, con temperaturas elevadas y precipitaciones que no superan los 350 milímetros anuales. ";
  textSize(20);
  fill(50);
  text(oceaniaInf21, 410, 905, width - 785, 905);
  String oceaniaInf22 = "Nueva Zelanda y las islas de Micronesia, Melanesia y Polinesia, que se encuentran en latitudes más australes, tienen un clima más templado y lluvioso. ";
  textSize(20);
  fill(50);
  text(oceaniaInf22, 410, 1015, width - 785, 1015);
  String oceaniaInf23 = "Las condiciones climáticas determinan las características hidrológicas de Oceanía. No existen en el continente grandes cursos de agua. El más extenso es el río Murray, en Australia, con unos 2500 kilómetros de extensión. En las zonas montañosas y volcánicas los ríos tienen mucha pendiente y velocidad y son utilizados para producir energía hidroeléctrica. En las pequeñas islas del Pacífico la pequeña superficie no permite el desarrollo de grandes cursos de agua. ";
  textSize(20);
  fill(50);
  text(oceaniaInf23, 410, 1095, width - 785, 1095);

  String oceaniaTit3 = "CULTURA Y RELIGIÓN DE OCEANÍA";
  textSize(35);
  fill(50);
  text(oceaniaTit3, 410, 1225, width - 850, 1225);
  String oceaniaInf31 =  "Los idiomas que más se habla en Oceanía son el inglés, el Tok Pisin, el Hindi y el Francés.";
  textSize(20);
  fill(50);
  text(oceaniaInf31, 410, 1280, width - 785, 1280);
  String oceaniaInf32 = "En cuanto a la religión, la mayoría de la población de Oceanía practica el cristianismo protestante. Esto se debe a que muchos países oceánicos fueron colonias inglesas y en Inglaterra la mayoría de la gente es de religión protestante. En segundo lugar, el cristianismo católico también está muy presente, y en mucha menor medida le siguen otras religiones como el islamismo, el budismo, el hinduismo y las religiones que profesan los pueblos originarios de Oceanía. ";
  textSize(20);
  fill(50);
  text(oceaniaInf32, 410, 1320, width - 785, 1320);

  String oceaniaTit4 = "FLORA Y FAUNA DE OCEANÍA";
  textSize(35);
  fill(50);
  text(oceaniaTit4, 410, 1515, width - 850, 1515);
  String oceaniaInf41 = "Respecto de la flora y fauna, existe en Oceanía una importante biodiversidad en sus ecosistemas tropicales, subtropicales, marinos, de tundra y de alta montaña. Estos ecosistemas se caracterizan por las numerosas especies endémicas que alojan, como los koalas, los canguros, los demonios de Tasmania, los ornitorrincos y los possum de cola de escoba.";
  textSize(20);
  fill(50);
  text(oceaniaInf41, 410, 1570, width - 785, 1570);

  String oceaniaFuente = "Fuente: https://humanidades.com/oceania/";
  textSize(15);
  fill(50);
  text(oceaniaFuente, 410, 1695, width - 785, 1695);
}
