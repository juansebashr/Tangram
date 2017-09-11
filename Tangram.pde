PShape square,angle,btriangleb,btriangle,rtriangle,paralelogram,paralelograminv,ltriangle,ltriangleb;
color fondo =color(12,16,84);
float R=0;
float angle1,angle2,angle3,angle4,angle5,angle6,angle7;{
  angle1=0;
  angle2=0;
  angle3=0;
  angle4=PI;
  angle5=0;
  angle6=PI;
  angle7=0;
}
int seleccion=0, nivel=1,contador=0,pasador=0;
float squarex,squarey,rtrianglex,rtriangley,ltrianglexa,ltriangleya,ltriangleyb,ltrianglexb,btriangleya,btrianglexa,btrianglexb,btriangleyb,paralelogramx,paralelogramy;{
  squarex=850;
  squarey=750;
  rtrianglex=1060;
  rtriangley=360;
  ltrianglexa=800;
  ltriangleya=410;
  ltrianglexb=925;
  ltriangleyb=390;
  btrianglexa=830;
  btriangleya=550;
  btrianglexb=1050;
  btriangleyb=590;
  paralelogramx=1025;
  paralelogramy=760;
}
String title="TANGRAM!";
float scale=0.7,scale2=3.1;
void setup() {
  fullScreen();
  strokeWeight(6.5);
  square = createShape(RECT, 0, 0,141.42 ,141.41);
  square.setFill(color(0, 0, 255));
  btriangle = createShape(TRIANGLE, 0, 0, 400,0,200,200); //159,-180,318,0
  btriangle.setFill(color(255,0,0));
  btriangleb = createShape(TRIANGLE, 0, 0, 400,0,200,200); //159,-180,318,0
  btriangleb.setFill(color(167,45,18));
  rtriangle = createShape(TRIANGLE,0,0,0,200,200,0); //0,0,0,180,159,0
  rtriangle.setFill(color(18,168,18));
  ltriangle = createShape(TRIANGLE, 0,0,200,0,100,-100); //0, 0, 0,-180,80,-90
  ltriangle.setFill(color(127,0,255));
  ltriangleb = createShape(TRIANGLE, 0,0,200,0,100,-100); //0, 0, 0,-180,80,-90 
  ltriangleb.setFill(color(187,23,6));
    paralelogram = createShape();
  paralelogram.beginShape();
  paralelogram.fill(255, 255, 0);
  paralelogram.vertex(0, 0);
  paralelogram.vertex(0,200);
  paralelogram.vertex(-100,300);
  paralelogram.vertex(-100,100);
  paralelogram.endShape(CLOSE);
  
  paralelograminv = createShape();
  paralelograminv.beginShape();
  paralelograminv.fill(255, 255, 0);
  paralelograminv.vertex(0, 0);
  paralelograminv.vertex(0, 200);
  paralelograminv.vertex(100,300);
  paralelograminv.vertex(100, 100);
  paralelograminv.endShape(CLOSE);
}
void draw() {
  frameRate(120);
  if(pasador==0){
   inicio();
  }
  else {background(fondo);
  Figuras();
  textSize(100);
  fill(15,240,134);
  text(title, 350,200);
  Pos_ini();
 tester();
  }
}

  void Pos_ini() {
    pushMatrix();
  translate(squarex,squarey);
  rotate(angle1);
  scale(scale);
  shape(square,-150/2,-150/2);
  popMatrix();
  
  pushMatrix();
  translate(rtrianglex,rtriangley);
  rotate(angle2);
  scale(scale);
  shape(rtriangle,-60,-40);
  popMatrix();
  
  pushMatrix();
  translate(btrianglexa,btriangleya);
  rotate(angle3);
  scale(scale);
  shape(btriangle,-180,-70);
  popMatrix();
  
  pushMatrix();
  translate(btrianglexb,btriangleyb);
  rotate(angle4);
  scale(scale);
  shape(btriangleb,-180,-70);
  popMatrix();
  
  pushMatrix();
  translate(ltrianglexa,ltriangleya);
  rotate(angle5);
  scale(scale);
  shape(ltriangle,-90,40);
  popMatrix();
  
  pushMatrix();
  translate(ltrianglexb,ltriangleyb);
  rotate(angle6);
  scale(scale);
  shape(ltriangleb,-90,40);
  popMatrix();
  
  if (seleccion==0){
  pushMatrix();
  translate(paralelogramx,paralelogramy);
  rotate(angle7);
  scale(scale);
  shape(paralelogram,70,-155);
  popMatrix();
  }
  else {
  pushMatrix();
  translate(paralelogramx,paralelogramy);
  rotate(angle7);
  scale(scale);
  shape(paralelograminv,-70,-155);
  popMatrix();
  }
  }
  
  void mouseDragged() {
  color c=get(mouseX,mouseY);
  if (c==color(0, 0, 255)) {
   squarex=mouseX;
   squarey=mouseY;
  }
  if (c==color(18,168,18)) {
    rtrianglex = mouseX;
    rtriangley = mouseY;
  }
  if (c==color(255,0,0)) {
     btrianglexa = mouseX;
     btriangleya = mouseY;
  }
  if (c==color(167,45,18)) {
    btrianglexb = mouseX;
    btriangleyb = mouseY;
  }
  if (c==color(127,0,255)) {
    ltrianglexa = mouseX;
    ltriangleya = mouseY;
  }
  if (c==color(187,23,6)) {
    ltrianglexb = mouseX;
    ltriangleyb = mouseY;
  }
  if (c==color(255, 255, 0)) {
    paralelogramx = mouseX;
    paralelogramy = mouseY;
  }
}
void keyPressed(){
   color c=get(mouseX,mouseY);
   float dangle=PI/4;
   if (c==color(0, 0, 255)) {
      if (keyCode == 39) {
    angle1 = angle1+(dangle);
  } 
  if (keyCode == 37){
    angle1 = angle1 -(dangle);
  }
  }
  
 if (c==color(18,168,18)) {
      if (keyCode == 39) {
    angle2=angle2+(dangle);
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
  } 
  if (keyCode == 37){
    angle6 = angle6 -(dangle);
  }
  }
  
  if (c==color(255, 255, 0)) {
      if (keyCode == 39) {
    angle7=angle7+(dangle);
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

void tester() {
  loadPixels();
  for(int i = 0; i < pixels.length ; i++)
    {
      if(pixels [i] == color (255))
      {
        contador++;
      }   
    }
     if(contador == 0)
    {
        background(225, 127, 66);
        
        fill(0);
        textSize(200);
        textAlign(CENTER,CENTER);
        text("¡Nivel", width/2, (height/2)-150);
        text("completado!", width/2, (height/2)+80); 
        
        
      textSize(25);
      textAlign(CENTER,BOTTOM);
      text("Para pasar al siguente nivel presione p", width/2, height);
      text("Para salir presione esc", width/2, height-40);
     
        nivel++;
        noLoop(); 
        if(nivel>8)
      {
      background(225, 127, 66);
        
        fill(0);
        textSize(200);
        textAlign(CENTER,CENTER);
        text("¡Niveles", width/2, (height/2)-150);
        text("terminados!", width/2, (height/2)+80); 
        textSize(70);
        text("Ve y juega otra cosa :V",width/2, (height/2)+300);
        noLoop();
      
       textSize(25);
      textAlign(CENTER,BOTTOM);
      text("Para salir presione esc", width/2, height);
     
      }
      }
      
        contador =0;
}

void Figuras() {
  
  if(nivel==1)
  { 
    fill(255);
    rect(350,400,400*scale ,400*scale);
  }
  else if (nivel==2)
   {
     fill(255);
     pushMatrix();
     scale(scale2);
     translate(-50,70);
     strokeWeight(1.6);
        beginShape();
        vertex(110,20);
        vertex(132.6274,42.6274);
        vertex(155.2548,20);
        vertex(155.2548,65.2548);
        vertex(200.5097,110.5097);
        vertex(200.5097,174.5097);
        vertex(232.5097,142.5097);
        vertex(264.5097,142.5097);
        vertex(232.5097,174.5097);
        vertex(136.5097,174.5097);
        vertex(155.2548,155.7645);
        vertex(155.2548,129.2548);
        vertex(123.2548,97.2548);
        vertex(132.6274,87.8823);
        vertex(110,65.2548);
       endShape(CLOSE);
       popMatrix();
    }
    else if (nivel==3)
   {
     fill(255);
     pushMatrix();
     scale(scale2);
     translate(-50,70);
     strokeWeight(1.6);
         beginShape();
      vertex(125.4952,157.2548);
      vertex(216.0048,157.2548);
      vertex(202.75,144);
      vertex(202.75,48);
      vertex(216.0048,34.7452);
      vertex(125.4952,34.7452);
      vertex(138.75,48);
      vertex(138.75,144);
     endShape(CLOSE);
       popMatrix();
    }
    else if (nivel==4)
   {
     fill(255);
     pushMatrix();
     scale(scale2);
     translate(-50,70);
     strokeWeight(1.6);
       beginShape();
        vertex(10+155.2771,209.9857-30);
        vertex(10+219.2771,145.9857-30);
        vertex(10+155.2771,145.9857-30);
        vertex(10+200.5319,100.7309-30);
        vertex(10+155.2771,55.476-30);
        vertex(10+110.0222,100.7309-30);
        vertex(10+155.2771,145.9857-30);
        vertex(10+91.2771,145.9857-30);
      endShape(CLOSE);  
       popMatrix();
    }
    else if (nivel==5)
   {
     fill(255);
     pushMatrix();
     scale(scale2);
     translate(-50,70);
     strokeWeight(1.6);
       beginShape();
        vertex(242.5151,41.2885);
        vertex(219.8877,63.916);
        vertex(219.8877,109.1708);
        vertex(197.2603,131.7982);
        vertex(197.2603,177.053);
        vertex(152.0055,131.7982);
        vertex(110.6329,173.1708);
        vertex(110.6329,109.1708);
        vertex(142.6329,77.1708);
        vertex(152.0055,86.5434);
        vertex(174.6329,63.916);
        vertex(197.2603,86.5434);
        vertex(197.2603,41.2885);
      endShape(CLOSE);
       popMatrix();
    }
    else if (nivel==6)
   {
     fill(255);
     pushMatrix();
     scale(scale2);
     translate(-50,70);
     strokeWeight(1.6);
        beginShape();
      vertex(125.0646,148.9754);
      vertex(170.3194,148.9754);
      vertex(170.3194,116.9754);
      vertex(228.8291,116.9754);
      vertex(228.8291,148.9754);
      vertex(260.8291,148.9754);
      vertex(260.8291,116.9754);
      vertex(215.5742,71.7206);
      vertex(125.0646,71.7206);
      vertex(106.3194,52.9754);
      vertex(106.3194,71.7206);
      vertex(83.692,94.348);
      vertex(106.3194,116.9754);
      vertex(138.3194,84.9754);
      vertex(138.3194,116.9754);
      vertex(147.692,126.348);
    endShape(CLOSE);
       popMatrix();
    }
    else if (nivel==7)
   {
     fill(255);
     pushMatrix();
     scale(scale2);
     translate(-50,70);
     strokeWeight(1.6);
        beginShape();
        vertex(150.5302,28.6317);
        vertex(173.1577,51.2591);
        vertex(173.1577,96.5139);
        vertex(159.9028,109.7688);
        vertex(250.4125,109.7688);
        vertex(205.1577,155.0236);
        vertex(223.9028,173.7688);
        vertex(159.9028,173.7688);
        vertex(127.9028,141.7688);
        vertex(127.9028,96.5139);
        vertex(150.5302,73.8865);
        vertex(150.5302,60.6317);
        vertex(118.5302,60.6317);
      endShape(CLOSE);  
       popMatrix();
    }
}
void keyTyped() {
  if (key=='p')
  {
    loop();
   {
  squarex=850;
  squarey=750;
  rtrianglex=1060;
  rtriangley=360;
  ltrianglexa=800;
  ltriangleya=410;
  ltrianglexb=925;
  ltriangleyb=390;
  btrianglexa=830;
  btriangleya=550;
  btrianglexb=1050;
  btriangleyb=590;
  paralelogramx=1025;
  paralelogramy=760;
   }
   {
  angle1=0;
  angle2=0;
  angle3=0;
  angle4=PI;
  angle5=0;
  angle6=PI;
  angle7=0;
  }
 }
}

void inicio() {
  background(225, 127, 66);
  fill(0);
  textSize(100);
  textAlign(CENTER,TOP); //BOTTOM
  text("TANGRAM!!!",width/2, 60);
  
  fill(fondo);
  textSize(60);
  textAlign(CENTER,CENTER);
  text("Instrucciones:",width/2, (height/2-150));
  
  textSize(50);
  textAlign(CENTER,CENTER);
  text("1. Usa el mouse para mover las piezas y completar las figuras",width/2, (height/2-50));
  text("2. Usa las flechas para rotar las figuras",width/2, (height/2));
  text("3. Si quieres reiniciar el nivel, presiona p",width/2, (height/2+50));
  text("Son 7 niveles, disfrutalos",width/2, (height/2+100));
  textSize(30);
  
  fill(0);
  textAlign(CENTER,BOTTOM);
  text("Para iniciar presiona p",width/2, height);
  noLoop();
  pasador++;
}
