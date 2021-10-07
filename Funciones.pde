void Texto (PFont Fuente, int Tam, color Dial){

  fill(Dial);
  textFont(Fuente);
  textSize (Tam);
}

//boton cambio de pantalla
void Boton1(color col, float posX, float posY, float tamX, float tamY) {
  fill(col);
  rect(posX, posY, tamX, tamY);
}

//botones eleccion
void Boton2(color c, int X, int Y, float Tx, float Ty, float R, String texto, float TamT) {
   if (mouseOver(X, Y)) {
    fill(255, 213, 0);
  } else {
    fill(c);
  }

  rect(X, Y, Tx, Ty, R);
  pushStyle();
  textAlign(CENTER);
  textSize(TamT);
  fill(255);
  text(texto, X+Tx/4, Y+Ty/1.5);
  popStyle();
}


//[Rectangulo de Dialogo]
void recDial(color col, float posX, float posY, float tamX, float tamY) {
  fill(col);
  rect(posX, posY, tamX, tamY);
}

boolean mouseOver(int posx, int posy) {
  if (mouseX > posx && mouseX< posx+380  && mouseY> posy  && mouseY< posy+90 ) {
    return true;
  } else {
    return false;
  }
}
