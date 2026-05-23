// Julieta Martinez Legajo:245624/8 //
// comision 2

int mivariable;
int mivariable2;
int mivariable3;
int mivariable4;
int mivariable5=700;
int pantalla;
int mitiempo;
PImage miImagen1;
PImage miImagen2;
PImage miImagen3;
PImage miImagen4;
PImage miImagen5;
PImage miImagen6;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage p6;
PImage p7;
PFont miTexto;


void setup (){
  size (640,480);
  background (255);
  mivariable=0;
  mivariable2=0;
  mivariable3=0;
  mivariable4=0;
  pantalla=0;
  mitiempo=0;
  miImagen1= loadImage ("melon.jpeg");
  miImagen2= loadImage ("casasu.png");
  miImagen3= loadImage ("sotano.jpg");
  miImagen4= loadImage ("sdd.png");
  miImagen5= loadImage ("pasilloprincipal.png");
  miImagen6= loadImage ("ciudad.png");
  p1= loadImage("sucrette.png");
  p2= loadImage("castiel.png");
   p3 = loadImage("lys.png");
   p4 = loadImage("nath.png");
   p5 = loadImage("armin.png");
   p6 = loadImage("kentin.png");
   p7 = loadImage("kentinito.png");
  miTexto= loadFont ("InkFree-48.vlw");
 
}



void draw (){
  
 
  mitiempo=mitiempo+1;
  
  if (mitiempo>0 && mitiempo<400){ pantalla=0;}
  else if (mitiempo>400 && mitiempo<800){ pantalla=1;}
  else if (mitiempo>800 && mitiempo<1100){ pantalla=2;}
  else if (mitiempo>1100 && mitiempo<1700){ pantalla=3;}
  else if (mitiempo>1700 && mitiempo<2300){ pantalla=4;}
  else if (mitiempo>2300 && mitiempo<3200){ pantalla=5;}
  
  mivariable=mivariable+1;
 
  //poner boton de inicio
  if(pantalla==0) { background (0); image(miImagen1,0,0,640,480);
  textFont (miTexto);
  fill(255,173,233);
  ellipse(330,400,150,80);
  noStroke();
  textSize(35);
  fill(0);
  text("PLAY",290,410);
  }
  
  
  else if (pantalla==1){ background (255,0,0); image(miImagen2, 0, 0, 640, 480);image(p1, 480, 70, 160,340);
textFont (miTexto);
  textSize(25);
  fill(0);
  mivariable=0;
  mivariable=mivariable+1;
  mivariable2=mivariable2+1;
text("Corazón de melón es un juego otome (de citas) donde el usuario toma el papel\n de Sucrette para conocer a diferentes personajes,\n hablar con ellos y tratar de conquistarlos.",mivariable2,mivariable2,250,290);}
  
  
  else if (pantalla==2){ background (0,255,0); image(miImagen3, 0, 0, 640, 480);image(p2, 0, 10, 150, 330);image(p3, 500, 180,150,330);
textFont (miTexto);
  textSize(25);
  fill(0);
  text("Castiel es un chico difícil de tratar.\n No es fácil hablar con él o saber lo que piensa, pero en realidad es probable\n que sea una persona agradable.\n Lysandro es un chico bastante misterioso y no habla demasiado, por lo que no resulta tarea fácil hablar con él.\n Es amigo de Castiel y  escribe letras \npara las canciones de su grupo de rock.",160,mivariable,400,300);}
  
  
  else if (pantalla==3){ background (0,255,0); image(miImagen4, 0, 0, 640, 480);image(p4, 10, 15, 150, 330);image(p5, 490, 180,150,330);
textFont (miTexto);
  textSize(25);
  fill(255,173,233);
  rect(mivariable3+640,mivariable3+400,350,350);
  mivariable3=mivariable3-1;
fill(0);
  text("Nathaniel es el delegado principal de la escuela.\n Es un muchacho formal con el que es bastante fácil\n llevarse bien. Es responsable, tranquilo y timido.\n Armin tiene un hermano gemelo \n llamado Alexy. El y su hermano son igual de simpáticos,\n pero él es más discreto y es gamer.",mivariable3+640,mivariable3+400,350,350);}
  
  
  else if (pantalla==4){ background (0,255,0); image(miImagen5, 0, 0, 640, 480);image(p6, 480, 155, 150, 330);image(p7, 10, 180,150,330);
textFont (miTexto);
  textSize(25);
  fill(0);
  mivariable4=mivariable4-1;
  text("Kentin, al enterarse de que Sucrette se cambiaría de ciudad y de instituto, decide hacer \nlo mismo para estar junto a ella. Ken tiene una personalidad dulce y cariñosa.\n Muestra ser muy amable, servicial, y a veces un poco pesado.\n Siempre está dispuesto a ayudar, \npero a veces se deja pisotear por los demás.",70,mivariable4+480,600,400);}
  
  
  else if (pantalla==5){ background (0,255,0); image(miImagen6, 0, 0, 640, 480);
textFont (miTexto);
  textSize(25);
  fill(0,0,50);
  mivariable5=mivariable5-1;
  text("¡CREA TU PROPIA HISTORIA EN EL SWEET AMORIS \n Y VIVE UNA BONITA HISTORIA DE AMOR VIRTUAL! <3",mivariable5,50,400,400);}
  if (mivariable5<100){
    mivariable5=100;
  rect(0,430,80,50);
  //textFont (miTexto2);
  textSize(20);
  fill(255);
  text("Reiniciar",0,440,80,50);
}
 
 
}

void mousePressed (){
  if (pantalla==5) {
  if (mouseX>0  && mouseX<80 && mouseY> 430 && mouseY < 480) {
    pantalla=0;
    mitiempo=0;
  mivariable=0;
  mivariable2=0;
  mivariable3=0;
  mivariable4=0;
  mivariable5=700;
}
    }
    }
