void fondo(){
  for(int i=0 ; i<5 ; i++){
  int gris;
  gris=round(map(i,0,5,0,255));
fill(0+gris);
circle(600,200,534-i*28);
  }
}
