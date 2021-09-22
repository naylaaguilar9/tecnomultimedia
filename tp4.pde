/*
 Video de Youtube:
 Tp4: Aventura Grafica
 Legajo: 88106/6
 */
PFont Letra;
PImage [] Personajes = new PImage [8];
PImage [] Fondo = new PImage [5];
int Pantallas, posY, Final1, Final2, Final3;

void setup() {
  size (1200, 900);

  for (int i = 0; i < Personajes.length; i++) {
    Personajes[i] = loadImage("personaje_00" + i + ".png");
  }

  Fondo [0] = loadImage("Fondo_000.png");
  Fondo [1] = loadImage("Fondo_001.png");
  Fondo [2] = loadImage("Fondo_002.png");
  Fondo [4] = loadImage("Fondo_003.jpg");

  Letra = createFont("Louis George Cafe Bold Italic.ttf", 24);

  Pantallas = 0;
  Final1 = 0;
  Final2 = 0;
  Final3 = 0;
  posY = height;
}

void draw() {
  //background(0);
  //Dialogo(Letra, 20, color(255));
  //text(text, width/2, height/2);

  println(Pantallas);

  if (Pantallas == 0) {
    background( Fondo [0]);
    fill(255);
    //rect(300, 700, 600, 100, 100/4 ); boton redondeado, ultimo punto
    rect(300, 700, 600, 100);
    Dialogo(Letra, 40, color(0));
    text("Presiona A para comenzar!", 330, 760);
  }
  if (Pantallas == 1) {
    background( Fondo [1]);
    image(Personajes[0], 0, 0);
    recDial(color(0), 0, 700, width, 1200);

    Dialogo(Letra, 20, color(255));
    text("Había una vez una dulce niña que quería mucho a su madre y a su abuela. Les ayudaba en todo lo que podía y como era tan buena\nel día de su cumpleaños su abuela le regaló una caperuza roja.Como le gustaba tanto e iba con ella a todas partes, pronto todos\nempezaron a llamarla Caperucita roja.", 10, 730);
    text("Un día la abuela de Caperucita, que vivía en el bosque, enfermó y la madre de Caperucita le pidió que\nle llevara una cesta con una torta y un tarro de mantequilla. Caperucita aceptó encantada.", 10, 830);

    Boton1(color (255), 1100, 840, 50, 50);
  }
  if (Pantallas == 2) {
    background( Fondo [2]);
    image(Personajes[1], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Dialogo(Letra, 25, color(255));
    text("Cuando llegó al bosque, la pequeña comenzó a distraerse contemplando los pajaritos y el paisaje. No se\ndio cuenta de que alguien la observaba detrás de un viejo y frondoso árbol.\nDe repente, oyó una voz suave cerca de ella.", 10, 730);
    Boton1(color (255), 1100, 840, 50, 50);
  }

  if (Pantallas == 3) {
    background( Fondo [2]);
    image(Personajes[6], 600, 90);
    recDial(color(0), 0, 700, width, 1200);
    Dialogo(Letra, 25, color(255));
    text("Era un Lobo vestido muy elegante y con un aura muy feliz, acercandose mientras saludaba con su pata.", 10, 730);
    Boton1(color (255), 1100, 840, 50, 50);
  }
  if (Pantallas == 4) {
    background( Fondo [2]);
    image(Personajes[7], 500, 80);
    recDial(color(0), 0, 700, width, 1200);
    Dialogo(Letra, 25, color(255));
    text("– ¿A dónde vas, Pequeña niña?", 10, 730);
    text("– ¿A dónde te diriges?", 10, 760);
    Boton1(color (255), 1100, 840, 50, 50);
  }
  if (Pantallas == 5) {
    background( Fondo [2]);
    image(Personajes[2], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Dialogo(Letra, 30, color(255));
    text("¿Qué deberias hacer ahora?", 10, 740);

    Boton2(color(20, 193, 78), 800, 200, 380, 90, 30);
    Dialogo(Letra, 40, color(255));
    text("Hablarle", 920, 260);

    //Boton2(color(210,12,25),800, 310, 380, 90,30);
    //Dialogo(Letra, 40, color(255));
    //text("Negarle la charla",850,370);

    Boton2(color(50, 132, 239), 800, 420, 380, 90, 30);
    Dialogo(Letra, 40, color(255));
    text("Ignorarle", 920, 480);
  }
  //----------------------------------------- Camino 1
  if (Final1 == 1) {
    background( Fondo [2]);
    image(Personajes[3], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Dialogo(Letra, 25, color(255));
    text("Pues voy a visitar a mi querida Abuela, señor Lobo!", 10, 730);
    text("Usted que hace por aqui?", 10, 770);

    BotonF1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 2) {
    background( Fondo [2]);
    image(Personajes[6], 500, 80);
    recDial(color(0), 0, 700, width, 1200);
    Dialogo(Letra, 25, color(255));
    text("No mucho, Solo paseaba por estos lados mirando el maravilloso paisaje.", 10, 730);
    text("Señorita no te gustaria jugar conmigo?", 10, 770);

    BotonF1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 3) {
    background( Fondo [2]);
    image(Personajes[1], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Dialogo(Letra, 25, color(255));
    text("¿Deberias aceptar?", 10, 730);

    Boton2(color(20, 193, 78), 800, 200, 380, 90, 30);
    Dialogo(Letra, 40, color(255));
    text("Aceptar", 920, 260);

    Boton2(color(50, 132, 239), 800, 420, 380, 90, 30);
    Dialogo(Letra, 40, color(255));
    text("Negarte", 920, 480);
    //text("Señorita no te gustaria jugar conmigo?", 10, 770);
    //BotonF1(color (255), 1130, 840, 50, 50);
  }

  if (Final1 == 4) {
    background( Fondo [2]);
    image(Personajes[1], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Dialogo(Letra, 30, color(255));
    text("¿Deberias aceptar?", 10, 740);

    BotonF1(color(20, 193, 78), 700, 310, 200,90);
    Dialogo(Letra, 40, color(255));
    text("Aceptar", 920, 260);

    BotonF2(color(210, 12, 25), 700, 520, 200,90);
    Dialogo(Letra, 40, color(255));
    text("Negarte", 920, 480);
  }
  if (Final1 == 5) {
    background( Fondo [2]);
    image(Personajes[2], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Dialogo(Letra, 30, color(255));
    text("Claro que si, señor Lobo!\n¿Qué tipo de juego propone?", 10, 740);
  }
  if (Final2 == 1) {
    background( Fondo [2]);
    image(Personajes[2], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Dialogo(Letra, 30, color(255));
    text("Claro que si, señor Lobo!\n¿Qué tipo de juego propone?", 10, 740);
  }
}
/*if (Pantallas == creditos){
 background(0);
 Dialogo(Letra, 50, color(255));
 textAlign(CENTER);
 text("Trabajo Practico Nº4:\nAventura Grafica", width/2, posY);
 text("Alumne a cargo: Nayla Belen Aguilar", width/2, posY+100);
 
 
 //posY = posY -2;
 }*/
void keyPressed() {
  if (key == 'a') {
    Pantallas = 1;
  }
}


void mousePressed() {
  if ((mouseX > 1100) && (mouseX < 1100+50) && (mouseY > 840) && (mouseY < 840+50)) {
    Pantallas ++;
  }
  if ((mouseX > 1130) && (mouseX < 1130+50) && (mouseY > 840) && (mouseY < 840+50)) {
    Final1 ++;
  }

  if ((mouseX > 800) && (mouseX < 800+380) && (mouseY > 200) && (mouseY < 200+90)) {
    Final1 = 1; //Positivo
  }

  if ((mouseX > 800) && (mouseX < 800+380) && (mouseY > 420) && (mouseY < 420+90)) {
    Final3 = 1; //Ignora
  }

  //if ((mouseX > 700) && (mouseX < 700+200) && (mouseY > 520) && (mouseY < 520+90)) {
  //  Final2 = 1; //Negativo
  //}
  //if ((mouseX > 700) && (mouseX < 700+200) && (mouseY > 310) && (mouseY < 310+90)) {  
  //  Final1 = 5; //Negativo
  ////}

}
