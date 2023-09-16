function preload() {
  for (let i = 1; i <= cantImagenes; i++) {
    jugador[i - 1] = loadImage("data/jugador" + i + ".png");
  }
  JugadorBaja1 = loadImage('data/baja1.png');
  JugadorBaja2 = loadImage('data/baja2.png');

  PantallaDeInicio = loadImage('data/PantallaDeInicio.png');
   Creditos = loadImage('data/Creditos.png');
   Instrucciones = loadImage('data/Instrucciones.png');

  fondo1 = loadImage('data/fondo.png');
  fondo = loadImage('data/fondo1.png');

  cocodrilos = loadImage('data/cocodrilos.png');
  cocodrilos1 = loadImage('data/cocodrilos1.png');

  tronco1 = loadImage('data/tronco1.png');

  fuente = loadFont('data/PressStart2P-Regular.ttf');
}
