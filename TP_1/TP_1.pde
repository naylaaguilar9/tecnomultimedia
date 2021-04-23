void setup (){
  size(700,600); //(alto,ancho) (x,y)
  background(255,255,255); //blanco
  strokeWeight(2);
  
  }
  
  void draw(){
  line(200,200,550,200); //(x1,y1,x2,y2)
  line(200,200,350,470);
  line(500,200,350,470);
  
  line(350,100,170,170); //linea rojo a magenta
  line(350,100,570,200); //linea rojo a marillo
  
  line(150,350,150,200); //linea azul a magenta
  line(150,370,350,470); //linea azul a cian
  
  line(550,350,550,150); //linea verde a amarillo
  line(550,350,350,470); //linea verde a cian
  
  line(150,370,200,500); //linea azul a ceruleo
  line(350,470,200,500); //linea cian a ceruleo
  
  line(350,470,500,500); //linea cian a esmeralda
  line(550, 350,500,500); //linea verde a esmeralda
  
  line(550, 350,640,260); //linea verde a verde lima
  line(550,150,640,260); //linea amarillo a verde lima
  
  line(550,150,450,50); //linea amarillo a naranja
  line(350,100,450,50); //linea rojo a naranja
  
  line(150,200,80,270); //linea magenta a violeta
  line(150,370,80,270); //linea azul a violeta
  
  line(150,200,250,50); //linea magenta a fucsia
  line(350,100,250,50); //linea rojo a fucsia
  
  fill (255,0,119); //magenta
  circle(150, 150, 150); //circle(x, y, extent)
  
  fill (255,255,0); //amarillo
  circle(550, 150, 150);
  
   fill (0,183,235); //cian
  circle(350, 470, 150);
  
  
   fill (226,4,4); //rojo
  circle(350, 100, 100);
  
  fill (5,29,239); //azul
  circle(150, 370,100);
  
  fill (0,213,0); //verde
  circle(550, 350, 100);
  
  
  fill(0,135,209);
  circle(200,500,80); //ceruleo
  
    fill(0,153,117);
  circle(500,500,80); //esmeralda
  
  fill(191,255,0);
  circle(640,260,80); //verde lima
  
  fill(255,128,0);
  circle(450,50,80); //naranja
  
  fill(148,0,211);
  circle(80,270,80); //violeta
    
    fill(227,0,82);
  circle(250,50,80); //fucsia
    
  fill(0,0,0);
  textSize(35);
text("Magenta",80,160);

fill(0,0,0);
  textSize(35);
text("Amarillo",480,160);

fill(0,0,0);
  textSize(35);
text("Cian",320,480);

fill(0,0,0);
  textSize(25);
text("Rojo",325,110); //("palabra",x,y)

fill(0,0,0);
  textSize(25);
text("Azul",120,380);

fill(0,0,0);
  textSize(25);
text("Verde",515,360);

fill(0,0,0);
  textSize(15);
text("Cerúleo",175,505);

fill(0,0,0);
  textSize(15);
text("Esmeralda",465,500);

fill(0,0,0);
  textSize(15);
text("Lima",620,265);

fill(0,0,0);
  textSize(15);
text("Naranja",420,55);

fill(0,0,0);
  textSize(15);
text("Violeta",55,275);

fill(0,0,0);
  textSize(15);
text("Fucsia",230,55);
  }
