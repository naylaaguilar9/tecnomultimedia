/*
 Video de Youtube: https://youtu.be/NQ2X2KfpfYI
 Tp4: Aventura Grafica
 Legajo: 88106/6
 */
PFont Letra;
PImage [] Personajes = new PImage [19];
PImage [] Fondo = new PImage [6];
int Pantallas, Final1, Final2, Final3;
boolean mouseOver;

void setup() {
  size (1200, 900);

  for (int i = 0; i < Personajes.length; i++) {
    Personajes[i] = loadImage("personaje_0" + i + ".png");
  }

  Fondo [0] = loadImage("Fondo_000.png");
  Fondo [1] = loadImage("Fondo_001.png");
  Fondo [2] = loadImage("Fondo_002.png");
  Fondo [3] = loadImage("Fondo_003.jpg");
  Fondo [4] = loadImage("Fondo_004.jpg");
  Fondo [5] = loadImage("Fondo_005.jpg");

  Letra = createFont("Louis George Cafe Bold Italic.ttf", 24);

  Pantallas = 0;
  Final1 = 0;
  Final2 = 0;
  Final3 = 0;
  mouseOver = false;
}

void draw() {
  //println(Pantallas);

  if (Pantallas == 0) {
    background( Fondo [0]);
    fill(255);
    rect(300, 700, 600, 100);
    Texto(Letra, 40, color(0));
    text("Presiona A para comenzar!", 330, 760);
  }
  if (Pantallas == 1) {
    background( Fondo [1]);
    image(Personajes[0], 0, 0);
    recDial(color(0), 0, 700, width, 1200);

    Texto(Letra, 20, color(255));
    text("Había una vez una dulce niña que quería mucho a su madre y a su abuela. Les ayudaba en todo lo que podía y como era tan buena\nel día de su cumpleaños su abuela le regaló una caperuza roja.Como le gustaba tanto e iba con ella a todas partes, pronto todos\nempezaron a llamarla Caperucita roja.", 10, 730);
    text("Un día la abuela de Caperucita, que vivía en el bosque, enfermó y la madre de Caperucita le pidió que\nle llevara una cesta con una torta y un tarro de mantequilla. Caperucita aceptó encantada.", 10, 830);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Pantallas == 2) {
    background( Fondo [2]);
    image(Personajes[1], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Cuando llegó al bosque, la pequeña comenzó a distraerse contemplando los pajaritos y el paisaje. No se\ndio cuenta de que alguien la observaba detrás de un viejo y frondoso árbol.\nDe repente, oyó una voz suave cerca de ella.", 10, 730);
    Boton1(color (255), 1130, 840, 50, 50);
  }

  if (Pantallas == 3) {
    background( Fondo [2]);
    image(Personajes[6], 600, 90);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Era un Lobo vestido muy elegante y con un aura muy feliz, acercandose mientras saludaba con su pata.", 10, 730);
    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Pantallas == 4) {
    background( Fondo [2]);
    image(Personajes[7], 500, 80);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-¿A dónde vas, Pequeña niña?", 10, 730);
    text("-¿A dónde te diriges?", 10, 760);
    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Pantallas == 5) {
    background( Fondo [2]);
    image(Personajes[2], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 30, color(255));
    text("¿Qué deberias hacer ahora?", 10, 740);

    Boton2(color(20, 193, 78), 800, 200, 380, 90, 30, "Hablarle", 40);

    Boton2(color(50, 132, 239), 800, 420, 380, 90, 30, "Ignorarle", 40);
  }
  //----------------------------------------- Camino 1
  if (Final1 == 1) {
    background( Fondo [2]);
    image(Personajes[3], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-Pues voy a visitar a mi querida Abuela, quien vive al llegar hasta el final del camino, señor Lobo!", 10, 730);
    text("-Usted que hace por aqui?", 10, 770);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 2) {
    background( Fondo [2]);
    image(Personajes[6], 500, 80);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-Yo también vivo por allí. Y no mucho, solo paseaba por estos lados mirando el maravilloso paisaje.", 10, 730);
    text("-Señorita no te gustaria jugar conmigo?", 10, 770);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 3) {
    background( Fondo [2]);
    image(Personajes[1], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("¿Deberias aceptar?", 10, 730);

    Boton2(color(20, 193, 78), 800, 200, 380, 90, 30, "Aceptar", 40);

    Boton2(color(50, 132, 239), 800, 420, 380, 90, 30, "Negarte", 40);
  }

  if (Final1 == 4) {
    background( Fondo [2]);
    image(Personajes[2], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-Claro que si, señor Lobo!\n¿Qué tipo de juego propone?", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 5) {
    background( Fondo [2]);
    image(Personajes[7], 500, 80);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-Te echo una carrera a ver quién llega antes. Cada uno iremos por un camino diferente ¿te parece bien?", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 6) {
    background( Fondo [2]);
    image(Personajes[3], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("La inocente niña pensó que era una idea divertida y asintió con la cabeza. No sabía que el lobo\nhabía elegido el camino más corto para llegar primero a su destino.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 7) {
    background( Fondo [3]);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Cuando el animal  llegó a casa de la abuela, llamó a la puerta.\n -¿Quién es? - Gritó la mujer.\n-Soy yo, abuelita, tu querida nieta Caperucita. Ábreme la puerta - Dijo el lobo imitando la voz de la niña.\n-Pasa, querida mía. La puerta está abierta - Contestó la abuela.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 8) {
    background( Fondo [4]);
    image(Personajes[8], 0, 0); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("El malvado lobo entró en la casa y sin pensárselo dos veces, saltó sobre ella y se comió a la anciana.\nDespués, se puso su ropa y su pañuelo de dormir y se metió entre las sábanas esperando a que\nllegara la niña. Al rato, se oyeron unos golpes.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 9) {
    background( Fondo [3]);
    image(Personajes[2], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-¿Quién llama?- Dijo el lobo forzando la voz como si fuera la abuelita.\n-Soy yo, Caperucita. Vengo a hacerte una visita y a traerte unos ricos dulces para merendar.\nPasa, querida, estoy deseando abrazarte - Dijo el lobo malvado relamiéndose.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 10) {
    background( Fondo [5]);
    image(Personajes[5], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("La habitación estaba en penumbra.\nCuando se acercó a la cama, a Caperucita le pareció que su abuela estaba muy cambiada.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 11) {
    background( Fondo [5]);
    image(Personajes[4], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Extrañada, Dijo:\n-Abuelita, abuelita ¡qué ojos tan grandes tienes!\n-Son para verte mejor, preciosa mía.- Contestó el lobo, suavizando la voz.\n-Abuelita, abuelita ¡qué orejas tan grandes tienes!\n-Son para oírte mejor, querida.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 12) {
    background( Fondo [5]);
    image(Personajes[12], 0, 0);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-Pero... abuelita, abuelita ¡qué boca tan grande tienes!\n-¡Es para comerte mejor!- Gritó el lobo dando un enorme salto pero fallo en comerce a Caperucita.\nLa niña tomo la oportunidad y salio corriendo hacia el bosque en busca de ayuda.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 13) {
    background( Fondo [2]);
    image(Personajes[13], 0, 0); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("En su escapada, Caperucita se choca contra un leñador que pasaba por el bosque,\nal cual le pide ayuda para salvar a su abuela.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 14) {
    background( Fondo [4]);
    image(Personajes[14], 0, 0);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Una vez de vuelta, encuentran al lobo tomando una siesta. Por lo que el leñador utiliza un cuchillo para\nabrirle el estomago y para su sorpresa la abuela sale sana.\nLuego de rescatarla, el Leñador cose la barriga del lobo y esperan a que este despierte.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final1 == 15) {
    background( Fondo [2]);
    image(Personajes[11], 0, 0); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Cuando por fin abrió los ojos, vio como los tres le rodeaban y escuchando la amenazante voz del cazador:\n-¡Lárgate, lobo malvado! ¡Como vuelva a verte por aquí, no volverás\na contarlo!\nEl lobo, aterrado, se puso de pie y salió despavorido.\nCaperucita y su abuelita, con lágrimas cayendo sobre sus mejillas, se abrazaron.", 10, 740);

    Boton2(color(129, 120, 120), 800, 600, 380, 90, 30, "Creditos", 40);
  }
  //------------------------------------- Camino 2
  if (Final2 == 1) {
    background( Fondo [2]);
    image(Personajes[4], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-Lo siento señor, tengo que ir rapido a la casa de mi abuela. Que tenga un buen dia.\nLe dijo timidamente mientras trataba de rodearlo y seguir su camino.", 10, 740);
    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final2 == 2) {
    background( Fondo [2]);
    image(Personajes[15], 500, 80); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-...\nEl lobo se quedo callado y dejo pasar a la Caperusa sin mucho problema.\nPero lo que no sabia Caperusa es que el lobo comenzo a moverse entre los caminos que conocia, un\nsendero mas corto para la casa de la abuela.\nYa que se habia dado cuenta para donde se dirigia la niña.", 10, 740);
    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final2 == 3) {
    background( Fondo [3]);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Cuando el animal  llegó a casa de la abuela, llamó a la puerta.\n -¿Quién es? - Gritó la mujer.\n-Soy yo, abuelita, tu querida nieta Caperucita. Ábreme la puerta - Dijo el lobo imitando la voz de la niña.\n-Pasa, querida mía. La puerta está abierta - Contestó la abuela.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final2 == 4) {
    background( Fondo [4]);
    image(Personajes[8], 0, 0);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("El malvado lobo entró en la casa y sin pensárselo dos veces, saltó sobre ella y se comió a la anciana.\nDespués, se puso su ropa y su pañuelo de dormir y se metió entre las sábanas esperando a que\nllegara la niña. Al rato, se oyeron unos golpes.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final2 == 5) {
    background( Fondo [3]);
    image(Personajes[2], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-¿Quién llama?- Dijo el lobo forzando la voz como si fuera la abuelita.\n-Soy yo, Caperucita. Vengo a hacerte una visita y a traerte unos ricos dulces para merendar.\nPasa, querida, estoy deseando abrazarte - Dijo el lobo malvado relamiéndose.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final2 == 6) {
    background( Fondo [5]);
    image(Personajes[5], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("La habitación estaba en penumbra.\nCuando se acercó a la cama, a Caperucita le pareció que su abuela estaba muy cambiada.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final2 == 7) {
    background( Fondo [5]);
    image(Personajes[4], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Extrañada, Dijo:\n-Abuelita, abuelita ¡qué ojos tan grandes tienes!\n-Son para verte mejor, preciosa mía.- Contestó el lobo, suavizando la voz.\n-Abuelita, abuelita ¡qué orejas tan grandes tienes!\n-Son para oírte mejor, querida.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final2 == 8) {
    background( Fondo [5]);
    image(Personajes[12], 0, 0); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-Pero... abuelita, abuelita ¡qué boca tan grande tienes!\n-¡Es para comerte mejor!-Gritó el lobo dando un enorme salto y comiendose al instante\na la niña de un solo bocado.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final2 == 9) {
    background( Fondo [4]);
    image(Personajes[10], 0, 0); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Una vez terminada su cena, el lobo se arregla bien la ropa y se acomoda en su nueva casa,\nesperando por nuevas victimas.", 10, 740);

    Boton2(color(129, 120, 120), 800, 600, 380, 90, 30, "Creditos", 40);
  }
  //------------------------------------- Camino 2
  if (Final3 == 1) {
    background( Fondo [2]);
    image(Personajes[5], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-Lo siento señor Lobo, creo que seria mejor si me voy directo.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final3 == 2) {
    background( Fondo [2]);
    image(Personajes[15], 500, 80); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-¡Pero por supuesto niña! No hay ningun problema, espero que tengas un buen viaje.\nLo que no sabia Caperusa es que el lobo comenzo a moverse entre los caminos que conocia, un\nsendero mas corto para la casa de la abuela.\nYa que se habia dado cuenta para donde se dirigia la niña.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final3 == 3) {
    background( Fondo [3]);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Cuando el animal  llegó a casa de la abuela, llamó a la puerta.\n -¿Quién es? - Gritó la mujer.\n-Soy yo, abuelita, tu querida nieta Caperucita. Ábreme la puerta - Dijo el lobo imitando la voz de la niña.\n-Pasa, querida mía. La puerta está abierta - Contestó la abuela.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final3 == 4) {
    background( Fondo [4]);
    image(Personajes[8], 0, 0);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("El malvado lobo entró en la casa y sin pensárselo dos veces, saltó sobre ella y le mordio la yugular.\nDespués, la pone a cocinar, se pone su ropa y su pañuelo de dormir y se metió entre las\nsábanas esperando a que llegara la niña.\nAl rato, se oyeron unos golpes.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final3 == 5) {
    background( Fondo [3]);
    image(Personajes[2], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-¿Quién llama?- Dijo el lobo forzando la voz como si fuera la abuelita.\n-Soy yo, Caperucita. Vengo a hacerte una visita y a traerte unos ricos dulces para merendar.\nPasa, querida, estoy deseando abrazarte - Dijo el lobo malvado relamiéndose.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final3 == 6) {
    background( Fondo [4]);
    image(Personajes[16], 0, 0); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("La habitación estaba en penumbra.\nCuando se acercó a la cocina, a Caperucita le pareció que su abuela estaba muy cambiada.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }

  if (Final3 == 7) {
    background( Fondo [4]);
    image(Personajes[4], 0, 200);
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-Ven a sentarte para comer algo querida.- Dijo el lobo forzando la voz como si fuera la abuelita.\n-Se te escucha algo rara abuela...¿Estas segura que te sientes bien?\n-¡Pero por supuesto mi niña! Ahora come un poco que estas muy delgada.- El lobo hablo mientras sacaba su victima del horno", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final3 == 8) {
    background( Fondo [4]);
    image(Personajes[17], 0, 0); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Una vez sentada,Caperucita se da cuenta que la carne se ve y tiene un aroma extraño.\n-Abuela esta carne tiene un aroma muy extraño...\n-Claro que no! Come mi niña.- Hablo el Lobo mientras sonreia\nCaperucita sintiendo lo extraño de la situación comenzo a tomar el cuchillo para protegerse.\n-Abuelita, abuelita ¡qué ojos tan grandes tienes!\n-Son para verte mejor, preciosa mía.- Contestó el lobo, suavizando la voz.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final3 == 9) {
    background( Fondo [4]);
    image(Personajes[18], 0, 0); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("-Pero... abuelita, abuelita ¡Tienes una boca muy grande tienes!\n-¡Es para comerte mejor!-Gritó el lobo dando un enorme salto, por suerte Caperucita\nutiliza el utensillo que ya estaba sosteniendo como arma y la utiliza para apuñala al Lobo, dandose\ncuenta quien realmente era al mismo tiempo.", 10, 740);

    Boton1(color (255), 1130, 840, 50, 50);
  }
  if (Final3 == 10) {
    background( Fondo [4]);
    image(Personajes[9], 200, 0); 
    recDial(color(0), 0, 700, width, 1200);
    Texto(Letra, 25, color(255));
    text("Con el dolor de saber que su abuela le habia pasado algo, arrastro al Lobo al horno y\nlo dejo que se cocinada vivo.\nUna vez muerto y asado, la niña coloca un pedazo en un plato y comienza a comer.\n-Esto es lo que le pasa a los lobos malos.-Hablo con un tono frio Caperucita.", 10, 740);

    Boton2(color(129, 120, 120), 800, 600, 380, 90, 30, "Creditos", 40);
  }
  if (Pantallas == 6) {
    background(0);
    pushStyle();
    Texto(Letra, 50, color(255));
    textAlign(CENTER);
    text("Trabajo Practico Nº4:\nAventura Grafica", width/2, 100);
    text("Alumna a cargo: Nayla Belen Aguilar", width/2, 300);
    text("Caperucita Roja", width/2, 500);
    text("Adaptación del cuento de Charles Perrault", width/2, 600);
    popStyle();

    Boton2(color(129, 120, 120), 400, 800, 380, 90, 30, "Reiniciar", 40);
  }
}
void keyPressed() {
  if (key == 'a' && Pantallas == 0) {
    Pantallas = 1;
  }
}


void mouseReleased() {
  
  if ((Pantallas < 5) && (mouseX > 1130) && (mouseX < 1130+50) && (mouseY > 840) && (mouseY < 840+50)) {
    Pantallas ++;
  }
  if ((Final1 > 0) && (Final1 < 15) && (mouseX > 1130) && (mouseX < 1130+50) && (mouseY > 840) && (mouseY < 840+50)) {
    Final1 ++;
  }

  if ((Final1 == 0) && (mouseX > 800) && (mouseX < 800+380) && (mouseY > 200) && (mouseY < 200+90)) {
    Final1 = 1; //Positivo
  }
  if ((Final1 == 3) && (mouseX > 800) && (mouseX < 800+380) && (mouseY > 200) && (mouseY < 200+90)) {
    Final1 = 4;
  }
  if ((Pantallas == 5) && (mouseX > 800) && (mouseX < 800+380) && (mouseY > 420) && (mouseY < 420+90)) {
    Final2 = 1; //ignorar
  }
  if ((Final2 > 0) && (Final2 < 9) && (mouseX > 1130) && (mouseX < 1130+50) && (mouseY > 840) && (mouseY < 840+50)) {
    Final2 ++;
  }
  if ((Final1 == 3) && (mouseX > 800) && (mouseX < 800+380) && (mouseY > 420) && (mouseY < 420+90)) {
    Final3 = 1; //negarte
  }
  if ((Final3 > 0) && (Final3 < 10) && (mouseX > 1130) && (mouseX < 1130+50) && (mouseY > 840) && (mouseY < 840+50)) {
    Final3 ++;
  }
  //----Creditos------
  if ((Final1 == 15) && (mouseX > 800) && (mouseX < 800+380) && (mouseY > 600) && (mouseY < 600+90)) { 
    Pantallas = 6;
  }
  if ((Final2 == 9) && (mouseX > 800) && (mouseX < 800+380) && (mouseY > 600) && (mouseY < 600+90)) {
    Pantallas = 6;
  }
  if ((Final3 == 10) && (mouseX > 800) && (mouseX < 800+380) && (mouseY > 600) && (mouseY < 600+90)) {
    Pantallas = 6;
  }
  //-----Reinicio------
  if ((Pantallas == 6) && (mouseX > 400) && (mouseX < 400+380) && (mouseY > 800) && (mouseY < 800+90)) {
    Pantallas = 0;
    Final1 = 0;
    Final2 = 0;
    Final3 = 0; 
  }
}
