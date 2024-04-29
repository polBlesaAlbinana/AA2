//PRÁCTICA AA2: Alfredo Ugarte y Pol Blesa

//enum EstadoPantalla {
//  MENU, SISTEMA_SOLAR, BANDERAS, RECETAS, EDUCACION, CONTINENTES
//}

//EstadoPantalla estadoActual;
// Definición de la enumeración para las escenas
enum EstadoPantalla {
  MENU, SISTEMA_SOLAR, BANDERAS, RECETAS, EDUCACION, CONTINENTES, INJERA, CREPES, POLLO_TANDOORI, TARTA_PAVLOVA, AREPAS, AFRICA, EUROPA, ASIA, OCEANIA, AMERICA
}

// Variable para el estado estadoActual de la pantalla
EstadoPantalla estadoActual = EstadoPantalla.MENU; // Comienza en el menú

// Inicialización estrellas del menú principal
int[] estrellas_x;
int[] estrellas_y;
int amount_estrellas = (int)random(75, 150);
float radius_estrellas = 2.5;

// Parámetros para el posicionamiento de los botones
float baseX = width / 2;
float baseY = height / 2 - 50;
int botonAltura = 30;
int margen = 10;

void setup() {

  // Tamaño de la pantalla (pantalla completa)
  fullScreen(P3D);

  // Inicializar la posición de los botones
  buttonX = width / 2 - buttonWidth / 2; // Centrado horizontalmente
  buttonY1 = height / 2 - 50; // Posición del primer botón
  buttonY2 = height / 2 + 50; // Posición del segundo botón

  // Pantalla del menu principal
  estadoActual = EstadoPantalla.MENU;

  // Fondo del menú principal
  estrellas_x = new int[amount_estrellas];
  estrellas_y = new int[amount_estrellas];
  for (int counter = 0; counter < amount_estrellas; counter++) {
    estrellas_x[counter] = (int)random(-width, width * 2);
    estrellas_y[counter] = (int)random(-height, height * 2);
  }

  // Imagen y creación de la Tierra del menú principal
  TierraMenu = loadImage("Tierra.jpg");
  noStroke();
  sphereDetail(100);
  esferaTierraMenu = createShape(SPHERE, 1600);
  esferaTierraMenu.setTexture(TierraMenu);

  // Imagen de la opción del Sistema Solar en el menú principal
  sistemaSolar = loadImage("SistemaSolar.png");
  sistemaSolarBlack = loadImage("SistemaSolarMouse.png");

  // Imagen Continentes
  continentes = loadImage("Continentes.png");
  continentesBlack = loadImage("ContinentesBlack.png");
  // Imagen Recetas
  recetas = loadImage("Recetas.png");
  recetasBlack = loadImage("RecetasBlack.png");
  africa = loadImage("africa.png");


  // Escena del Sistema Solar
  // Imagen y creación del Sol
  Sol = loadImage("TexturaSol.jpg");
  noStroke();
  sphereDetail(1000);
  esferaSol = createShape(SPHERE, radioSol);
  esferaSol.setTexture(Sol);

  esferaSolInf = createShape(SPHERE, radioSolInf);
  esferaSolInf.setTexture(Sol);

  // Imagen y creación de la Tierra
  Tierra = loadImage("Tierra.jpg");
  noStroke();
  sphereDetail(100);
  esferaTierra = createShape(SPHERE, radioTierra);
  esferaTierra.setTexture(Tierra);

  esferaTierraInf = createShape(SPHERE, radioTierraInf);
  esferaTierraInf.setTexture(Tierra);

  // Imagen y creación de Mercurio
  Mercurio = loadImage("TexturaMercurio.jpg");
  noStroke();
  sphereDetail(100);
  esferaMercurio = createShape(SPHERE, radioMercurio);
  esferaMercurio.setTexture(Mercurio);

  esferaMercurioInf = createShape(SPHERE, radioMercurioInf);
  esferaMercurioInf.setTexture(Mercurio);

  // Imagen y creación de Venus
  Venus = loadImage("TexturaVenus.jpg");
  noStroke();
  sphereDetail(100);
  esferaVenus = createShape(SPHERE, radioVenus);
  esferaVenus.setTexture(Venus);

  esferaVenusInf = createShape(SPHERE, radioVenusInf);
  esferaVenusInf.setTexture(Venus);

  // Imagen y creación de Marte
  Marte = loadImage("TexturaMarte.jpg");
  noStroke();
  sphereDetail(100);
  esferaMarte = createShape(SPHERE, radioMarte);
  esferaMarte.setTexture(Venus);

  esferaMarteInf = createShape(SPHERE, radioMarteInf);
  esferaMarteInf.setTexture(Marte);

  // Imagen y creación de Jupiter
  Jupiter = loadImage("TexturaJupiter.jpg");
  noStroke();
  sphereDetail(100);
  esferaJupiter = createShape(SPHERE, radioJupiter);
  esferaJupiter.setTexture(Jupiter);

  esferaJupiterInf = createShape(SPHERE, radioJupiterInf);
  esferaJupiterInf.setTexture(Jupiter);

  // Imagen y creación de Saturno
  Saturno = loadImage("TexturaSaturno.jpg");
  noStroke();
  sphereDetail(100);
  esferaSaturno = createShape(SPHERE, radioSaturno);
  esferaSaturno.setTexture(Saturno);

  esferaSaturnoInf = createShape(SPHERE, radioSaturnoInf);
  esferaSaturnoInf.setTexture(Saturno);

  // Imagen y creación de Urano
  Urano = loadImage("TexturaUrano.jpg");
  noStroke();
  sphereDetail(100);
  esferaUrano = createShape(SPHERE, radioUrano);
  esferaUrano.setTexture(Urano);

  esferaUranoInf = createShape(SPHERE, radioUranoInf);
  esferaUranoInf.setTexture(Urano);

  // Imagen y creación de Neptuno
  Neptuno = loadImage("TexturaNeptuno.jpg");
  noStroke();
  sphereDetail(100);
  esferaNeptuno = createShape(SPHERE, radioNeptuno);
  esferaNeptuno.setTexture(Neptuno);

  esferaNeptunoInf = createShape(SPHERE, radioNeptunoInf);
  esferaNeptunoInf.setTexture(Neptuno);


  // Escena Banderas

  // África
  // Marruecos
  marruecosFlag = loadImage("Marruecos.png");
  strokeWeight(1.5);
  stroke(255);
  marruecosShape = createShape(RECT, 45, 100, banderasX, banderasY);
  marruecosShape.setTexture(marruecosFlag);
  // Sudáfrica
  sudafricaFlag = loadImage("Sudafrica.png");
  strokeWeight(1.5);
  stroke(255);
  sudafricaShape = createShape(RECT, 445.6, 100, banderasX, banderasY);
  sudafricaShape.setTexture(sudafricaFlag);
  // Egipto
  egiptoFlag = loadImage("Egipto.png");
  strokeWeight(1.5);
  stroke(255);
  egiptoShape = createShape(RECT, 846.2, 100, banderasX, banderasY);
  egiptoShape.setTexture(egiptoFlag);
  // Nigeria
  nigeriaFlag = loadImage("Nigeria.png");
  strokeWeight(1.5);
  stroke(255);
  nigeriaShape = createShape(RECT, 1246.76, 100, banderasX, banderasY);
  nigeriaShape.setTexture(nigeriaFlag);
  // Uganda
  ugandaFlag = loadImage("Uganda.png");
  strokeWeight(1.5);
  stroke(255);
  ugandaShape = createShape(RECT, 1647.32, 100, banderasX, banderasY);
  ugandaShape.setTexture(ugandaFlag);
  // Kenia
  keniaFlag = loadImage("Kenia.png");
  strokeWeight(1.5);
  stroke(255);
  keniaShape = createShape(RECT, 2047.88, 100, banderasX, banderasY);
  keniaShape.setTexture(keniaFlag);
  // Madagascar
  madagascarFlag = loadImage("Madagascar.png");
  strokeWeight(1.5);
  stroke(255);
  madagascarShape = createShape(RECT, 2448.44, 100, banderasX, banderasY);
  madagascarShape.setTexture(madagascarFlag);

  // Europa
  // Inglaterra
  inglaterraFlag = loadImage("Inglaterra.png");
  strokeWeight(1.5);
  stroke(255);
  inglaterraShape = createShape(RECT, 45, 431, banderasX, banderasY);
  inglaterraShape.setTexture(inglaterraFlag);
  // Francia
  franciaFlag = loadImage("Francia.png");
  strokeWeight(1.5);
  stroke(255);
  franciaShape = createShape(RECT, 445.6, 431, banderasX, banderasY);
  franciaShape.setTexture(franciaFlag);
  // Alemania
  alemaniaFlag = loadImage("Alemania.png");
  strokeWeight(1.5);
  stroke(255);
  alemaniaShape = createShape(RECT, 846.2, 431, banderasX, banderasY);
  alemaniaShape.setTexture(alemaniaFlag);
  // Paises Bajos
  paisesBajosFlag = loadImage("PaisesBajos.png");
  strokeWeight(1.5);
  stroke(255);
  paisesBajosShape = createShape(RECT, 1246.76, 431, banderasX, banderasY);
  paisesBajosShape.setTexture(paisesBajosFlag);
  // Espanya
  espanyaFlag = loadImage("Espanya.png");
  strokeWeight(1.5);
  stroke(255);
  espanyaShape = createShape(RECT, 1647.32, 431, banderasX, banderasY);
  espanyaShape.setTexture(espanyaFlag);
  // Ucrania
  ucraniaFlag = loadImage("Ucrania.png");
  strokeWeight(1.5);
  stroke(255);
  ucraniaShape = createShape(RECT, 2047.88, 431, banderasX, banderasY);
  ucraniaShape.setTexture(ucraniaFlag);
  // Italia
  italiaFlag = loadImage("Italia.png");
  strokeWeight(1.5);
  stroke(255);
  italiaShape = createShape(RECT, 2448.44, 431, banderasX, banderasY);
  italiaShape.setTexture(italiaFlag);

  // América
  // USA
  usaFlag = loadImage("USA.png");
  strokeWeight(1.5);
  stroke(255);
  usaShape = createShape(RECT, 45, 762, banderasX, banderasY);
  usaShape.setTexture(usaFlag);
  // Perú
  peruFlag = loadImage("Perú.png");
  strokeWeight(1.5);
  stroke(255);
  peruShape = createShape(RECT, 445.6, 762, banderasX, banderasY);
  peruShape.setTexture(peruFlag);
  // Cuba
  cubaFlag = loadImage("Cuba.png");
  strokeWeight(1.5);
  stroke(255);
  cubaShape = createShape(RECT, 846.2, 762, banderasX, banderasY);
  cubaShape.setTexture(cubaFlag);
  // Argentina
  argentinaFlag = loadImage("Argentina.png");
  strokeWeight(1.5);
  stroke(255);
  argentinaShape = createShape(RECT, 1246.76, 762, banderasX, banderasY);
  argentinaShape.setTexture(argentinaFlag);
  // México
  mexicoFlag = loadImage("México.png");
  strokeWeight(1.5);
  stroke(255);
  mexicoShape = createShape(RECT, 1647.32, 762, banderasX, banderasY);
  mexicoShape.setTexture(mexicoFlag);
  // Brasil
  brasilFlag = loadImage("Brasil.png");
  strokeWeight(1.5);
  stroke(255);
  brasilShape = createShape(RECT, 2047.88, 762, banderasX, banderasY);
  brasilShape.setTexture(brasilFlag);
  // Honduras
  hondurasFlag = loadImage("Honduras.png");
  strokeWeight(1.5);
  stroke(255);
  hondurasShape = createShape(RECT, 2448.44, 762, banderasX, banderasY);
  hondurasShape.setTexture(hondurasFlag);

  // Asia
  // Japón
  japonFlag = loadImage("Japón.png");
  strokeWeight(1.5);
  stroke(255);
  japonShape = createShape(RECT, 45, 1093, banderasX, banderasY);
  japonShape.setTexture(japonFlag);
  // Indonesia
  indonesiaFlag = loadImage("Indonesia.png");
  strokeWeight(1.5);
  stroke(255);
  indonesiaShape = createShape(RECT, 445.6, 1093, banderasX, banderasY);
  indonesiaShape.setTexture(indonesiaFlag);
  // India
  indiaFlag = loadImage("India.png");
  strokeWeight(1.5);
  stroke(255);
  indiaShape = createShape(RECT, 846.2, 1093, banderasX, banderasY);
  indiaShape.setTexture(indiaFlag);
  // Vietnam
  vietnamFlag = loadImage("Vietnam.png");
  strokeWeight(1.5);
  stroke(255);
  vietnamShape = createShape(RECT, 1246.76, 1093, banderasX, banderasY);
  vietnamShape.setTexture(vietnamFlag);
  // China
  chinaFlag = loadImage("China.png");
  strokeWeight(1.5);
  stroke(255);
  chinaShape = createShape(RECT, 1647.32, 1093, banderasX, banderasY);
  chinaShape.setTexture(chinaFlag);
  // Israel
  israelFlag = loadImage("Israel.png");
  strokeWeight(1.5);
  stroke(255);
  israelShape = createShape(RECT, 2047.88, 1093, banderasX, banderasY);
  israelShape.setTexture(israelFlag);
  // Cambodja
  cambodjaFlag = loadImage("Cambodja.png");
  strokeWeight(1.5);
  stroke(255);
  cambodjaShape = createShape(RECT, 2448.44, 1093, banderasX, banderasY);
  cambodjaShape.setTexture(cambodjaFlag);

  // Oceanía
  // Australia
  australiaFlag = loadImage("Australia.png");
  strokeWeight(1.5);
  stroke(255);
  australiaShape = createShape(RECT, 45, 1424, banderasX, banderasY);
  australiaShape.setTexture(australiaFlag);
  // Nueva Zelanda
  nuevaZelandaFlag = loadImage("NuevaZelanda.png");
  strokeWeight(1.5);
  stroke(255);
  nuevaZelandaShape = createShape(RECT, 445.6, 1424, banderasX, banderasY);
  nuevaZelandaShape.setTexture(nuevaZelandaFlag);
  // Fiyi
  fiyiFlag = loadImage("Fiyi.png");
  strokeWeight(1.5);
  stroke(255);
  fiyiShape = createShape(RECT, 846.2, 1424, banderasX, banderasY);
  fiyiShape.setTexture(fiyiFlag);
  // Papúa Nueva Guinea
  papuaNuevaGuineaFlag = loadImage("PapúaNuevaGuinea.png");
  strokeWeight(1.5);
  stroke(255);
  papuaNuevaGuineaShape = createShape(RECT, 1246.76, 1424, banderasX, banderasY);
  papuaNuevaGuineaShape.setTexture(papuaNuevaGuineaFlag);
  // Tonga
  tongaFlag = loadImage("Tonga.png");
  strokeWeight(1.5);
  stroke(255);
  tongaShape = createShape(RECT, 1647.32, 1424, banderasX, banderasY);
  tongaShape.setTexture(tongaFlag);
  // Kiribati
  kiribatiFlag = loadImage("Kiribati.png");
  strokeWeight(1.5);
  stroke(255);
  kiribatiShape = createShape(RECT, 2047.88, 1424, banderasX, banderasY);
  kiribatiShape.setTexture(kiribatiFlag);
  // Tuvalu
  tuvaluFlag = loadImage("Tuvalu.png");
  strokeWeight(1.5);
  stroke(255);
  tuvaluShape = createShape(RECT, 2448.44, 1424, banderasX, banderasY);
  tuvaluShape.setTexture(tuvaluFlag);


  // Escena continentes
  // África
  africaTituloImage = loadImage("africaTitulo.png");
  noStroke();
  africaTituloShape = createShape(RECT, width / 2, 175, 512, 323.4);
  africaTituloShape.setTexture(africaTituloImage);

  // Europa
  europaTituloImage = loadImage("europaTitulo.png");
  noStroke();
  europaTituloShape = createShape(RECT, width / 2, 175, 512, 323.4);
  europaTituloShape.setTexture(europaTituloImage);

  // América
  americaTituloImage = loadImage("americaTitulo.png");
  noStroke();
  americaTituloShape = createShape(RECT, width / 2, 175, 512, 323.4);
  americaTituloShape.setTexture(americaTituloImage);

  // Asia
  asiaTituloImage = loadImage("asiaTitulo.png");
  noStroke();
  asiaTituloShape = createShape(RECT, width / 2, 175, 512, 323.4);
  asiaTituloShape.setTexture(asiaTituloImage);

  // Oceanía
  oceaniaTituloImage = loadImage("oceaniaTitulo.png");
  noStroke();
  oceaniaTituloShape = createShape(RECT, width / 2, 175, 512, 323.4);
  oceaniaTituloShape.setTexture(oceaniaTituloImage);
}

