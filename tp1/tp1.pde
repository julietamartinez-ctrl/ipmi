// Alumna: Julieta Martinez, Legajo: 125624/8 //
// Comision: 2 //

PImage miObraArquitectonica;

 void setup(){
  size(800,400);
  miObraArquitectonica = loadImage( "partenon.jpg" );
 
 }

 void draw(){
  background(203,253,255);
 
  image( miObraArquitectonica, 0, 0, 400, 400 );
  
  
  fill(255,220,87);
  rect(410,100,370,80);
  fill(255,224,97);
  rect(410,100,170,240);
  fill(255,217,77);
  rect(610,100,169,240);
   fill(245);
  rect(410,100,370,40);
  fill(210);
  rect(410,140,20,200);
  fill(215);
  rect(460,140,20,200);
  fill(220);
  rect(510,140,20,200);
  fill(225);
  rect(560,140,20,200);
  fill(230);
  rect(610,140,20,200);
  fill(235);
  rect(660,140,20,200);
  fill(240);
  rect(710,140,20,200);
  fill(245);
  rect(760,140,20,200);
  fill(245);
  rect(400,330,400,200);
  fill(245);
  triangle(595,15,405,100,785,100);
  fill(255,255,255);
  line(780,140,410,140);
  fill(255,255,255);
  line(800,345,400,345);
  fill(255,255,255);
  line(800,358,400,358);
   fill(255,255,255);
  line(800,372,400,372);
  fill(255,255,255);
  line(800,385,400,385);
  }
