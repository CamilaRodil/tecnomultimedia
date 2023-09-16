function setup() {
  createCanvas(1468, 870);
  setDefault();
}

function setDefault(){
  sueloY = height - 60;
  jugadorX = 100;
  jugadorY = height - 240 - 100; // Ajusta esta línea para cambiar la posición inicial
  jugadorAncho = 60;
  jugadorAltura = 90;
  jugadorVelocidadX = 0;
  jugadorVelocidadY = 0;
  estaSaltando = false;
  plataformaX = width / 2;
  plataformaY = height - 300;
  plataformaAncho = 1468;
  plataformaAltura = 20;
  limiteX = width-jugadorAncho /2;
  segundos = 0;
  minutos = 1;
  vidas = 3;
  bounds = 0;
  puntaje = 200;
}
