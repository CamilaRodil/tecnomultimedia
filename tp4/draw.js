let activo=false;

function draw() {
  background(0);
  switch(pantalla){
  case"Inicio":
    activo=false;
    image(PantallaDeInicio, 0, 0);
    break;
  case"Instrucciones":
    activo=false;
    image(Instrucciones, 0, 0);
    break;
  case"Creditos":
    activo=false;
    image(Creditos, 0, 0);
    break;
  case "Juego":
    activo=true
    if (jugadorX >= limiteX) {
      bounds+=1;
      jugadorX=50
      if(bounds==2){
      bounds=0;
      }
    }
    if (bounds>0) {
      if (jugadorX <= 0+jugadorAncho/2) {
        bounds-=1;
        jugadorX=width-100;
      }
    }
  
    if (bounds==1) {
      image(fondo1, 0, fondoX, width, height);
      image(fondo, 0, fondoX, width, height);
      if (frameCount% 210<150) {
        image(cocodrilos, 380, 540);
      } else {
        image(cocodrilos1, 380, 535);
      }
    } else {
      image(fondo, 0, fondoX, width, height);
      image(fondo1, 0, fondoX, width, height);
      tronco(1150, 530);
      subirEscalera(width/2-100, plataformaY, 100, 220);
    }
  
    textFont(fuente); // Establecer la fuente cargada
    textSize(70);
    fill(255);
    text(`${puntaje}`, 300, 90);
  
    for (let i = 0; i < vidas; i++) {
      text("|", x+i*50, y);
    }
    if(activo){
      let tiempoTranscurrido = floor(frameCount / 60); // 60 cuadros por segundo
      
      minutos = 1- floor(tiempoTranscurrido / 60);
      segundos = 59 - (tiempoTranscurrido % 60);
      }
      // Mostrar el tiempo
      if (minutos >= 0 && segundos >= 0) {
        text(`${minutos}:${segundos < 10 ? '0' : ''}${segundos}`,230,170);
      } else {
        text("Tiempo agotado", 230, 190);
        
    }
  
    actualizarJugador();
    mostrarJugador();
    if (bounds==0) {
    piso( plataformaX/2-30, plataformaY, plataformaAncho/2-80, plataformaAltura); 
    piso( plataformaX+plataformaX/2, plataformaY, plataformaAncho/2-50, plataformaAltura);
    piso( plataformaX, height-10, plataformaAncho, plataformaAltura);
  } else {
    piso( plataformaX/4, plataformaY, plataformaAncho/4, plataformaAltura);
    piso( plataformaX+plataformaX/2+plataformaX/4, plataformaY, plataformaAncho/4, plataformaAltura);
    Cocodrilos();
    piso( plataformaX, height-20, plataformaAncho, plataformaAltura);
  }
     
   break;
  }
}

function mousePressed(){
 switch(pantalla){
   case "Inicio":
   if(botonGenerico(width/2-290,height/2+10,580,90)){
   pantalla="Juego";
   }
   if(botonGenerico(width/2-290,height/2+125,580,90)){
   pantalla="Creditos";
   }
   if(botonGenerico(width/2-290,height/2+240,580,90)){
   pantalla="Instrucciones";
   }
   break;
   case "Instrucciones":
   if(botonGenerico(85,50,90,90)){
   pantalla="Inicio";
   }
   break;
   case "Creditos":
   if(botonGenerico(85,50,90,90)){
   pantalla="Inicio";
   }
   break;
 }
}

function piso(x,y,tx,ty){
if (verificarColision(jugadorX, jugadorY, jugadorAncho, jugadorAltura, x, y, tx, ty)) {
      estaSaltando = false;
      jugadorVelocidadY = 0;
      jugadorY = y - jugadorAltura / 2;
    }
}

function cuboMortal(x,y,tx,ty){
if (verificarColision(jugadorX, jugadorY, jugadorAncho, jugadorAltura, x, y, tx, ty)) {
      estaSaltando = false;
      vidas--;
      jugadorX=100;
      jugadorY= height - 240 - 100;
    }
}

function tronco(x, y) {
  image(tronco1, x, y);
  if (colisionGenerica(x+5, y+5, 70, 75, jugadorX-jugadorAncho/2, jugadorY-jugadorAltura/2, jugadorAncho, jugadorAltura)) {
    if (frameCount%2==0) {
      puntaje-=1;
    }
  }
}

function Cocodrilos(){
if (frameCount% 210<150) {
      piso( plataformaX-10, plataformaY, 100, plataformaAltura)
      piso( plataformaX-plataformaX/4, plataformaY, 100, plataformaAltura)
      piso( plataformaX+plataformaX/4-20, plataformaY, 100, plataformaAltura)
    } else {
      cuboMortal( plataformaX-10, plataformaY, 100, plataformaAltura)
      cuboMortal( plataformaX-plataformaX/4, plataformaY, 100, plataformaAltura)
      cuboMortal( plataformaX+plataformaX/4-20, plataformaY, 100, plataformaAltura)
    }
}

let escalera=false;
function subirEscalera(x, y, tamX, tamY) {
  if (colisionGenerica(x, y, tamX, tamY, jugadorX-jugadorAncho/2, jugadorY-jugadorAltura/2, jugadorAncho, jugadorAltura)) {
    escalera=true;
  } else {
    escalera=false;
  }
}

function colisionGenerica(x, y, tamX, tamY, x2, y2, tamX2, tamY2) {
    return (x2<x+tamX && x2+tamX2>x && y2<y+tamY && y2+tamY2>y)}
    
function botonGenerico(x,y,tamX,tamY){
    return mouseX>x && mouseX<x+tamX && mouseY>y && mouseY<y+tamY}
