//link video youtube
//https://youtu.be/WIvXo7TKRDg

int cant = 14;
int j = 0;
int i = 0;
PImage img;

void setup() {
  size(800, 400);
  noFill();
  noStroke();
  img= loadImage("julio-le-parc-surface-couleur.jpg");
}

void draw() {
  elDist();
  fondo();
  circulos();  
image(img, 0, 0);
}

void mouseClicked() {
  if (mouseButton == LEFT && mouseX > width/2) {
    cant--;
  }
  if (mouseButton == RIGHT && mouseX > width/2) {
    cant++;
  }
}
