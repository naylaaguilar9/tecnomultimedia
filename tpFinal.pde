//------------------TP 5---------------------------
//------------Tecno Multimedia 1------------------
//----------------Comision 2----------------------
//---------Juan Lutz - Nayla Aguilar---------------
//------Entrega Nayla Aguilar - Legajo 88106/6--------
//LINK a video: https://youtu.be/Qs6YqFhVcGs

import processing.sound.*;
Aventura necesitoUnaMano;

void setup() {
  size(800, 600);
  necesitoUnaMano = new Aventura(this);
}

void draw() {
  necesitoUnaMano.draw();
}

void mouseReleased() {
  necesitoUnaMano.mouse();
}

void keyPressed() {
  necesitoUnaMano.keyP();
}

void keyReleased() {
  necesitoUnaMano.keyR();
}
