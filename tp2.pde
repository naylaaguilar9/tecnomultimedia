/*
TP #2: Animación de créditos
Juego elegido: 'Minecraft'
Alumno: NAyla Belen Aguilar
Legajo: 88106/6
*/
PFont miLetra;
PImage BG, Header, Piedra, Bedrock, Diamante, Sword;

int pos, pos2;
float S;
int posY;
int posFondo;
int Cuadrado;

void setup(){
  background(0);
  size(1190,670); //x,y
  
  miLetra = createFont("Minecraftia-Regular.ttf", 60);
  textFont(miLetra, 20);
  BG = loadImage( "uOjPT3.jpg");
  Header = loadImage( "Minecraft_Java_Edition.png");
  Piedra = loadImage( "Piedra.png");
  Piedra.resize(0, 50);
  Diamante = loadImage( "Diamante.png");
  Diamante.resize(0, 50);
  Bedrock = loadImage( "Bedrock.jpg");
  Bedrock.resize(0, 50);
  
  Sword = loadImage( "Sword.png");
  
  textAlign( CENTER, CENTER );
  
  frameRate(2000);
  
  Cuadrado = 8;
  posY  = height;
  posFondo = height/2;
  
  smooth();
noCursor();

}

void draw(){
  pos = int(random(width));
  pos2 = int(random(height));
  S = random(3);
   image(BG,0,0);
  if (S>=0 && S<=1 && pos%50<3 && pos2%50<3) {
    image(BG, 0, 0);
    image (Bedrock, pos, pos2);
    BG = get(0, 0, width, height);
  } else if (S>=1 && S<=2 && pos%50<3 && pos2%50<3) {
    image(BG, 0, 0);
    image (Diamante, pos, pos2);
    BG = get(0, 0, width, height);
  } else if (S>=2 && S<=3 && pos%50<3 && pos2%50<3) {
    image(BG, 0, 0);
    image (Piedra, pos, pos2);
    BG = get(0, 0, width, height);
  }
  
  image(Header, 300, posY);
  
  fill(255);
  text( "============", 590, posY+230);
   fill(255,231,6);
  text( "Minecraft Team", 590, posY+290);
   fill(255);
  text( "============", 590, posY+350);
  
  
  fill(107,101,95);
  text( "Original Creator", 350, posY+470);
  fill(255);
  text( "Markus Persson", 450, posY+530);
  
  fill(107,101,95);
  text( "Chief Creative Officer", 390, posY+650);
  fill(255);
  text( "Jeans Bergensten", 460, posY+710);
  
   fill(107,101,95);
  text( "Producers", 320, posY+830);
  fill(255);
  text( "Adrian Östergård", 450, posY+900); 
  text( "Dejan Dimic", 410, posY+970); 
  text( "Frederik Telenius", 450, posY+1040); 
  text( "Isabella Arningsmark", 470, posY+1110);
  
  fill(107,101,95);
  text( "Lead Engineer", 340, posY+1230);
  fill(255);
  text( "Nathan Adams", 430, posY+1300); 
  
  fill(107,101,95);
  text( "Game Developers", 360, posY+1420);
  fill(255);
  text( "Agnes Larsson", 440, posY+1490); 
  text( "Bartosz Bok", 420, posY+1560); 
  text( "Cory Scheviak", 430, posY+1630); 
  text( "Erik Broes", 410, posY+1700); 
  text( "Georgii Gavrichev", 450, posY+1770); 
  text( "Josh Letellier", 430, posY+1840); 
  text( "Maria Lemón", 415, posY+1910); 
  text( "Michael Stoyke", 430, posY+1980); 
  text( "Thomas Guimbretière", 465, posY+2050); 
   //<>//
  fill(107,101,95);
  text( "Launcher Tech Lead", 350, posY+2170);
  fill(255);
  text( "Mikael Hedberg", 440, posY+2240); 
  
  fill(107,101,95);
  text( "Launcher Developers", 360, posY+2360);
  fill(255);
  text( "Petr Mrázek", 410, posY+2430); 
  
  fill(107,101,95);
  text( "Realms Tech Lead", 340, posY+2550);
  fill(255);
  text( "Alexander Torstting", 460, posY+2620); 
  
  fill(107,101,95);
  text( "Realms Developers", 350, posY+2740);
  fill(255);
  text( "Alexandre Pretto Nunes", 500, posY+2810); 
  text( "Alexander Östman", 460, posY+2880); 
  text( "Billy Sjöberg", 430, posY+2950);
  text( "Brian Threvathan", 460, posY+3020);
  text( "Christoffer Hammarström", 500, posY+3090);
  text( "Erik Bylund", 410, posY+3160);
  text( "Henning Erlandsen", 460, posY+3230);
  text( "Mgnus Jäderberg", 450, posY+3300);
  text( "Márcio Oliveira", 430, posY+3370);
  text( "Niclas Unnervik", 430, posY+3440);
  text( "Sina Tamanna", 420, posY+3510);
  text( "Tomas Alaeus", 420, posY+3580);
  
  fill(107,101,95);
  text( "Minecraft Content Lead", 370, posY+3700);
  fill(255);
  text( "Marc Watson", 420, posY+3770); 
  
  fill(107,101,95);
  text( "Minecraft Content Coordinator", 420, posY+3890);
  fill(255);
  text( "Adam Martinsson", 440, posY+3960); 
  text( "Matthew Dryden", 430, posY+4030);
  text( "Oskar Thysell", 420, posY+4100);
  text( "Sara Lempiäinen", 430, posY+4170);
  
  fill(107,101,95);
  text( "Art Directors", 320, posY+4290);
  fill(255);
  text( "Johan Aronsson", 450, posY+4360); 
  text( "Markus Toivonen", 450, posY+4430); 
  text( "Martin Johansson", 460, posY+4500); 
  text( "Ninni Landin", 420, posY+4570);
  
  fill(107,101,95);
  text( "Graphics Artists", 320, posY+4690);
  fill(255);
  text( "Jasper Boerstra", 450, posY+4760); 
  text( "Mattis Grahm", 420, posY+4830);
  
  fill(107,101,95);
  text( "User Experience Design", 380, posY+4950);
  fill(255);
  text( "Lily Ekman", 410, posY+5020); 
  text( "Oscar Nilsson", 430, posY+5090);
  
  fill(107,101,95);
  text( "Lead User Experience Developers", 450, posY+5210);
  fill(255);
  text( "Sebastian Hidefelt", 470, posY+5280); 
  text( "Paulo Ragoha", 440, posY+5350); 
    
  fill(107,101,95);
  text( "User Experience Developers", 420, posY+5470);
  fill(255);
  text( "Albin Odervall", 470, posY+5540); 
  text( "Anna Päärni", 460, posY+5610); 
  text( "Dario Vodopivec", 480, posY+5680); 
  text( "Emelie Sidesiö", 470, posY+5750); 
  text( "Michael Novén", 470, posY+5820); 
  text( "Oleg Kozitsyn", 468, posY+5890); 
  
  fill(107,101,95);
  text( "Lead Sound Designer", 370, posY+6010);
  fill(255);
  text( "Samuel Âberg", 470, posY+6080);
  
  fill(107,101,95);
  text( "Sound Design", 300, posY+6200);
  fill(255);
  text( "Daniel Rosenfeld", 485, posY+6270);
  text( "Kevin Martinez", 475, posY+6340); 
  text( "Peter Mont", 455, posY+6410); 
  
    fill(107,101,95);
  text( "Music composed by", 330, posY+6530);
  fill(255);
  text( "Daniel Rosenfeld", 490, posY+6600);
  
  fill(107,101,95);
  text( "Writing", 260, posY+6720);
  fill(255);
  text( "Julian Gough", 460, posY+6790);
  
  fill(107,101,95);
  text( "Developers of Mo' Creatures", 394, posY+6910);
  fill(255);
  text( "Dan Roque", 440, posY+6980);
  text( "John Olarte (DrZhark)", 510, posY+7050);
  text( "Kent Christian Jensen", 510, posY+7120);
  
  fill(255);
  text( "============", 590, posY+7240);
   fill(255,231,6);
  text( "Mojang", 590, posY+7300);
   fill(255);
  text( "============", 590, posY+7360);
  
  fill(107,101,95);
  text( "Chief Executive Officer", 360, posY+7480);
  fill(255);
  text( "Jonas Mårtensson", 476, posY+7550);
  
  fill(107,101,95);
  text( "Chief Operation Officer", 360, posY+7670);
  fill(255);
  text( "Ulrika Möjgård", 460, posY+7740);
  
  fill(107,101,95);
  text( "Chief Technology Officer", 370, posY+7860);
  fill(255);
  text( "Mike Carlson", 446, posY+7930);
  
  fill(107,101,95);
  text( "Chief Brand Officer", 335, posY+8050);
  fill(255);
  text( "Lydia Winters", 450, posY+8120);
  
  fill(107,101,95);
  text( "Chief Content Officer", 345, posY+8240);
  fill(255);
  text( "Vu Bui", 406, posY+8310);
  
  fill(107,101,95);
  text( "Human Resources", 320, posY+8430);
  fill(255);
  text( "Maja Samuelsson", 470, posY+8500);
  text( "Viktoria Peterson", 470, posY+8570);
  
  fill(107,101,95);
  text( "Director of Finance", 335, posY+8690);
  fill(255);
  text( "Marina Kostesic", 460, posY+8760);
  
  fill(107,101,95);
  text( "Director of New Games", 345, posY+8880);
  fill(255);
  text( "Patrick Liu", 430, posY+8950);
   
  fill(107,101,95);
  text( "Game Director", 290, posY+9070);
  fill(255);
  text( "Måns Olson", 430, posY+9140);
  
   fill(107,101,95);
  text( "Gamer Designers", 310, posY+9260);
  fill(255);
  text( "Christian Berg", 450, posY+9330);
  text( "Max Herngren", 448, posY+9400);
  
    fill(107,101,95);
  text( "Lead Game Developers", 348, posY+9520);
  fill(255);
  text( "Kristoffer Jelbring", 480, posY+9590);
  text( "Niklas Börestam", 460, posY+9660);
  
  fill(107,101,95);
  text( "Game Developers", 310, posY+9780);
  fill(255);
  text( "Adrian Toncean", 450, posY+9850); 
  text( "Anton Arbring", 440, posY+9920); 
  text( "Aron Nieminen", 430, posY+9990); 
  text( "Christan Berg", 437, posY+10060); 
  text( "Daniel Wustenhoff", 460, posY+10130); 
  text( "Jakob Rydén", 420, posY+10200); 
  text( "Jon Amiga", 410, posY+10270); 
  text( "Mårte  Helander", 448, posY+10340); 
  
  fill(107,101,95);
  text( "Art Leads", 270, posY+10460);
  fill(255);
  text( "Daniel Björkefors", 450, posY+10530); 
  text( "Telemachus Stavropoulos", 500, posY+10600);
  
    fill(107,101,95);
  text( "Graphic Designers", 320, posY+10720);
  fill(255);
  text( "Wiktor Persson", 440, posY+10790); 
  text( "Markus Karlsson", 450, posY+10860);
  
  fill(107,101,95);
  text( "3D/VFX", 255, posY+10980);
  fill(255);
  text( "Christian Nordgren", 460, posY+11050); 
  text( "Jakob Gavelli", 425, posY+11120);
  
  fill(107,101,95);
  text( "Lead System Engineers", 350, posY+11240);
  fill(255);
  text( "Jifeng Zhang", 425, posY+11310); 
  text( "Robert Sjödahl", 435, posY+11380);
  text( "Torbjörn Allard", 445, posY+11450);
  
  fill(107,101,95);
  text( "System Developers", 320, posY+11570);
  fill(255);
  text( "Anders Martini", 435, posY+11640); 
  text( "Maksim Ivanov", 430, posY+11710); 
  text( "Maria Katsourani", 450, posY+11780); 
  text( "Mikael Malmqvist", 440, posY+11850); 
  text( "Joakim Ejenstam", 445, posY+11920); 
  text( "Jonas Bergström", 448, posY+11990); 
  text( "Petter Gisslen", 435, posY+12060); 
  text( "Pär Axelsson", 426, posY+12130); 
  text( "Stefan Torstensson", 470, posY+12200); 
  text( "Welan Yang", 415, posY+12270);
  
  fill(107,101,95);
  text( "Experience Design", 320, posY+12390);
  fill(255);
  text( "Daniel Feldt", 426, posY+12460);
  
  fill(107,101,95);
  text( "Director of Business Development", 418, posY+12580);
  fill(255);
  text( "Patrick Geuder", 440, posY+12650);
  
  fill(107,101,95);
  text( "Production Director", 330, posY+12770);
  fill(255);
  text( "Olof Carlson Sandvik", 480, posY+12840);
  
  fill(107,101,95);
  text( "Head of Creative Production", 380, posY+12960);
  fill(255);
  text( "Sheila Ho", 405, posY+13030);
  
  fill(107,101,95);
  text( "Production Manager", 340, posY+13150);
  fill(255);
  text( "Klas Hammarström", 465, posY+13220);
  
  fill(107,101,95);
  text( "Producers", 280, posY+13340);
  fill(255);
  text( "Adele Major", 430, posY+13410); 
  text( "David Nisshagen", 455, posY+13480); 
  text( "Hampus Nilsson", 450, posY+13550); 
  text( "Johannes Fridd", 450, posY+13620); 
  text( "Kaya Hatcher", 440, posY+13690); 
  text( "Lisa Kempe", 420, posY+13760); 
  text( "Moira Ingellum", 440, posY+13830); 
  text( "Nicolette Suraga", 460, posY+13900); 
  text( "Sarah Carton", 440, posY+13970); 
  text( "Sebastian Falk", 440, posY+14040);
  text( "Âsa Skogström", 440, posY+14110);
  
  fill(107,101,95);
  text( "Project Managers",310, posY+14230);
  fill(255);
  text( "Isabella Balk", 430, posY+14300);
  
  fill(107,101,95);
  text( "Director of Creative Communications", 430, posY+14420);
  fill(255);
  text( "Owen Jones", 420, posY+14490);
  
  fill(107,101,95);
  text( "Head of Marketing Communications", 420, posY+14610);
  fill(255);
  text( "Thomas Wiborgh", 450, posY+14680);
  
  fill(107,101,95);
  text( "Creative Communications Assistant", 420, posY+14800);
  fill(255);
  text( "Per Landin", 430, posY+14870);
  text( "Tom Stone", 420, posY+14940);
  
  fill(107,101,95);
  text( "Head of Community Relations", 380, posY+15060);
  fill(255);
  text( "Karim Walldén", 430, posY+15130);
  
  fill(107,101,95);
  text( "Community Relations Coordinator", 400, posY+15250);
  fill(255);
  text( "Josefin Olsson", 450, posY+15320);
  
  fill(107,101,95);
  text( "Head of Social Media", 330, posY+15440);
  fill(255);
  text( "Alice Löfgren", 450, posY+15510);
  
  fill(107,101,95);
  text( "Customer Support Team Lead", 380, posY+15630);
  fill(255);
  text( "Mattias Victorin", 450, posY+15700);
  
  fill(107,101,95);
  text( "Customer Support", 320, posY+15820);
  fill(255);
  text( "Anna Lundgren", 445, posY+15890);
  text( "Andreas Thomasson", 480, posY+15960);
  text( "Antonia Kousathana", 478, posY+16030);
  text( "Cecilia Flumé", 435, posY+16100);
  text( "Cim Borg", 410, posY+16170);
  text( "David Stuart Dahlgren", 490, posY+16240);
  text( "Ellie Ashrafi", 430, posY+16310);
  text( "Frederik Sandström", 480, posY+16380);
  text( "Freja Fors", 430, posY+16450);
  text( "Jonny Hair", 420, posY+16520);
  text( "Nasim Derakhsham", 470, posY+16590);
  text( "Nima Tolouifar", 445, posY+16660);
  text( "Patrik Södergren", 470, posY+16730);
  text( "Rui Ribeiro", 420, posY+16800);
  text( "Sarah Mårtensson", 470, posY+16870);
  
  fill(107,101,95);
  text( "Office Manager", 300, posY+16990);
  fill(255);
  text( "Siri Hoel Andersson", 470, posY+17060);
  
  fill(107,101,95);
  text( "Office Coordinators", 320, posY+17180);
  fill(255);
  text( "Aleksandra Zajac", 470, posY+17250);
  text( "Joël Älveroth", 440, posY+17320);
  
  fill(107,101,95);
  text( "Reception Manager", 330, posY+17440);
  fill(255);
  text( "Chaimae Truving", 470, posY+17510);
  
  fill(107,101,95);
  text( "Financial Accountant", 340, posY+17630);
  fill(255);
  text( "Josefina Axelsson", 480, posY+17700);
  
  fill(107,101,95);
  text( "IT Wizards", 280, posY+17820);
  fill(255);
  text( "Cesar Sima Falck", 460, posY+17890);
  text( "Shoghi Cervantes", 470, posY+17960);
  
  fill(107,101,95);
  text( "Product Designer Team Lead", 390, posY+18080);
  fill(255);
  text( "Amanda Ström", 440, posY+18150);
  
  fill(107,101,95);
  text( "Product Designers", 330, posY+18270);
  fill(255);
  text( "Filip Thoms", 420, posY+18340);
  text( "Jennifer Hammervald", 470, posY+18410);
  text( "Sherin Kwan", 420, posY+18480);
  
  fill(107,101,95);
  text( "Motion Graphics Designer", 380, posY+18600);
  fill(255);
  text( "Kim Petersen", 430, posY+18670);
  
  fill(107,101,95);
  text( "Intellectual Property Enforcement Team Lead", 505, posY+18790);
  fill(255);
  text( "Olle Personne", 440, posY+18860);
  
  fill(107,101,95);
  text( "Intellectual Property Enforcement Agents", 485, posY+18980);
  fill(255);
  text( "Mathias Andersson", 470, posY+19050);
  text( "Matilda  Kerman", 440, posY+19120);
  text( "Marcus Forss", 440, posY+19190);
  text( "Sylvia Chen", 420, posY+19260);
  text( "Johan Kedlund", 440, posY+19330);
  
  fill(255);
  text( "============", 590, posY+19450);
   fill(255,231,6);
  text( "Special Thanks", 590, posY+19510);
   fill(255);
  text( "============", 590, posY+19570);
  
  fill(255);
  text( "Daniel Brynolf", 440, posY+19690);
  text( "Pontus Hammarberg", 480, posY+19790);
  
  text( "'Twenty years from now you will be more disappointed", 590, posY+19980);
  text( "by the things that you didn't do than by the ones you", 590, posY+20010);
  text( "did do. So throw off the bowlines. Sail away from the", 580, posY+20040);
  text( "safe harbor. Catch the trade winds in your sails.", 570, posY+20070);
  text( "Explore. Dream. Discover.'-Unkown", 490, posY+20100);
  
  posY = posY-2; // posY--; (lo mismo)
 
  if(mouseX > width/2 && mouseY < height/2){
    fill(random(100,255),0,random(200,255));
    text("Hola Profe, por favor apruebeme", width/2, height/2); 
  }
  
  image(Sword, mouseX, mouseY,50,50);
  
}
