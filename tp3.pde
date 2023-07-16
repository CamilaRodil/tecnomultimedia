//https://youtu.be/nRcdSM_Lo-M

int [] pantallas = new int [22];
PFont fuente;
PImage [] img= new PImage[pantallas.length];
String [] texto;
int minumero;
int numeroactual=0;


void setup() {
  size(600, 600);
  fuente=loadFont("TimesNewRomanPSMT-48.vlw");
  textFont(fuente);
  texto= loadStrings("texto.txt");
  for (int i=0; i<pantallas.length; i++) {
    img[i]= loadImage("img" + i + ".png");
  }
}


void draw() {
  if (numeroactual<pantallas.length) {
    planillabase(numeroactual);
  }
  if (numeroactual==pantallas.length + 1) {
    numeroactual=0;
  }
  fill(0);
  if (numeroactual==5 || numeroactual==8 || numeroactual==11) {
    float d = dist(width/2, height/2, mouseX, mouseY);
    float maxDist = dist(0, 0, 2/width, height/2);
    float miColor = map(d, 0, maxDist, 10, 50);
    fill(miColor);
    rect(100, 450, 50, 50);
    rect(450, 450, 50, 50);
    fill(255);
    textSize(35);
    text("A", 112, 487);
    text("B", 465, 487);
  }
  if (numeroactual==18 || numeroactual==15 || numeroactual==20 || numeroactual==12 ) {
    float d = dist(width/2, height/2, mouseX, mouseY);
    float maxDist = dist(0, 0, 2/width, height/2);
    float miColor = map(d, 0, maxDist, 10, 50);
    fill(miColor);
    rect(225, 500, 150, 50);
    fill(255);
    textSize(35);
    text("Reiniciar", 240, 540);
  }
}
void planillabase(int pantalla) {
  image(img[pantalla], 0, 0);
  fill(255, 150);
  if (numeroactual != 0 && numeroactual != 21) {
    rect(10, 10, 570, 80);
    fill(0);
    textSize(20);
    text(texto[pantalla], 20, 20, 500, 200);
  } else if (numeroactual==0) {

    textSize(40);
    fill(255);
    text("La vuelta al mundo en 80 días", 60, 150);
    rect(225, 225, 150, 50);
    rect(225, 300, 150, 50);
    fill(0);
    textSize(30);
    text("Empezar", 245, 260);
    text("Créditos", 250, 335);
  } else if (numeroactual==21) {
    textSize(30);
    fill(255);
    text("Codigo por: Camila Rodil\nImagenes de: Los Viajes de Julio Verne.\nEpisodio: La vuelta al mundo en 80 días.\nOrigen:YouTube.", 60, 150);
    rect(450, 450, 100, 50);
    fill(0);
    text("Volver", 460, 485);
  }
}


void mousePressed() {
  if (numeroactual==21) {
    if (chequebotoncuadrado(450, 500, 450, 500, 1)) {
      numeroactual++;
    }
  }
  if (numeroactual==0) {
    if (chequebotoncuadrado(245, 395, 240, 290, 1)) {
      numeroactual++;
    }
    if (chequebotoncuadrado(225, 375, 300, 350, 1)) {
      numeroactual=21;
    }
  } else {
    if (numeroactual==18 || numeroactual==18 || numeroactual==15 || numeroactual==12  || numeroactual==20) {
      if (chequebotoncuadrado(0, 600, 0, 600, 1)) {
        numeroactual=0;
      }
    } else {
      if (numeroactual==8) {
        if (chequebotoncuadrado(100, 150, 450, 500, 1)) {
          numeroactual=15;
        }
        if (chequebotoncuadrado(450, 500, 450, 500, 1)) {
          numeroactual++;
        }
      } else {
        if (numeroactual==5 || numeroactual==11) {
          if (numeroactual==11 && chequebotoncuadrado(100, 150, 450, 500, 1)) {
            numeroactual++;
          }
          if (numeroactual==5 && chequebotoncuadrado(100, 150, 450, 500, 1)) {
            numeroactual=6;
          }
          if (numeroactual==5 && chequebotoncuadrado(450, 500, 450, 500, 1)) {
            numeroactual=18;
          }
          if (numeroactual==8 && chequebotoncuadrado(450, 500, 450, 500, 1)) {
            numeroactual=15;
          }
          if (numeroactual==11 && chequebotoncuadrado(450, 500, 450, 500, 1)) {
            numeroactual=20;
          }
        } else {
          if (chequebotoncuadrado(0, 600, 0, 600, 1)) {
            numeroactual++;
          }
        }
      }
    }
  }
}


boolean chequebotoncuadrado(int posicionx1, int posicionx2, int posiciony1, int posiciony2, int elnumero) {
  int miposicionx1= posicionx1;
  int miposicionx2= posicionx2;

  int  miposiciony1= posiciony1;
  int miposiciony2= posiciony2;

  minumero=elnumero;

  for (int i=0; i<21; i++) {
    pantallas[i]=1;
    pantallas[minumero]=0;
  }

  return (mouseX>miposicionx1 && mouseX<miposicionx2 && mouseY >miposiciony1 && mouseY<miposiciony2);
}