boolean mouseOverSolar() {
  return mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
    mouseY >= (height - 50) / 2 -100 && mouseY <= (height - 150) / 2 - 100 + 100;
}

boolean mouseOverContinentes() {
  return mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
    mouseY >= (height - 50) / 2 && mouseY <= (height - 50) / 2 + 50;
}

boolean mouseOverRecetas() {
  return mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
    mouseY >= (height +150) / 2 && mouseY <= (height +150) / 2 -50 +100;
}

//void verificarHover(String texto, float posX, float posY) {
//  int textSize = 35;  // Asegúrate de que el tamaño de la fuente coincida con el usado en draw
//  float textWidth = textWidth(texto);  // Ancho del texto

//  // Calcular los límites del área de detección
//  float top = posY - textSize / 2;  // Parte superior del área
//  float bottom = posY + textSize / 2;  // Parte inferior del área

//  // Comprueba si el cursor está sobre el área del texto
//  if (mouseX >= posX && mouseX <= posX + textWidth &&
//      mouseY >= top && mouseY <= bottom) {  // Comprueba si el cursor está dentro del área
//    fill(0, 255, 0);  // Cambia a color verde cuando el cursor está encima
//  } else {
//    fill(255, 0, 0);  // Color rojo cuando el cursor no está encima
//  }

