function keyPressed(){
  if(key==' '&&!estaSaltando) {//Barra espaciadora para saltar
    jugadorVelocidadY=-16;
    estaSaltando=true;
  }
  if(keyCode==RIGHT_ARROW){
    jugadorVelocidadX=6;
    direccion="derecha";
  }else if(keyCode==LEFT_ARROW){
    jugadorVelocidadX=-6;
    direccion="izquierda";
  }
  if(escalera){
    if(keyCode==UP_ARROW){
      jugadorVelocidadY=-10;
    }else if(keyCode==DOWN_ARROW){
      jugadorVelocidadY=10;
    }
  }
  if (key=='r'){
    setDefault()
  }
}
function keyReleased(){
  if(keyCode==RIGHT_ARROW||keyCode==LEFT_ARROW){
    jugadorVelocidadX=0;
  }
  if(keyCode==UP_ARROW||keyCode==DOWN_ARROW){
    jugadorVelocidadY=0;
  }
}
function actualizarJugador(){
  if((jugadorY<sueloY||estaSaltando)&&!escalera)
    {jugadorVelocidadY+=0.8} 
    else if(!escalera) 
          {
            jugadorY=sueloY;
            jugadorVelocidadY=0;
            estaSaltando=false;
         }
  jugadorX+=jugadorVelocidadX;
  jugadorY+=jugadorVelocidadY;
  jugadorX=constrain(jugadorX,jugadorAncho/2,width-jugadorAncho/2);
}
function verificarColision(x1,y1,ancho1,altura1,x2,y2,ancho2,altura2){
  return(
    x1+ancho1/2>x2-ancho2/2&&
    x1-ancho1/2<x2+ancho2/2&&
    y1+altura1/2>y2-altura2/2&&
    y1-altura1/2<y2+altura2/2
    );
}
function mostrarJugador(){
  let spriteIndex=floor(frameCount/10)%jugador.length;
  if(jugadorVelocidadX>0){
    image(jugador[spriteIndex],jugadorX-jugadorAncho/2,jugadorY-jugadorAltura/2,jugadorAncho,jugadorAltura);
  }else if(jugadorVelocidadX<0){
    translate(jugadorX,jugadorY-jugadorAltura/2);
    scale(-1,1);
    image(jugador[spriteIndex],-jugadorAncho/2,0,jugadorAncho,jugadorAltura);
  }else{
    if(direccion=="derecha"){
      image (jugador[0],jugadorX-jugadorAncho/2,jugadorY-jugadorAltura/2,jugadorAncho,jugadorAltura);
    }else{
      translate(jugadorX,jugadorY-jugadorAltura/2);
      scale(-1,1);
      image(jugador[0],-jugadorAncho/2,0,jugadorAncho,jugadorAltura);
    }
  }
}
