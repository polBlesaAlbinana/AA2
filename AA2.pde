//PRÁCTICA AA2: Alfredo Ugarte y Pol Blesa

enum EstadoPantalla {
  MENU, SISTEMA_SOLAR, BANDERAS
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
  
  // Imagen i creación del Sol en la escena del sistema solar
  Sol = loadImage("Tierra.jpg");
  noStroke();
  sphereDetail(100);
  esferaSol = createShape(SPHERE, 696);
  esferaSol.setTexture(Tierra);
  
  // Imagen y creación de la Tierra del menú principal
  Tierra = loadImage("Tierra.jpg");
  noStroke();
  sphereDetail(100);
  esferaTierra = createShape(SPHERE, 63.71);
  esferaTierra.setTexture(Tierra);

}

void draw() {

  background(0);

  switch (actual) {
  case MENU:
    escenaMenu();
    break;
  case SISTEMA_SOLAR:
    escenaSistemaSolar();
    break;
  case BANDERAS:
    escenaBanderas();
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