//  text(texto, posX, posY);  // Dibuja el texto
//}
void draw() {

  background(0);

  switch (estadoActual) {
  case MENU:
    escenaMenu();
    break;
  case SISTEMA_SOLAR:
    escenaSistemaSolar();
    break;
  case BANDERAS:
    escenaBanderas();
    break;
  case RECETAS:
    escenaRecetas();
    break;
  case EDUCACION:
    escenaEducacion();
    break;
  case CONTINENTES:
    escenaContinentes();
    break;
  case INJERA:
    escenaInjera();
    break;
  case CREPES:
    escenaCrepes();
    break;
  case POLLO_TANDOORI:
    escenaPolloTandoori();
    break;
  case TARTA_PAVLOVA:
    escenaTartaPavlova();
    break;
  case AREPAS:
    escenaArepas();
    break;
  case AFRICA:
    escenaAfrica();
    break;
  case EUROPA:
    escenaEuropa();
    break;
  case ASIA:
    escenaAsia();
    break;
  case OCEANIA:
    escenaOceania();
    break;
  case AMERICA:
    escenaAmerica();
    break;
  }
}


void escenaRecetas() {
  println("Escena de recetas mostrada"); // Depuración para verificar la escena
  float baseX = width / 2;
  float baseY = height / 2 - 50;
  int botonAltura = 30;
  int margen = 10;

  textAlign(CENTER, CENTER);
  fill(204, 102, 0);
  text("Sección de Recetas de Continentes:", baseX, baseY);

  // Lista de recetas
  String[] recetas = {
    "Receta 1: Injera etíope - África",
    "Receta 2: Crepes - Europa",
    "Receta 3: Pollo tandoori masala - Asia",
    "Receta 4: Tarta pavlova - Oceania",
    "Receta 5: Arepas - America"
  };

  // Mostrar las recetas y cambiar el color si el ratón está sobre ellas
  for (int i = 0; i < recetas.length; i++) {
    float y = baseY + 40 + i * (botonAltura + margen);

    if (mouseX > (baseX - 100) && mouseX < (baseX + 100) &&
      mouseY > (y - botonAltura / 2) && mouseY < (y + botonAltura / 2)) {
      fill(150, 150, 150); // Resaltado si el ratón está sobre el botón
    } else {
      fill(52, 152, 219); // Color normal del texto
    }

    text(recetas[i], baseX, y); // Mostrar el texto
  }
}

