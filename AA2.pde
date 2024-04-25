//PRÁCTICA AA2: Alfredo Ugarte y Pol Blesa

enum EstadoPantalla {
  MENU, SISTEMA_SOLAR, BANDERAS, RECETAS, EDUCACION
}

EstadoPantalla actual;

// Inicialización estrellas del menú principal
int[] estrellas_x;
int[] estrellas_y;
int amount_estrellas = (int)random(75, 150);
float radius_estrellas = 2.5;


void setup() {

  // Tamaño de la pantalla (pantalla completa)
  fullScreen(P3D);

  // Inicializar la posición de los botones
  buttonX = width / 2 - buttonWidth / 2; // Centrado horizontalmente
  buttonY1 = height / 2 - 50; // Posición del primer botón
  buttonY2 = height / 2 + 50; // Posición del segundo botón

  // Pantalla del menu principal
  actual = EstadoPantalla.MENU;

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
  if (mouseSolarSistem == false) {
    sistemaSolar = loadImage("SistemaSolar.png");
  } else {
    sistemaSolar = loadImage("SistemaSolarMouse.png");
  }

  // Escena del Sistema Solar
  // Imagen y creación de la Tierra
  Tierra = loadImage("Tierra.jpg");
  noStroke();
  sphereDetail(100);
  esferaTierra = createShape(SPHERE, radioTierra);
  esferaTierra.setTexture(Tierra);

  // Imagen y creación del Sol
  Sol = loadImage("TexturaSol.jpg");
  noStroke();
  sphereDetail(1000);
  esferaSol = createShape(SPHERE, radioSol);
  esferaSol.setTexture(Sol);

  // Imagen y creación de Mercurio
  Mercurio = loadImage("TexturaMercurio.jpg");
  noStroke();
  sphereDetail(100);
  esferaMercurio = createShape(SPHERE, radioMercurio);
  esferaMercurio.setTexture(Mercurio);

  // Imagen y creación de Venus
  Venus = loadImage("TexturaVenus.jpg");
  noStroke();
  sphereDetail(100);
  esferaVenus = createShape(SPHERE, radioVenus);
  esferaVenus.setTexture(Venus);

  // Imagen y creación de Marte
  Marte = loadImage("TexturaMarte.jpg");
  noStroke();
  sphereDetail(100);
  esferaMarte = createShape(SPHERE, radioMarte);
  esferaMarte.setTexture(Venus);

  // Imagen y creación de Jupiter
  Jupiter = loadImage("TexturaJupiter.jpg");
  noStroke();
  sphereDetail(100);
  esferaJupiter = createShape(SPHERE, radioJupiter);
  esferaJupiter.setTexture(Jupiter);

  // Imagen y creación de Saturno
  Saturno = loadImage("TexturaSaturno.jpg");
  noStroke();
  sphereDetail(100);
  esferaSaturno = createShape(SPHERE, radioSaturno);
  esferaSaturno.setTexture(Saturno);

  // Imagen y creación de Urano
  Urano = loadImage("TexturaUrano.jpg");
  noStroke();
  sphereDetail(100);
  esferaUrano = createShape(SPHERE, radioUrano);
  esferaUrano.setTexture(Urano);

  // Imagen y creación de Neptuno
  Neptuno = loadImage("TexturaNeptuno.jpg");
  noStroke();
  sphereDetail(100);
  esferaNeptuno = createShape(SPHERE, radioNeptuno);
  esferaNeptuno.setTexture(Neptuno);

}

void draw() {

  background(0);

  switch (actual) {
  case MENU:
    escenaSistemaSolar();
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
void mousePressed() {
  if (actual == EstadoPantalla.MENU) {
    if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth) {
      if (mouseY >= buttonY1 && mouseY <= buttonY1 + buttonHeight) {
        actual = EstadoPantalla.RECETAS; // Cambia a la sección de "Recetas"
      } else if (mouseY >= buttonY2 && mouseY <= buttonY2 + buttonHeight) {
        actual = EstadoPantalla.EDUCACION; // Cambia a la sección de "Educación"
      }
    }
  }
}

void escenaRecetas() {
  textAlign(CENTER, CENTER);
  fill(0);
  text("Sección de Recetas:", width / 2, height / 2 - 50);

  // Lista de recetas de ejemplo
  String[] recetas = {
    "Receta 1: Sopa de verduras",
    "Receta 2: Pizza casera",
    "Receta 3: Pastel de chocolate"
  };

  // Mostrar la lista de recetas
  for (int i = 0; i < recetas.length; i++) {
    text(recetas[i], width / 2, height / 2 + i * 30);
  }
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
