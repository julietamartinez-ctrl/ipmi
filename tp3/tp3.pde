//https://youtu.be/sSl064GRS-g
// Julieta Martinez Legajo: 125624/8
// TP3

PImage image;
int i=0;
int j=0;
color color1,color2;
float d;
int EspacioY=40;


void setup(){
  size(800, 400);
  image = loadImage("03.jpg");
  i=0;
  j=0;
  color1 = color(255, 0, 0);
  color2 = color(0, 0, 255);
  
}

void draw(){
  background(255);
  miDibujo();
  image(image, 0, 0, 400, 400);
}
void miDibujo(){
  pushMatrix();
 
  //abajo
  for(int i=392; i<850; i+=90){
    circle(i,35,96);
    circle(i, 130,96);
    circle(i, 225,96);
    circle(i,322,96);
    circle(i,419,96);
  
    circle(i,35,80);
    circle(i, 130, 80);
    circle(i, 225,80);
    circle(i,322,80);
    circle(i,419,80);
  
    circle(i,35,65);
    circle(i, 130, 65);
    circle(i, 225,65);
    circle(i,322,65);
    circle(i,419,65);
   
    circle(i,35,50);
    circle(i, 130, 50);
    circle(i, 225,50);
    circle(i,322,50);
    circle(i,419,50);
   
    circle(i,35,35);
    circle(i, 130, 35);
    circle(i, 225,35);
    circle(i,322,35);
    circle(i,419,35);
  
    circle(i,35,20);
    circle(i, 130, 20);
    circle(i, 225,20);
    circle(i,322,20);
    circle(i,419,20);
   
    circle(i,35,8);
    circle(i, 130, 8);
    circle(i, 225,8);
    circle(i,322,8);
    circle(i,419,8);
  
  //arriba
 }for(int j=440; j<850; j+=90){
    circle(j,-20,80);
    circle(j, 80, 80);
    circle(j, 180,80);
    circle(j,280,80);
    circle(j,380,80);

    circle(j,-20,65);
    circle(j, 80, 65);
    circle(j, 180,65);
    circle(j,280,65);
    circle(j,380,65);
   
    circle(j,-20,50);
    circle(j, 80, 50);
    circle(j, 180,50);
    circle(j,280,50);
    circle(j,380,50);
   
    circle(j,-20,35);
    circle(j, 80, 35);
    circle(j, 180,35);
    circle(j,280,35);
    circle(j,380,35);
   
    circle(j,-20,20);
    circle(j, 80, 20);
    circle(j, 180,20);
    circle(j,280,20);
    circle(j,380,20);
    
    circle(j,-20,8);
    circle(j, 80, 8);
    circle(j, 180,8);
    circle(j,280,8);
    circle(j,380,8); 
         }
         popMatrix();
        
}

void miFuncion(){
  beginShape();
  fill(255);
  vertex(450,80);
  vertex(640,80);
  vertex(540,320);
  vertex(420,280);
  vertex(640,180);
  endShape();
}


  void mouseDragged(){
    if(mousePressed){
      float d = dist(mouseX, mouseY, j + 500, i * EspacioY + 90);
      float mezcla = map(d, 0, 300, 0, 1);
      color combinado = lerpColor(color1, color2, mezcla);
      fill(combinado);
     
    }
    
  }

   void keyPressed(){
     if(keyPressed){
     }if(key =='z'){
    translate(30, height/2);
     rotate( radians(frameCount));
      miDibujo();  
     
   }else if(key =='x'){
        miFuncion();
     }
   }
   