void escenaContinentes() {
  //background(#555FED);
  //image(africa, 400, 200, 350, 400);
  pointLight(255, 255, 255, width, height, 1000);
  // Posicionamiento de las estrellas
  translate(0, 0, -1450);
  for (int counter = 0; counter < amount_estrellas; counter++) {
    ellipse(estrellas_x[counter], estrellas_y[counter], radius_estrellas, radius_estrellas);
  }
  translate(0, 0, 1450);
  translate(width / 2, height / 2, -2000);
  rotateX(radians(rotacionTierraMenuX));
  rotateY(radians(rotacionTierraMenuY));
  rotateZ(radians(rotacionTierraMenuZ));

  if (rotacionTierraMenuX > 360)
  {
    rotacionTierraMenuX = 0;
  } else
  {
    rotacionTierraMenuX += 0.02;
  }

  if (rotacionTierraMenuY > 360)
  {
    rotacionTierraMenuY = 0;
  } else
  {
    rotacionTierraMenuY += 0.02;
  }

  if (rotacionTierraMenuZ > 360)
  {
    rotacionTierraMenuZ = 0;
  } else
  {
    rotacionTierraMenuZ += 0.02;
  }

  shape(esferaTierraMenu);
}

void escenaEducacion() {
  textAlign(CENTER, CENTER);
  fill(0);
  text("Sección de Educación:", width / 2, height / 2 - 50);

  // Lista de temas educativos de ejemplo
  String[] temasEducacion = {
    "Tema 1: Matemáticas básicas",
    "Tema 2: Historia mundial",
    "Tema 3: Ciencias de la Tierra"
  };

  // Mostrar la lista de temas educativos
  for (int i = 0; i < temasEducacion.length; i++) {
    text(temasEducacion[i], width / 2, height / 2 + i * 30);
  }
}

