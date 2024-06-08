//PRÁCTICA AA2: Alfredo Ugarte y Pol Blesa

// Definición de la enumeración para las escenas
enum EstadoPantalla {
  MENU, SISTEMA_SOLAR, BANDERAS, RECETAS, INJERA, CREPES, POLLO_TANDOORI, TARTA_PAVLOVA, AREPAS, AFRICA, EUROPA, ASIA, OCEANIA, AMERICA, MERCURIO, VENUS, LATIERRA, MARTE, JUPITER, SATURNO, URANO, NEPTUNO
}

// Variable para el estado estadoActual de la pantalla
EstadoPantalla estadoActual = EstadoPantalla.MENU; // Comienza en el menú

// Inicialización estrellas del menú principal
int[] estrellas_x;
int[] estrellas_y;
int amount_estrellas = (int)random(100, 200);
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
    estrellas_x[counter] = (int)random(-1.5 * width, width * 3);
    estrellas_y[counter] = (int)random(-1.5 * height, height * 3);
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

  anillosSaturno = loadImage("anillosSaturno.jpg");
  noStroke();
  anillosSaturnoShape = createShape(ELLIPSE, 0, 0, 600, 600);
  anillosSaturnoShape.setTexture(anillosSaturno);

  anillosSaturnoPlaneta = loadImage("anillosSaturno.jpg");
  noStroke();
  anillosSaturnoPlanetaShape = createShape(ELLIPSE, 0, 0, 5000, 5000);
  anillosSaturnoPlanetaShape.setTexture(anillosSaturnoPlaneta);

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

  // Escena planetas Sistema Solar

  // Mercurio
  MercurioPlaneta = loadImage("TexturaMercurio.jpg");
  noStroke();
  sphereDetail(100);
  esferaMercurioPlaneta = createShape(SPHERE, 1600);
  esferaMercurioPlaneta.setTexture(MercurioPlaneta);

  // Venus
  VenusPlaneta = loadImage("TexturaVenus.jpg");
  noStroke();
  sphereDetail(100);
  esferaVenusPlaneta = createShape(SPHERE, 1600);
  esferaVenusPlaneta.setTexture(VenusPlaneta);

  // La Tierra
  LaTierraPlaneta = loadImage("Tierra.jpg");
  noStroke();
  sphereDetail(100);
  esferaLaTierraPlaneta = createShape(SPHERE, 1600);
  esferaLaTierraPlaneta.setTexture(LaTierraPlaneta);

  // Marte
  MartePlaneta = loadImage("TexturaMarte.jpg");
  noStroke();
  sphereDetail(100);
  esferaMartePlaneta = createShape(SPHERE, 1600);
  esferaMartePlaneta.setTexture(MartePlaneta);

  // Jupiter
  JupiterPlaneta = loadImage("TexturaJupiter.jpg");
  noStroke();
  sphereDetail(100);
  esferaJupiterPlaneta = createShape(SPHERE, 1600);
  esferaJupiterPlaneta.setTexture(JupiterPlaneta);

  // Saturno
  SaturnoPlaneta = loadImage("TexturaSaturno.jpg");
  noStroke();
  sphereDetail(100);
  esferaSaturnoPlaneta = createShape(SPHERE, 1600);
  esferaSaturnoPlaneta.setTexture(SaturnoPlaneta);

  // Urano
  UranoPlaneta = loadImage("TexturaUrano.jpg");
  noStroke();
  sphereDetail(100);
  esferaUranoPlaneta = createShape(SPHERE, 1600);
  esferaUranoPlaneta.setTexture(UranoPlaneta);

  // Neptuno
  NeptunoPlaneta = loadImage("TexturaNeptuno.jpg");
  noStroke();
  sphereDetail(100);
  esferaNeptunoPlaneta = createShape(SPHERE, 1600);
  esferaNeptunoPlaneta.setTexture(NeptunoPlaneta);


  // Recetas
  // Injera
  injera = loadImage("Injera.png");
  // Crepes
  crepes = loadImage("Crepes.png");
  // Pollo Tandoori
  polloTandoori = loadImage("PolloTandoori.png");
  // Tarta Pavlova
  tartaPavlova = loadImage("TartaPavlova.png");
  // Arepas
  arepas = loadImage("Arepas.png");
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
  case MERCURIO:
    escenaMercurio();
    break;
  case VENUS:
    escenaVenus();
    break;
  case LATIERRA:
    escenaLaTierra();
    break;
  case MARTE:
    escenaMarte();
    break;
  case JUPITER:
    escenaJupiter();
    break;
  case SATURNO:
    escenaSaturno();
    break;
  case URANO:
    escenaUrano();
    break;
  case NEPTUNO:
    escenaNeptuno();
    break;
  }
}

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
