//PRÁCTICA AA2: Alfredo Ugarte y Pol Blesa

enum EstadoPantalla {
  MENU, SISTEMA_SOLAR, BANDERAS
}

EstadoPantalla actual;

// Inicialización estrellas del menú principal
int[] estrellas_x;
int[] estrellas_y;
int amount_estrellas = (int)random(50, 100);
float radius_estrellas = 2.5;


void setup() {

  estrellas_x = new int[amount_estrellas];
  estrellas_y = new int[amount_estrellas];
  for (int counter = 0; counter < amount_estrellas; counter++) {
    estrellas_x[counter] = (int)random(-width, width * 2);
    estrellas_y[counter] = (int)random(-height, height * 2);
  }


  // Tamaño de la pantalla (pantalla completa)
  fullScreen(P3D);

  // Imagen y creación de la Tierra del menú principal
  Tierra = loadImage("Tierra.jpg");
  noStroke();
  sphereDetail(100);
  esfera = createShape(SPHERE, 1600);
  esfera.setTexture(Tierra);

  // Pantalla del menu principal
  actual = EstadoPantalla.MENU;
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

void escenaSistemaSolar() {
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
