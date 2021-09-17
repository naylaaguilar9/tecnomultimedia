/*
 Video de Youtube:
 Tp4: Aventura Grafica
 Legajo: 88106/6
 */
int posY ;
PFont Letra;
PImage [] Personajes = new PImage [8];
PImage [] Fondo = new PImage [3];
int Pantallas;

void setup() {
  size (1200, 900);

  for (int i = 0; i < Personajes.length; i++) {
    Personajes[i] = loadImage("personaje_00" + i + ".png");
  }

  Fondo [0] = loadImage("Fondo_000.png");
  Fondo [1] = loadImage("Fondo_001.png");
  Fondo [2] = loadImage("Fondo_002.png");

  Letra = createFont("Louis George Cafe Bold Italic.ttf", 24);

  Pantallas = 0;
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
    ////Rect dialog
    //fill(0);
    //rect(0, 700, width, 1200);
    recDial(color(0),0 ,700 , width, 1200);

    Dialogo(Letra, 20, color(255));
    text("Había una vez una dulce niña que quería mucho a su madre y a su abuela. Les ayudaba en todo lo que podía y como era tan buena\nel día de su cumpleaños su abuela le regaló una caperuza roja.Como le gustaba tanto e iba con ella a todas partes, pronto todos\nempezaron a llamarla Caperucita roja.", 10, 730);
    text("Un día la abuela de Caperucita, que vivía en el bosque, enfermó y la madre de Caperucita le pidió que\nle llevara una cesta con una torta y un tarro de mantequilla. Caperucita aceptó encantada.", 10, 830);

    Boton1(color (255), 1100, 840, 50, 50);
  }
  if(Pantallas == 2){
    background( Fondo [2]);
    image(Personajes[1], 0, 200);
    recDial(color(0),0 ,700 , width, 1200);
    Dialogo(Letra, 25, color(255));
    text("Cuando llegó al bosque, la pequeña comenzó a distraerse contemplando los pajaritos y el paisaje. No se\ndio cuenta de que alguien la observaba detrás de un viejo y frondoso árbol.\nDe repente, oyó una voz suave cerca de ella.", 10, 730);
    Boton1(color (255), 1100, 840, 50, 50);
  }
  
  if (Pantallas == 3){
   background( Fondo [2]);
    image(Personajes[6], 600, 90);
    recDial(color(0),0 ,700 , width, 1200);
    Dialogo(Letra, 25, color(255));
    text("– ¿A dónde vas, Caperucita?", 10, 730);
    text("– ¿A dónde te diriges?", 10, 760);
    Boton1(color (255), 1100, 840, 50, 50);
  }
  //if (Pantallas == 4){
  // background( Fondo [2]);
  //  image(Personajes[2], 600, 90);
    
  //  Boton1(color (0), 1100, 840, 50, 50);
  //}
}
/*if (Pantallas == creditos){
 background(0);
 Dialogo(Letra, 50, color(255));
 text("Trabajo Practico:\nAventura Grafica", width/2, posY);
 text("Alumne a cargo: Nayla Belen Aguilar", width/2, posY+100);
 
 
 posY = posY -2;
 }*/
 
 void mousePressed(){
   if((mouseX > 1100) && (mouseX < 1100+50) && (mouseY > 840) && (mouseY < 840+50)) {
     Pantallas ++;
   }

 }

void keyPressed() {
  if (key == 'a') {
    Pantallas = 1;
  }
}
