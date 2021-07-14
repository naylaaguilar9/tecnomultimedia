/*
Video de Youtube: https://youtu.be/qIEYs-_DY9E
 Tp3: Ilusión Óptica Interactiva
 Legajo: 88106/6
 */
PFont Letra;
int Estado, Ancho, Pie1, Pie2;
color b, n;

void setup() {
  size(800, 600);
  background(0);
  textAlign( CENTER, CENTER);
  Letra = createFont("Caramel Sweets.ttf", 40);
  textFont(Letra, 60);
  Estado = 0;
  Pie1 = 0;
  Pie2 = 0;
  b = color(255);
  n = color(0);
}

void draw() {
  if (Estado == 0) {
    background(200);
    textSize(40);
    fill(0);
    text("Bienvenido", width/2, 90);
    text("Espero les guste", width/2, 150);
    boolean Dentro;
    Dentro= (dist(mouseX, mouseY, width/2, height/4*2)< 150/2);
    if (Dentro) {
      fill(0);
    } else {
      fill(230);
    }
    circle(width/2, height/4*2, 150);
  }
  if (Estado == 1) {
    noStroke();
    for (int i=0; i<40; i++) {
      if (i%2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      rect(i*20, 0, width, height-150); //ancho,altura
    }

    fill (b);
    rect (Pie1, 100, 100, 60); //pie 1

    fill (n);
    rect (Pie2, 300, 100, 60); //pie 2

    fill(200);
    circle(70, 520, 100);    //Boton color

    fill(100);
    circle(200, 520, 100); //Boton desde 0

    fill(50);
    circle(330, 520, 100); //Creditos

    textSize(20);
    fill(255);
    text("Color", 200, 520);
    text("Desde 0", 70, 520);
    text("Créditos", 330, 520);
  }

  if (Estado == 2) {
    background(200);
    textSize(40);
    fill(0);
    text("Créditos por la inspiración:", 400, 100);
    text("Pagina Web: Cibermitanios", 400, 150);
    text("Alumne a cargo:", 400, 250);
    text("Nayla Belen Aguilar", 400, 300);

    boolean D;
    D = (dist(mouseX, mouseY, 400, 500)< 150/2);
    if (D) {
      fill(50);
    } else {
      fill(230);
    }
    circle(400, 500, 150);
    fill(0);
    text("Inicio", 400, 500);
  }
}

void mousePressed() { 
  if (Estado == 0) {
    if ((dist(mouseX, mouseY, width/2, height/4*2)< 150/2)) {
      background(255);
      Estado = 1;
    }
  }
  if ((dist(mouseX, mouseY, 70, 520)< 100/2)) { //desde 0
    Pie1 = 0;
    Pie2 = 0;
    b = color(255);
    n = color(0);
  }
  if ((dist(mouseX, mouseY, 200, 520))< 100/2) { //color
    b = color (random(100, 140), 0, random(120, 160));
    n = b;
  }
  if ((dist(mouseX, mouseY, 330, 520)< 100/2)) { //creditos
    background(255);
    Estado = 2;
  }
  if ((dist(mouseX, mouseY, 400, 500)< 100/2)) { 
    Estado = 0;
  }
}

void keyPressed() {
  if (key == 'a') {
    Pie1++;
    Pie2++;
  }

  if (key == 's') {
    Pie1--;
    Pie2--;
  }
}