//void mousePressed() {
//  if (estadoActual == EstadoPantalla.MENU) {
//    if (mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
//      mouseY >= (height - 50) / 2 -100 && mouseY <= (height - 150) / 2 - 100 + 100
//      ) {
//      estadoActual = EstadoPantalla.SISTEMA_SOLAR;
//    } else if (mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
//      mouseY >= (height - 50) / 2 && mouseY <= (height - 50) / 2 + 50) {
//      estadoActual = EstadoPantalla.RECETAS;
//    }
//    //if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth) {
//    //  if (mouseY >= buttonY1 && mouseY <= buttonY1 + buttonHeight) {
//    //    estadoActual = EstadoPantalla.RECETAS; // Cambia a la sección de "Recetas"
//    //  } else if (mouseY >= buttonY2 && mouseY <= buttonY2 + buttonHeight) {
//    //    estadoActual = EstadoPantalla.EDUCACION; // Cambia a la sección de "Educación"
//    //  }
//    //}
//  }
//  //else if (estadoActual == EstadoPantalla.CONTINENTES) {
//  //  if (mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
//  //    mouseY >= (height - 200) / 2 && mouseY <= (height - 200) / 2 + 200) {
//  //  }
//  //}

//// Detectar clics solo si estamos en la escena de recetas
//  if (estadoActual == EstadoPantalla.RECETAS) {
//    float baseX = width / 2;
//    float baseY = height / 2 - 50;
//    int botonAltura = 30;
//    int margen = 10;

//    for (int i = 0; i < 3; i++) {
//      float y = baseY + 40 + i * (botonAltura + margen);

//      if (mouseX > (baseX - 100) && mouseX < (baseX + 100) &&
//          mouseY > (y - botonAltura / 2) && mouseY < (y + botonAltura / 2)) {
//        // Cambiar a la escena correspondiente solo si se hace clic
//        switch (i) {
//          case 0:
//            estadoActual = EstadoPantalla.INJERA;
//            println("Clic en Receta 1: Injera"); // Verificar cambio de escena
//            break;
//          case 1:
//            estadoActual = EstadoPantalla.SISTEMA_SOLAR;
//            println("Clic en Receta 2: Pizza");
//            break;
//          case 2:
//            estadoActual = EstadoPantalla.PASTEL;
//            println("Clic en Receta 3: Pastel");
//            break;
//        }
//      }
//    }
//  }
//}

