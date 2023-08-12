//tp2 (recuperatorio)
//https://youtu.be/XF92EJMsr9Y


int cant1 = 14;
int cant2 = 14;
int cant3 = 14;
int cant4 = 0;

int tamañoCirculo = 200;
float escalaCirculoInterior = 1;
PImage img;

void setup() {
  size(800, 400);
  img= loadImage("julio-le-parc-surface-couleur.jpg");
  noFill();
  noStroke();
}

void draw() {
  circulos();
  image(img, 0, 0);
}

void circulos() {
  circulo(500, 100, cant1);
  circulo(700, 100, cant2);
  circulo(500, 300, cant3);
  circulo(700, 300, cant4);
}

void circulo(int posX, int posY, int cantidadActual) {
  for (int j = 0; j < 14; j++) {
    float tamañoAjustado = (j < 7) ? tamañoCirculo * escalaCirculoInterior - j * 14 : tamañoCirculo - j * 14;
    int cantidadAjustada = (cantidadActual + j) % 14;
    llenarCirculo(posX, posY, tamañoAjustado, cantidadAjustada);
    noFill();
  }
}

void llenarCirculo(int posX, int posY, float diámetro, int índiceColor) {
  if (índiceColor >= 0) {
    switch (índiceColor) {
    case 0:
      fill(44, 92, 87);
      break;
    case 1:
      fill(39, 60, 86);
      break;
    case 2:
      fill(41, 32, 96);
      break;
    case 3:
      fill(52, 40, 76);
      break;
    case 4:
      fill(66, 36, 48);
      break;
    case 5:
      fill(98, 25, 28);
      break;
    case 6:
      fill(148, 24, 3);
      break;
    case 7:
      fill(174, 29, 1);
      break;
    case 8:
      fill(202, 79, 3);
      break;
    case 9:
      fill(215, 155, 1);
      break;
    case 10:
      fill(225, 208, 5);
      break;
    case 11:
      fill(132, 181, 1);
      break;
    case 12:
      fill(72, 139, 59);
      break;
    case 13:
      fill(52, 106, 91);
      break;
    }
  } else {
    noFill();
  }
  ellipse(posX, posY, diámetro, diámetro);
}

void mouseClicked() {
  if (mouseButton == LEFT) {
    if (estáDentroCirculo(mouseX, mouseY, 700, 100)) {
      cant2--;
      if (cant2 < 0) {
        cant2 = 14;
      }
    }
    if (estáDentroCirculo(mouseX, mouseY, 500, 300)) {
      cant3--;
      if (cant3 < 0) {
        cant3 = 14;
      }
    }
    if (estáDentroCirculo(mouseX, mouseY, 700, 300)) {
      cant4--;
      if (cant4 < 0) {
        cant4 = 14;
      }
    }
  } else if (mouseButton == RIGHT) {
    if (estáDentroCirculo(mouseX, mouseY, 700, 100)) {
      cant2++;
      if (cant2 > 14) {
        cant2 = 0;
      }
    }
    if (estáDentroCirculo(mouseX, mouseY, 500, 300)) {
      cant3++;
      if (cant3 > 14) {
        cant3 = 0;
      }
    }
    if (estáDentroCirculo(mouseX, mouseY, 700, 300)) {
      cant4++;
      if (cant4 > 14) {
        cant4 = 0;
      }
    }
  }
}

boolean estáDentroCirculo(int x, int y, int xCirculo, int yCirculo) {
  float d = dist(x, y, xCirculo, yCirculo);
  return d < tamañoCirculo / 2;
}
