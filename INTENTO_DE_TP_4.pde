PFont Letra;
PImage [] Personajes = new PImage [8];
PImage [] Fondo = new PImage [3];
int Pantallas;

void setup() {
  size (1200, 900);

  Personajes [0] = loadImage("1 escena.png");
  Personajes [1] = loadImage("tp4 caperucita 1.png");
  Personajes [2] = loadImage("tp4 Lobo 1.png");
  Personajes [3] = loadImage("tp4 caperucita 2.png");
  Personajes [4] = loadImage("tp4 Lobo 2.png");
  Personajes [5] = loadImage("tp4 caperucita ACEPTA camino 1.png");
  Personajes [6] = loadImage("tp4 caperucita NIEGA camino 2.png");
  Personajes [7] = loadImage("tp4 caperucita IGNORA camino 3.png");

  Fondo [0] = loadImage("tp4 PORTADA.png");
  Fondo [1] = loadImage("tp4 fondo 2 casa.png");
  Fondo [2] = loadImage("tp4 fondo 1 bosque.png");

  Letra = createFont("Louis George Cafe Bold Italic.ttf", 24);

  Pantallas = 0;
}

void draw() {
  //background(0);
  //Dialogo(Letra, 20, color(255));
  //text(text, width/2, height/2);
  println(Pantallas);
  if (Pantallas == 0) {
    background( Fondo [0]);
    fill(255);
    //rect(300, 700, 600, 100, 100/4 ); boton redondo, ultimo punto
    rect(300, 700, 600, 100);
    Dialogo(Letra, 40, color(0));
    text("Presiona A para comenzar!", 330, 760);
  }
  if (Pantallas == 1) {
    background( Fondo [1]);
    //Rect dialog
    fill(0, 230);
    rect(0, 600, width, 1200);
    Dialogo(Letra, 25, color(255));
    text("Había una vez una dulce niña que quería mucho a su madre y a su abuela. Les ayudaba en todo lo que\npodía y como eratan buena el día de su cumpleaños su abuela le regaló una caperuza roja.\nComo le gustaba tanto e iba con ella a todas partes, pronto todos empezaron a llamarla Caperucita roja.", 10, 650);
    text("Un día la abuela de Caperucita, que vivía en el bosque, enfermó y la madre de Caperucita le pidió que\nle llevara una cesta con una torta y un tarro de mantequilla. Caperucita aceptó encantada.", 10,780);
    fill(0);
    rect(1100,800,1000,800);
    //image(Personajes [0], 0,0);
  }
}

void keyPressed() {
  if (key == 'a') {
    Pantallas = 1;
  }
}
