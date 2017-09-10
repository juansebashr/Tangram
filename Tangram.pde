Pshape square,btriangleb,rtriangle,paralelogram,paralelograminv,ltriangle,ltriangleb,SquareS;  // The PShape objectç
color fondo =color(12,16,84);
float=angle;
float R=0;
float angle1,angle2,angle3,angle4,angle5,angle6,angle7;{
  angle1=0;
  angle2=0;
  angle3=0;
  angle4=0;
  angle5=0;
  angle6=0;
  angle7=0;
}
int seleccion=0;
float squarex,squarey,rtrianglex,rtriangley,ltrianglexa,ltriangleya,ltriangleyb,ltrianglexb,btriangleya,btrianglexa,btrianglexb,btriangleyb,paralelogramx,paralelogramy;{
  squarex=1500;
  squarey=1200;
  rtrianglex=1650;
  rtriangley=170;
  ltrianglexa=1500;
  ltriangleya=1100;
  ltrianglexb=1750;
  ltriangleyb=1100;
  btrianglexa=1550;
  btriangleya=600;
  btrianglexb=1550;
  btriangleyb=850;
  paralelogramx=1750;
  paralelogramy=1200;
}
String title="TANGRAM!";
float scale=0.6;
void setup() {
  size(1300,900);
  square = createShape(RECT, 0, 0,112 ,112);
  square.setFill(color(0, 0, 255));
  btriangle = createShape(TRIANGLE, 0, 0, 159,-180,318, 0);
  btriangle.setFill(color(255,0,0));
  btriangleb = createShape(TRIANGLE, 0, 0, 159,-180,318, 0);
  btriangleb.setFill(color(167,45,18));
  rtriangle = createShape(TRIANGLE,0,0,0,180,159,0);
  rtriangle.setFill(color(18,168,18));
  ltriangle = createShape(TRIANGLE, 0, 0, 0,-180,80,-90);
  ltriangle.setFill(color(127,0,255));
  ltriangleb = createShape(TRIANGLE, 0, 0, 0,-180,80,-90);
  ltriangleb.setFill(color(187,23,6));
    paralelogram = createShape();
  paralelogram.beginShape();
  paralelogram.fill(255, 255, 0);
  paralelogram.vertex(80, 0);
  paralelogram.vertex(0,90);
  paralelogram.vertex(160, 90);
  paralelogram.vertex(240, 0);
  paralelogram.endShape(CLOSE);
  
  paralelograminv = createShape();
  paralelograminv.beginShape();
  paralelograminv.fill(255, 255, 0);
  paralelograminv.vertex(240, 0);
  paralelograminv.vertex(160, -90);
  paralelograminv.vertex(0,-90);
  paralelograminv.vertex(80, 0);
  paralelograminv.endShape(CLOSE);
  SquareS= createShape(RECT, 0, 0,318 ,318);
  noStroke();  
}
void draw() {
  frameRate(80);
  scale(scale);
  background(fondo);
  shape(SquareS, 450,500);
  textSize(120);
  text(title, 350,200);
  shape(square, squarex, squarey);
  square.rotate(angle1);
  shape(rtriangle,rtrianglex,rtriangley);
  rtriangle.rotate(angle2);
  shape(btriangle,btrianglexa,btriangleya);
  btriangle.rotate(angle3);
  shape(btriangleb,btrianglexb,btriangleyb);
  btriangleb.rotate(angle4);
  shape(ltriangle,ltrianglexa,ltriangleya);
  ltriangle.rotate(angle5);
  shape(ltriangleb,ltrianglexb,ltriangleyb);
  ltriangleb.rotate(angle6);
  if (seleccion==0){
  shape(paralelogram,paralelogramx,paralelogramy);
  paralelogram.rotate(angle7);
  }
  else {
  shape(paralelograminv,paralelogramx,paralelogramy);
  paralelograminv.rotate(angle7);
  }
  angle1=0;
  angle2=0;
  angle3=0;
  angle4=0;
  angle5=0;
  angle6=0;
  angle7=0;
}  

  void mouseDragged() {
  color c=get(mouseX,mouseY);
  if (c==color(0, 0, 255)) {
    squarex = mouseX*(1/scale)-40;
    squarey = mouseY*(1/scale)-40;
  }
  if (c==color(18,168,18)) {
    rtrianglex = (mouseX*(1/scale)-40);
    rtriangley = (mouseY*(1/scale)-40);
  }
  if (c==color(255,0,0)) {
     btrianglexa = (mouseX*(1/scale)-(140));
     btriangleya = (mouseY*(1/scale)+(70)*cos(angle3));
     print(140*cos(angle3));
  }
  if (c==color(167,45,18)) {
    btrianglexb = (mouseX*(1/scale)-140);
    btriangleyb = (mouseY*(1/scale)+70);
  }
  if (c==color(127,0,255)) {
    ltrianglexa = (mouseX*(1/scale)-30);
    ltriangleya = (mouseY*(1/scale)+100);
  }
  if (c==color(187,23,6)) {
    ltrianglexb = (mouseX*(1/scale)-30);
    ltriangleyb = (mouseY*(1/scale)+100);
  }
  if (c==color(255, 255, 0)) {
    paralelogramx = (mouseX*(1/scale)-100);
    paralelogramy = (mouseY*(1/scale)-40);
  }
}
void keyPressed(){
   color c=get(mouseX,mouseY);
   float dangle=PI/6;
   if (c==color(0, 0, 255)) {
      if (keyCode == 39) {
    angle1 = angle1+(dangle);
    print(keyCode);
  } 
  if (keyCode == 37){
    angle1 = angle1 -(dangle);
  }
  }
  
 if (c==color(18,168,18)) {
      if (keyCode == 39) {
    angle2=angle2+(dangle);
    print(keyCode);
  } 
  if (keyCode == 37){
    angle2 = angle2 -(dangle);
  }
  }
  
  if (c==color(255,0,0)) {
      if (keyCode == 39) {
    angle3=angle3+(dangle);
    print(keyCode);
  } 
  if (keyCode == 37){
    angle3 = angle3 -(dangle);
  }
  }
  
  if (c==color(167,45,18)) {
      if (keyCode == 39) {
    angle4=angle4+(dangle);
    print(keyCode);
  } 
  if (keyCode == 37){
    angle4 = angle4 -(dangle);
  }
  }
  
  if (c==color(127,0,255)) {
      if (keyCode == 39) {
    angle5=angle5+(dangle);
    print(keyCode);
  } 
  if (keyCode == 37){
    angle5 = angle5 -(dangle);
  }
  }
  
  if (c==color(187,23,6)) {
      if (keyCode == 39) {
    angle6=angle6+(dangle);
    print(keyCode);
  } 
  if (keyCode == 37){
    angle6 = angle6 -(dangle);
  }
  }
  
  if (c==color(255, 255, 0)) {
      if (keyCode == 39) {
    angle7=angle7+(dangle);
    print(keyCode);
  } 
  if (keyCode == 37){
    angle7 = angle7 -(dangle);
  }
  if (keyCode == 38) {
    seleccion=1;
  }
  if (keyCode == 40) {
    seleccion=0;
  }
  }
  
}
void mouseReleased() {
}

