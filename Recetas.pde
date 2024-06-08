// Escenas de las recetas

// Imagenes
PImage injera;
PImage crepes;
PImage polloTandoori;
PImage tartaPavlova;
PImage arepas;

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

  pushMatrix();
  // Imagen con LUT de Injeras (blanco y negro)
  for (int counter1=0; counter1<injera.width; counter1++) {
    for (int counter2=0; counter2<injera.height; counter2++) {
      color colorPixel = injera.get(counter1, counter2);
      float luma = 0.299*red(colorPixel)
        + 0.587*green(colorPixel) + 0.114*blue(colorPixel);
      colorPixel = color(luma, luma, luma);
      injera.set(counter1, counter2, colorPixel);
    }
    image(injera, width/2, height - 450);
  }
  popMatrix();
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

  pushMatrix();
  // Imagen con LUT de Crepes (blanco y negro)
  for (int counter1=0; counter1<crepes.width; counter1++) {
    for (int counter2=0; counter2<crepes.height; counter2++) {
      color colorPixel = crepes.get(counter1, counter2);
      float luma = 0.299*red(colorPixel)
        + 0.587*green(colorPixel) + 0.114*blue(colorPixel);
      colorPixel = color(luma, luma, luma);
      crepes.set(counter1, counter2, colorPixel);
    }
    image(crepes, width/2, height - 350);
  }
  popMatrix();
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

  pushMatrix();
  // Imagen con LUT de Pollo Tandoori (blanco y negro)
  for (int counter1=0; counter1<polloTandoori.width; counter1++) {
    for (int counter2=0; counter2<polloTandoori.height; counter2++) {
      color colorPixel = polloTandoori.get(counter1, counter2);
      float luma = 0.299*red(colorPixel)
        + 0.587*green(colorPixel) + 0.114*blue(colorPixel);
      colorPixel = color(luma, luma, luma);
      polloTandoori.set(counter1, counter2, colorPixel);
    }
    image(polloTandoori, width/2, height - 450);
  }
  popMatrix();
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
  
    pushMatrix();
  // Imagen con LUT de Tarta Pavlova (blanco y negro)
  for (int counter1=0; counter1<tartaPavlova.width; counter1++) {
    for (int counter2=0; counter2<tartaPavlova.height; counter2++) {
      color colorPixel = tartaPavlova.get(counter1, counter2);
      float luma = 0.299*red(colorPixel)
        + 0.587*green(colorPixel) + 0.114*blue(colorPixel);
      colorPixel = color(luma, luma, luma);
      tartaPavlova.set(counter1, counter2, colorPixel);
    }
    image(tartaPavlova, width/2, height - 400);
  }
  popMatrix();
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

  pushMatrix();
  // Imagen con LUT de Arepas (blanco y negro)
  for (int counter1=0; counter1<arepas.width; counter1++) {
    for (int counter2=0; counter2<arepas.height; counter2++) {
      color colorPixel = arepas.get(counter1, counter2);
      float luma = 0.299*red(colorPixel)
        + 0.587*green(colorPixel) + 0.114*blue(colorPixel);
      colorPixel = color(luma, luma, luma);
      arepas.set(counter1, counter2, colorPixel);
    }
    image(arepas, width/2, height - 400);
  }
  popMatrix();
}
