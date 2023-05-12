//Camila Rodil
//Comision4 tp1
int segundos;

int pos1;
int pos2;
int pos3;

PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagenboton;

int tatexto3;

PFont fuente;

boolean pant1;
boolean pant2;
boolean pant3;


void setup() {
  size(640, 480);
  textSize(30);

  pos1 = -200;
  pos2 =  width/2;
  pos3= 100;

imagen1= loadImage("tractor.primera.imagen.cvt.png");
imagen2=loadImage("tractor.segunda.imagen (1).png");
imagen3=loadImage("tractor.tercera.imagen.png");
imagenboton= loadImage("reiniciar.jpeg");

  tatexto3= 0;

fuente= loadFont("SnapITC-Regular-48.vlw");

  pant1 = false;
  pant2 = false;
  pant3 = false;
}


void draw(){
  textFont(fuente, 30);
  background(255);

//pantallas
if (segundos>=8) {
    pant1= true;
  }
  if (segundos>=14) {
    pant2= true;
  }
  if (segundos>=16) {
    pant3= true;
  }
  if (segundos==0) {
 
    pant1= false;
    pant2= false;
    pant3= false;
  }

    // primer pantall
  if (segundos<8) {     
    image(imagen1, 0, 0, width, height);
  }

  //segunda pantalla
  if (segundos>=8 && segundos<14) {
    image(imagen2, 0, 0, width, height);
  }
  //tercer pantalla                                         // cambia la pantalla por tiempos
  if (segundos>=14) {
    image(imagen3, 0, 0, width, height);
  }
  
  // TEXTO PRIMER PANTALLA 
  text("Este tractor \n se llama \n YTO LNX 854", pos1, height/2);   //reinicia pos del texto
  if (segundos == 0) {
    pos1= -200;
  }
  if (pos1< 900 && pant1== false) {      // mueve el texto
    pos1 ++;
    pos1 ++;
  }
  
  //texto segunda pantalla
  text("Es de origen asiático", width/4.5, pos2);
  if (segundos == 0) {
    pos2= 520;// revisar
  }
  if (pos2>-height && segundos>=8) {
    pos2 --;
      pos2 --;  
  
  }
  // texto 3er pantalla
    if (segundos==0) {
    tatexto3 = 0;
  }
  if (segundos>=14) {
    fill(255);
    textSize(tatexto3);
    text("Se usa para tareas agrícolas ", pos3, height/2);

    if (tatexto3<30) {
      tatexto3++;
    }
  }
  
  //boton
  if(segundos>=17){
  image( imagenboton,450, 380, 100, 40);
  }
  
  //tiempo
    if ( frameCount %60==0) {
      segundos++;
      println(segundos);
    }
  }

  void mousePressed() {
    if (pant1== true) {
    if (mouseX>450 && mouseX<550 && mouseY>380 && mouseY<420) {
      segundos=0;
    }
  }
}
    
    
  
