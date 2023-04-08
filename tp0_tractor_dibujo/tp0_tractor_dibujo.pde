PImage Img;
void setup(){
  size(800,400);
  background(255);
  Img = loadImage("tractorFOTO1.jpg");
}

void draw(){
  println(mouseX);
  println(mouseY);
  image(Img,0,0);
  
  strokeWeight(4);
  line(493,80,485,180);
  line(545,80,545,190);
  
  //techo
 fill(150);
 quad(495,80,600,80,604,110,525,110);
 
 //ventana lineas
 line(520,80,520,180);
 line(600,80,620,240);
  
  //antena
  fill(0);
  quad(616,70,626,70,626,80,616,80);
  line(620,80,620,240);
 
 fill(#FF4040);
 rect(480, 60, 130, 20);
 
 //adentrofondo0
 fill(0);
 quad(600,155,740,190,735,230,600,190);
 
 //capo
 fill(#FF4040);
 quad(620,160,740,190,735,230,620,230);
 
 //luz delantera negro
 fill(0);
 quad(700,187,738,197,735,228,700,230);
 
 //luz delantera
 fill(#F2EB95);
 quad(720,193,738,198,735,228,720,230);
 
 //volante
 line(580,160,600,180);
 line(570,170,590,148);
 
 //fondo1
 fill(0,0,0);
 circle(630, 240, 80);
 
 //fondo2
 rect(520, 210, 100, 50);
 
 //escaleritas
 fill(20);
 rect(573, 210, 35, 67);
 
 //piso
 fill(150);
 rect(520, 210, 90, 17);
 
 //rompebarro
 fill(#FF4040);
 arc(480, 255, 180, 180, PI+QUARTER_PI, TWO_PI);
 
 //ruedas
 fill(50);
 circle(485, 255, 135);
 circle(715, 265, 110);
 
 fill(250);
 circle(485, 255, 100);
 circle(715, 265, 85);
 
 fill(150);
 circle(490, 255, 75);
 circle(715, 265, 60);
 
 fill(10);
 circle(485, 255, 10);
 circle(717, 267, 25);
 
}
