void setup (){
  size(700,600); //(alto,ancho) (x,y)
  background(255,255,255); //blanco
  strokeWeight(2);
  
  }
  
  void draw(){
  line(350,100,150,370); //(x1,y1,x2,y2)
  line(150,370,550, 370);
  line(550, 370,350,100);
  
  line(350,100,170,170); //linea rojo a magenta
  line(350,100,550, 170); //linea rojo a amarillo
  
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
  circle(150, 150, 100); //circle(x, y, extent)
  
  fill (255,255,0); //amarillo
  circle(550, 150, 100);
  
   fill (0,183,235); //cian
  circle(350, 470, 100);
  
  
   fill (226,4,4); //rojo
  circle(350, 100, 120);
  
  fill (5,29,239); //azul
  circle(150, 370,120);
  
  fill (0,213,0); //verde
  circle(550, 350, 120);
  
  
  fill(0,135,209);
  circle(200,500,70); //ceruleo
  
    fill(0,153,117);
  circle(500,500,70); //esmeralda
  
  fill(191,255,0);
  circle(640,260,70); //verde lima
  
  fill(255,128,0);
  circle(450,50,70); //naranja
  
  fill(148,0,211);
  circle(80,270,70); //violeta
    
    fill(227,0,82);
  circle(250,50,70); //fucsia
    
  }
