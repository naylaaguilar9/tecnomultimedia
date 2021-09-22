void Dialogo (PFont Fuente, int Tam, color Dial){

  fill(Dial);
  textFont(Fuente);
  textSize (Tam);
}
void Boton1(color col, float posX, float posY, float tamX, float tamY) {
  fill(col);
  rect(posX, posY, tamX, tamY);
}

void Boton2(color c, float X, float Y, float Tx, float Ty, float R) {
  fill(c);
  rect(X, Y, Tx, Ty, R);
}
//[Botones de cada camino]
void BotonF1(color l, float pX, float pY, float taX, float taY) {
  fill(l);
  rect(pX, pY, taX, taY);
}

void BotonF2(color C, float poX, float poY, float tX, float tY) {
  fill(C);
  rect(poX, poY, tX, tY);
}

void BotonF3(color co, float sX, float sY, float aX, float aY) {
  fill(co);
  rect(sX, sY, aX, aY);
}

//[Rectangulo de Dialogo]
void recDial(color col, float posX, float posY, float tamX, float tamY) {
  fill(col);
  rect(posX, posY, tamX, tamY);
}
