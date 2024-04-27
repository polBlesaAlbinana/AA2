//PRÁCTICA AA2: Alfredo Ugarte y Pol Blesa

//enum EstadoPantalla {
//  MENU, SISTEMA_SOLAR, BANDERAS, RECETAS, EDUCACION, CONTINENTES
//}

//EstadoPantalla estadoActual;
// Definición de la enumeración para las escenas
enum EstadoPantalla {
  MENU, SISTEMA_SOLAR, BANDERAS, RECETAS, EDUCACION, CONTINENTES, INJERA, PIZZA, PASTEL
}

// Variable para el estado estadoActual de la pantalla
EstadoPantalla estadoActual = EstadoPantalla.MENU; // Comienza en el menú

// Lista de recetas de ejemplo
String[] recetas = {
  "Receta 1: Injera etíope - África",
  "Receta 2: Pizza casera",
  "Receta 3: Pastel de chocolate"
};

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
}

boolean mouseOverSolar() {
  return mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
    mouseY >= (height - 50) / 2 -100 && mouseY <= (height - 150) / 2 - 100 + 100;
}

boolean mouseOverContinentes() {
  return mouseX >= (width - 400) / 2 && mouseX <= (width - 400) / 2 + 400 &&
    mouseY >= (height - 50) / 2 && mouseY <= (height - 50) / 2 + 50;
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
  case EDUCACION:
    escenaEducacion();
    break;
  case CONTINENTES:
    escenaContinentes();
    break;
  case INJERA:
    escenaInjera();
    break;
  //case PIZZA:
  //  escenaPizza();
  //  break;
  //case PASTEL:
  //  escenaPastel();
  //  break;
  }
}

void mouseMoved() {
}

void escenaBanderas() {
  /*
   pushMatrix();
   rotateY(radians(mouseX));
   
   translate (width, height / 2);
   fill(255);
   stroke(100);
   strokeWeight(5);
   sphereDetail(9);
   sphere(100);
   popMatrix();
   */
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
    "Receta 2: Pizza casera - Europa",
    "Receta 3: Pastel de chocolate - América"
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
      estadoActual = EstadoPantalla.RECETAS;
    }
  } 
  // Si estamos en la escena de recetas
  else if (estadoActual == EstadoPantalla.RECETAS) {
    float baseX = width / 2;
    float baseY = height / 2 - 50;
    int botonAltura = 30;
    int margen = 10;

    for (int i = 0; i < 3; i++) {
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
            estadoActual = EstadoPantalla.PIZZA;
            println("Clic en Receta 2: Pizza");
            break;
          case 2:
            estadoActual = EstadoPantalla.PASTEL;
            println("Clic en Receta 3: Pastel");
            break;
        }
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