void mousePressed() {

  // Si estamos en el menú
  if (estadoActual == EstadoPantalla.MENU) {
    // Detectar clics en los botones del menú
    if (mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
      mouseY >= (height - 50) / 2 - 100 && mouseY <= (height - 50) / 2 - 100 + 100) {
      estadoActual = EstadoPantalla.SISTEMA_SOLAR;
    } else if (mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
      mouseY >= (height - 50) / 2 && mouseY <= (height - 50) / 2 + 50) {
      estadoActual = EstadoPantalla.BANDERAS;
    } else if (mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
      mouseY >= (height +150) / 2 && mouseY <= (height +150) / 2 -50 +100) {
      estadoActual = EstadoPantalla.RECETAS;
    }
  }
  // Si estamos en la escena de recetas
  else if (estadoActual == EstadoPantalla.RECETAS) {
    float baseX = width / 2;
    float baseY = height / 2 - 50;
    int botonAltura = 30;
    int margen = 10;

    for (int i = 0; i < 5; i++) {
      float y = baseY + 40 + i * (botonAltura + margen);

      if (mouseX > (baseX - 100) && mouseX < (baseX + 100) &&
        mouseY > (y - botonAltura / 2) && mouseY < (y + botonAltura / 2)) {
        // Cambiar a la escena correspondiente solo si se hace clic
        switch (i) {
        case 0:
          estadoActual = EstadoPantalla.INJERA;
          println("Clic en Receta 1: Injera"); // Verificar cambio de escena
          break;
        case 1:
          estadoActual = EstadoPantalla.CREPES;
          println("Clic en Receta 2: CREPES");
          break;
        case 2:
          estadoActual = EstadoPantalla.POLLO_TANDOORI;
          println("Clic en Receta 3: Pastel");
          break;
        case 3:
          estadoActual = EstadoPantalla.TARTA_PAVLOVA;
          println("Clic en Receta 4: Tarta Pavlova");
          break;
        case 4:
          estadoActual = EstadoPantalla.AREPAS;
          println("Clic en Receta 5: Arroz Chaufa");
          break;
        }
      }
    }
  } else if (estadoActual == EstadoPantalla.BANDERAS) {
    for (int i = 0; i < nombres.length; i++) {
      if (mouseX >= posX[i] && mouseX <= posX[i] + ancho &&
        mouseY >= (posY - alto / 2) && mouseY <= (posY + alto / 2)) {
        // Cambiar a la escena correspondiente
        switch (i) {
        case 0:
          estadoActual = EstadoPantalla.AFRICA;
          break;
        case 1:
          estadoActual = EstadoPantalla.EUROPA;
          break;
        case 2:
          estadoActual = EstadoPantalla.AMERICA;
          break;
        case 3:
          estadoActual = EstadoPantalla.ASIA;
          break;
        case 4:
          estadoActual = EstadoPantalla.OCEANIA;
          break;
        }
        break;  // Salir del bucle para evitar múltiples detecciones
      }
    }
  }
}


void escenaInjera() {
  background(245, 245, 220); // Fondo suave

  // Posiciones base para el recuadro y el texto
  float rectX = 30; // Margen izquierdo del recuadro
  float rectY = 30; // Margen superior del recuadro
  float rectWidth = width - 60; // Ancho del recuadro, con margen
  float rectHeight = height - 60; // Altura del recuadro, con margen
  float lineHeight = 20; // Espaciado entre líneas

  // Dibuja un recuadro para contener el texto
  fill(255, 255, 240); // Fondo del recuadro
  stroke(180, 180, 180); // Borde del recuadro
  rect(rectX, rectY, rectWidth, rectHeight, 10); // Recuadro con bordes redondeados

  textAlign(LEFT, TOP); // Alineación del texto a la izquierda
  textSize(16); // Tamaño de la fuente para el cuerpo del texto
  float textX = rectX + 20; // Margen izquierdo para el texto dentro del recuadro
  float textY = rectY + 20; // Margen superior para el texto dentro del recuadro

  // Texto de la receta, dividido en líneas para evitar desbordamientos
  String[] receta = {
    "Cómo hacer Injera etíope:",
    "1. Mezcla la harina, la sal, la levadura y el bicarbonato. Añade el agua poco a poco mientras remueves para obtener una mezcla homogénea sin grumos.",
    "Truco: Tradicionalmente, el pan injera se hace con harina de teff.",
    "2. Tapa el recipiente con film transparente y deja reposar la masa hasta 72 horas, removiendo una vez al día.",
    "3. Calienta una sartén antiadherente a fuego medio-alto. Vierte la masa con un cucharón para darle forma redonda.",
    "4. Cuando aparezcan burbujas, tapa la sartén y deja que el injera se cocine con el vapor.",
    "5. Sirve las injeras etíopes con lentejas, acelgas, arroz o pasta de garbanzos."
  };

  // Dibujar el texto de la receta
  fill(0); // Color para el texto principal
  for (int i = 0; i < receta.length; i++) {
    text(receta[i], textX, textY + (i * lineHeight)); // Espaciado entre líneas
  }
}

