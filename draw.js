function draw() {
 background(0);
//dibuja personaje, variables (utilizadas en "jugador")
  actualizarJugador();
  mostrarJugador();

//pasa pantalla 0 a 1
if (jugadorX >= limiteX) {
    limites+=1;
    jugadorX=50
  }
  if (limites>0) {
    if (jugadorX <= 0+jugadorAncho/2) {
      limites-=1;
      jugadorX=width-100;
    }
  }

//imagenes
  if (limites==1) {
    image(fondo1,0, fondoX, width, height);
    image(fondo,0, fondoX, width, height);
    if (frameCount% 30>5) {
  image(cocodrilos, 600, 540);
  } else {
  image(cocodrilos1, 600, 535);
  }
  } else {   
    image(fondo,0, fondoX, width, height);
    image(fondo1,0, fondoX, width, height);
    image(tronco1, 1150, 530);  
    if (jugadorX==1150 && jugadorY==530) {
    puntaje--;
    }
}

//puntaje, vidas, tiempo
  textFont(fuente); // Establecer la fuente cargada
  textSize(70);
  fill(255);
  text(`${puntaje}`, 300, 90);
 
for (let i = 0; i < vidas; i++) {
    text("||", x, y); 
  }

let tiempoTranscurrido = floor(frameCount / 60); // 60 cuadros por segundo
  minutos = 1- floor(tiempoTranscurrido / 60);
  segundos = 59 - (tiempoTranscurrido % 60);

//mostrar el tiempo
  if (minutos >= 0 && segundos >= 0) {
    text(`${minutos}:${segundos < 10 ? '0' : ''}${segundos}`,230,170);
  } else {
    text("Tiempo agotado",230,190);
  }

//plataforma 2
  if (verificarColision(jugadorX, jugadorY, jugadorAncho, jugadorAltura, plataformaX, plataformaY, plataformaAncho, plataformaAltura)) {
    estaSaltando = false;
    jugadorVelocidadY = 0;
    jugadorY = plataformaY - jugadorAltura / 2;
  }

}
