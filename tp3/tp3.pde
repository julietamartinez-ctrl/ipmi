//
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

  //atras
for(int i=20; i<=800; i+=85){
for (int j=380; j<=800; j+=70){ ellipse(j,i,70,80);
ellipse(j,i,60,67);
ellipse(j,i,48,53);
ellipse(j,i,36,40);
ellipse(j,i,22,24);
ellipse(j,i,6,6);
 }
 }
 //adelante
 for(int i=-20; i<=800; i+=85){
for (int j=420; j<=800; j+=70){
ellipse(j,i,70,78);
ellipse(j,i,60,67);
ellipse(j,i,48,53);
ellipse(j,i,36,40);
ellipse(j,i,22,24);
ellipse(j,i,6,6);
     }
     image(image, 0, 0, 400, 400);
 }
                
}

void miFuncion(){
  beginShape();
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
     i = i + 1;
     j = j + 1;
   }if(i==20){i=0; 
   }if(j==20){j=0;
  
   }else if(key =='x'){
        miFuncion();
        
     }
   }
   