void escenaCrepes() {
  background(245, 245, 220); // Fondo suave

  // Posiciones base para el recuadro y el texto
  float rectX = 30; // Margen izquierdo del recuadro
  float rectY = 30; // Margen superior del recuadro
  float rectWidth = width - 60; // Ancho del recuadro, con margen
  float rectHeight = height - 60; // Altura del recuadro, con margen
  float lineHeight = 20; // Espaciado entre líneas

  // Dibuja un recuadro para contener el texto
  fill(255, 255, 240); // Fondo del recuadro
  stroke(180, 180, 180); // Borde del recuadro
  rect(rectX, rectY, rectWidth, rectHeight, 10); // Recuadro con bordes redondeados

  textAlign(LEFT, TOP); // Alineación del texto a la izquierda
  textSize(16); // Tamaño de la fuente para el cuerpo del texto
  float textX = rectX + 20; // Margen izquierdo para el texto dentro del recuadro
  float textY = rectY + 20; // Margen superior para el texto dentro del recuadro

  // Texto de la receta, dividido en líneas para evitar desbordamientos
  String[] receta = {
    "Cómo hacer Crepes paso a paso:",
    "1. En primer lugar, funde la mantequilla introduciéndola en el microondas durante 30 o 40 segundos. Añádela al vaso de la batidora.",
    "2. A continuación, añade al vaso de batidora el resto de ingredientes líquidos: la leche y los huevos.",
    "3. Incorpora la harina, el azúcar y la sal.",
    "4. Tritura todos los ingredientes hasta conseguir una crema y pasa la mezcla por un colador para eliminar cualquier grumo que pueda tener. También puedes mezclarlos a mano con las varillas.",
    "5. Pon un poco de mantequilla en una sartén antiadherente. Calienta a fuego medio y espera a que se funda.",
    "6. Vierte un poco de masa en el centro y extiéndela bien por toda la sartén para que queden crepes finos.",
    "7. Cuando el crepe empiece a cuajarse, dale la vuelta y cocina brevemente por el otro lado.",
    "Cuando esté hecho, retira el crepe a un plato.",
    "Repite el proceso hasta terminar toda la masa.",
    "8. Para servir los crepes, dobla cada uno por la mitad y a continuación de nuevo por la mitad, de modo que quede un triángulo.",
    "También puedes presentarlos extendidos sobre el plato con ingredientes encima o enrollados.",
    "No olvides servirlos calientes, ya sea solos, con toppings o con el relleno que más te guste.",
    "Nuestros acompañamientos preferidos para los crepes son la crema de cacao y avellanas, el dulce de leche o un poco de mermelada."
  };

  // Dibujar el texto de la receta
  fill(0); // Color para el texto principal
  for (int i = 0; i < receta.length; i++) {
    text(receta[i], textX, textY + (i * lineHeight)); // Espaciado entre líneas
  }
}


void escenaPolloTandoori() {
  background(245, 245, 220); // Fondo suave

  // Posiciones base para el recuadro y el texto
  float rectX = 30; // Margen izquierdo del recuadro
  float rectY = 30; // Margen superior del recuadro
  float rectWidth = width - 60; // Ancho del recuadro, con margen
  float rectHeight = height - 60; // Altura del recuadro, con margen
  float lineHeight = 20; // Espaciado entre líneas

  // Dibuja un recuadro para contener el texto
  fill(255, 255, 240); // Fondo del recuadro
  stroke(180, 180, 180); // Borde del recuadro
  rect(rectX, rectY, rectWidth, rectHeight, 10); // Recuadro con bordes redondeados

  textAlign(LEFT, TOP); // Alineación del texto a la izquierda
  textSize(16); // Tamaño de la fuente para el cuerpo del texto
  float textX = rectX + 20; // Margen izquierdo para el texto dentro del recuadro
  float textY = rectY + 20; // Margen superior para el texto dentro del recuadro

  // Texto de la receta, dividido en líneas para evitar desbordamientos
  String[] receta = {
    "Cómo hacer Pollo Tandoori Masala paso a paso:",
    "1. En un tazón grande, mezclamos el yogur, la pasta de ajo y jengibre, aceite de oliva, cúrcuma, pimentón, garam masala, comino, sal y pimienta. Esta mezcla, rica en sabores, será la base de nuestro pollo.",
    "2. Añadimos las piezas de pollo al tazón, asegurándonos de que queden bien impregnadas con la marinada. Para potenciar los sabores, recomendamos marinar durante al menos 2 horas en el refrigerador.",
    "3. Precalentamos el horno a 200° C.",
    "4. Colocamos las piezas de pollo en una bandeja de horno previamente engrasada con un poco de aceite de oliva. Luego, las horneamos durante 40 minutos o hasta que estén doradas y bien cocidas.",
    "5. Una vez listo, servimos el pollo en un plato, rociamos con un poco de jugo de limón y esparcimos cilantro fresco picado por encima."
  };

  // Dibujar el texto de la receta
  fill(0); // Color para el texto principal
  for (int i = 0; i < receta.length; i++) {
    text(receta[i], textX, textY + (i * lineHeight)); // Espaciado entre líneas
  }
}

void escenaTartaPavlova() {
  background(245, 245, 220); // Fondo suave

  // Posiciones base para el recuadro y el texto
  float rectX = 30; // Margen izquierdo del recuadro
  float rectY = 30; // Margen superior del recuadro
  float rectWidth = width - 60; // Ancho del recuadro, con margen
  float rectHeight = height - 60; // Altura del recuadro, con margen
  float lineHeight = 20; // Espaciado entre líneas

  // Dibuja un recuadro para contener el texto
  fill(255, 255, 240); // Fondo del recuadro
  stroke(180, 180, 180); // Borde del recuadro
  rect(rectX, rectY, rectWidth, rectHeight, 10); // Recuadro con bordes redondeados

  textAlign(LEFT, TOP); // Alineación del texto a la izquierda
  textSize(16); // Tamaño de la fuente para el cuerpo del texto
  float textX = rectX + 20; // Margen izquierdo para el texto dentro del recuadro
  float textY = rectY + 20; // Margen superior para el texto dentro del recuadro

  // Texto de la receta, dividido en líneas para evitar desbordamientos
  String[] receta = {
    "Cómo hacer tarta Pavlova paso a paso:",
    "1. Ponemos los 100 gramos de clara de huevo en un bol y las montamos a velocidad media. Debemos asegurarnos de que el bol no tenga restos de grasa para que las claras se monten correctamente. Precalentamos el horno a 100 ºC con calor arriba y abajo.",
    "2. Cuando las claras comiencen a espumar, añadimos los 165 gramos de azúcar blanco y seguimos batiendo a velocidad media.",
    "3. Sin dejar de batir, añadimos los 10 gramos de harina de maíz y, justo a continuación, los 5 gramos de vinagre de manzana.",
    "4. Montamos hasta obtener un merengue firme y brillante.",
    "5. Vertemos el merengue sobre una bandeja de horno forrada con papel vegetal. Podemos ayudarnos de una espátula de silicona para así rebañar todo el merengue que tengamos en el bol.",
    "6. Damos forma redondeada al merengue y lo aplanamos ligeramente. No importa que queden picos, o no quede perfectamente redonda. Horneamos durante 1 hora aproximadamente, hasta que el merengue esté totalmente seco por el exterior.",
    "7. Una vez horneado, dejamos enfriar por completo antes de decorar.",
    "8. Ponemos los 400 gramos de nata para montar junto con los 50 gramos de azúcar glas en un bol y montamos a velocidad media.",
    "9. Montamos hasta tener una nata bien firme.",
    "10. Ponemos la nata sobre la base de merengue justo en el momento de servir.",
    "11. Decoramos la tarta con los 200 gramos de frutos rojos que hayamos elegido, y ya tenemos nuestra tarta Pavlova lista para sacar a la mesa y disfrutar."
  };

  // Dibujar el texto de la receta
  fill(0); // Color para el texto principal
  for (int i = 0; i < receta.length; i++) {
    text(receta[i], textX, textY + (i * lineHeight)); // Espaciado entre líneas
  }
}


void escenaArepas() {
  background(245, 245, 220); // Fondo suave

  // Posiciones base para el recuadro y el texto
  float rectX = 30; // Margen izquierdo del recuadro
  float rectY = 30; // Margen superior del recuadro
  float rectWidth = width - 60; // Ancho del recuadro, con margen
  float rectHeight = height - 60; // Altura del recuadro, con margen
  float lineHeight = 20; // Espaciado entre líneas

  // Dibuja un recuadro para contener el texto
  fill(255, 255, 240); // Fondo del recuadro
  stroke(180, 180, 180); // Borde del recuadro
  rect(rectX, rectY, rectWidth, rectHeight, 10); // Recuadro con bordes redondeados

  textAlign(LEFT, TOP); // Alineación del texto a la izquierda
  textSize(16); // Tamaño de la fuente para el cuerpo del texto
  float textX = rectX + 20; // Margen izquierdo para el texto dentro del recuadro
  float textY = rectY + 20; // Margen superior para el texto dentro del recuadro

  // Texto de la receta, dividido en líneas para evitar desbordamientos
  String[] receta = {
    "Cómo hacer Arepas paso a paso:",
    "1. Lo primero que tenemos que hacer para elaborar las arepas es disolver en 450 ml de agua templada 1 cucharada pequeña de sal fina.",
    "2. A continuación, echamos en un bol amplio 300 gramos de harina de maíz precocida y agregamos de una vez el agua templada con la sal.",
    "3. Mezclamos con una cuchara hasta que los ingredientes se integren y amasamos hasta que la mezcla adquiera una consistencia suave, sin grumos y que se despegue fácilmente del bol.",
    "4. Dividimos la masa en 6 partes iguales y formamos pequeñas bolas con ellas.",
    "5. Nos humedecemos las manos y procedemos a aplastar las bolas de masa hasta dejarlas de un grosor de centímetro y medio aproximadamente.",
    "A continuación, les damos forma circular y dejamos los bordes totalmente lisos.",
    "6. Ponemos a calentar una sartén estriada con el suficiente aceite de oliva para engrasar la superficie. Cuando esté caliente, colocamos las arepas y las cocinamos durante 10 minutos a fuego medio.",
    "7. Pasado este tiempo, les damos la vuelta y continuamos la cocción durante 5 minutos más.",
    "Tienen que quedar con la superficie crujiente y el interior tierno por lo que el fuego no puede estar muy alto para que no se tuesten demasiado y queden crudas por dentro.",
    "8. Una vez cocinadas, dejamos que atemperen un poco antes de proceder a abrirlas y ya las tenemos listas para rellenarlas con los ingredientes que más nos apetezcan."
  };

  // Dibujar el texto de la receta
  fill(0); // Color para el texto principal
  for (int i = 0; i < receta.length; i++) {
    text(receta[i], textX, textY + (i * lineHeight)); // Espaciado entre líneas
  }
}
