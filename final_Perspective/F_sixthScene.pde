class sixthScene{
  //Points of the center cube
  PVector pA, pB, pC, pD, pE, pF, pG;
  //length of the sides
  float lgh;
  //first cube variables
  PVector ma;
  PVector mb;
  PVector mc;
  PVector md;
  float m;
  float n;
  
  //spin system
  boolean spin;
  boolean spin2;
  boolean spin3;
  boolean spin4;
  boolean spin5;
  boolean spin6;
  boolean spin7;
  boolean spin8;
  boolean spin9;
  boolean spin10;
  boolean spin11;
  boolean spin12;
  boolean spin13;
  boolean spin14;
  boolean spin15;
  boolean spin16;
  boolean spin17;
  boolean spin18;
  boolean spin19;
  boolean spin20;
  
  //second cube variables
  PVector ma2;
  PVector mb2;
  PVector mc2;
  PVector md2;
  float m2;
  float n2;
  //third cube variables
  PVector ma3;
  PVector mb3;
  PVector mc3;
  PVector md3;
  float m3;
  float n3;
  //fourth cube variables
  PVector ma4;
  PVector mb4;
  PVector mc4;
  PVector md4;
  float m4;
  float n4;
  //fifth cube variables
  PVector ma5;
  PVector mb5;
  PVector mc5;
  PVector md5;
  float m5;
  float n5;
  //sixth cube variables
  PVector ma6;
  PVector mb6;
  PVector mc6;
  PVector md6;
  float m6;
  float n6;
  //seventh cube variables
  PVector ma7;
  PVector mb7;
  PVector mc7;
  PVector md7;
  float m7;
  float n7;
  
  //eighth cube variables
  PVector ma8;
  PVector mb8;
  PVector mc8;
  PVector md8;
  float m8;
  float n8;
  //nineth cube variables
  PVector ma9;
  PVector mb9;
  PVector mc9;
  PVector md9;
  float m9;
  float n9;
  //tenth cube variables
  PVector ma10;
  PVector mb10;
  PVector mc10;
  PVector md10;
  float m10;
  float n10;
  
  sixthScene(){
  //positions
  x = width/2;
  y = height/2;
  //size
  a = 70;
  
  //points of the center cube
  pA = new PVector(-2*a/3, 0);
  pB = new PVector(-a/3, -a/sqrt(3));
  pC = new PVector(0,0);
  pD = new PVector(-a/3, a/sqrt(3));
  pE = new PVector(a/3, -a/sqrt(3));
  pF = new PVector(2*a/3, 0);
  pG = new PVector(a/3, a/sqrt(3));
  
  //length between each
  lgh = 2*a/3;
  
  //first cube variables
  ma = new PVector(pC.x, pC.y);
  mb = new PVector(pD.x, pD.y);
  mc = new PVector(pA.x, pA.y);
  md = new PVector(pD.x, pD.y);
  
  //second cube variables
  ma2 = new PVector(0,0);
  mb2 = new PVector(0,0);
  mc2 = new PVector(0,0);
  md2 = new PVector(0,0);
  
  //third cube variables
  ma3 = new PVector(0,0);
  mb3 = new PVector(0,0);
  mc3 = new PVector(0,0);
  md3 = new PVector(0,0);
  
  //fourth cube variables
  ma4 = new PVector(0,0);
  mb4 = new PVector(0,0);
  mc4 = new PVector(0,0);
  md4 = new PVector(0,0);
  
  //fifth cube variables
  ma5 = new PVector(0,0);
  mb5 = new PVector(0,0);
  mc5 = new PVector(0,0);
  md5 = new PVector(0,0);
  
  //sixth cube variables
  ma6 = new PVector(0,0);
  mb6 = new PVector(0,0);
  mc6 = new PVector(0,0);
  md6 = new PVector(0,0);
  
  //seventh cube variables
  ma7 = new PVector(0,0);
  mb7 = new PVector(0,0);
  mc7 = new PVector(0,0);
  md7 = new PVector(0,0);
  
  //eighth cube variables
  ma8 = new PVector(0,0);
  mb8 = new PVector(0,0);
  mc8 = new PVector(0,0);
  md8 = new PVector(0,0);
  
  //nineth cube variables
  ma9 = new PVector(0,0);
  mb9 = new PVector(0,0);
  mc9 = new PVector(0,0);
  md9 = new PVector(0,0);
   
  //nineth cube variables
  ma10 = new PVector(0,0);
  mb10 = new PVector(0,0);
  mc10 = new PVector(0,0);
  md10 = new PVector(0,0);
  }
  
  void update(){
    pushMatrix();
    translate(x,y);
    centerCube();
    spinSystem();
    expandSideA();
    
    //expandaSide B
      pushMatrix();
      rotate(TWO_PI/3);
      expandSideA();
      popMatrix();
    //expandSide C
      pushMatrix();
      rotate(2*TWO_PI/3);
      expandSideA();
      popMatrix();
    
    popMatrix();
  }
  
  void centerCube(){
  //side1
  noFill();
  stroke(255);
  beginShape();
  vertex(pB.x, pB.y);
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(pC.x, pC.y);
  vertex(pB.x, pB.y);
  vertex(pB.x, pB.y);
  vertex(pE.x, pE.y);
  vertex(pF.x, pF.y);
  vertex(pC.x, pC.y);
  vertex(pD.x, pD.y);
  vertex(pG.x, pG.y);
  vertex(pF.x, pF.y);
  endShape();
  }
  
  //depends on the order of drawing the cube
  void spinSystem(){
  float angle = map(m,0,20,PI/3,PI);
  float angle0 = map(n,0,20,-PI/3,PI);
  ma.x = pB.x+cos(angle)*lgh;
  ma.y = pB.y+sin(angle)*lgh;
  mb.x = pA.x+cos(angle)*lgh;
  mb.y = pA.y+sin(angle)*lgh;
  mc.x = pA.x+cos(angle0)*lgh;
  mc.y = pA.y+sin(angle0)*lgh;
  md.x = pD.x+cos(angle0)*lgh;
  md.y = pD.y+sin(angle0)*lgh;
    //first matrix
    if(m<20){
      m++;
    }else{
      spin = true;
    }
    if(spin){
      if(n<20){
        n++;
      }else{
        spin2 = true;
      }
    }
  
  //second matrix
  if(spin2){
  float angle1 = map(m2,0,20,PI/3,PI);
  float angle2 = map(n2,0,20,-PI/3,PI);
  ma2.x = pB.x+cos(angle1)*lgh;
  ma2.y = pB.y+sin(angle1)*lgh;
  mb2.x = pA.x+cos(angle1)*lgh;
  mb2.y = pA.y+sin(angle1)*lgh;
  mc2.x = pA.x+cos(angle2)*lgh;
  mc2.y = pA.y+sin(angle2)*lgh;
  md2.x = pD.x+cos(angle2)*lgh;
  md2.y = pD.y+sin(angle2)*lgh;
    if(m2<20){
      m2++;
    }else{
      spin3 = true;
    }
    if(spin3){
      if(n2<20){
        n2++;
      }else{
        spin4 = true;
      }
    }
  }
  
  //third matrix
  if(spin4){
  float angle1 = map(m3,0,20,PI/3,PI);
  float angle2 = map(n3,0,20,-PI/3,PI);
  ma3.x = pB.x+cos(angle1)*lgh;
  ma3.y = pB.y+sin(angle1)*lgh;
  mb3.x = pA.x+cos(angle1)*lgh;
  mb3.y = pA.y+sin(angle1)*lgh;
  mc3.x = pA.x+cos(angle2)*lgh;
  mc3.y = pA.y+sin(angle2)*lgh;
  md3.x = pD.x+cos(angle2)*lgh;
  md3.y = pD.y+sin(angle2)*lgh;
    if(m3<20){
      m3++;
    }else{
      spin5 = true;
    }
    if(spin5){
      if(n3<20){
        n3++;
      }else{
        spin6 = true;
      }
    }
  }
  
  //fourth matrix
  if(spin6){
  float angle1 = map(m4,0,20,PI/3,PI);
  float angle2 = map(n4,0,20,-PI/3,PI);
  ma4.x = pB.x+cos(angle1)*lgh;
  ma4.y = pB.y+sin(angle1)*lgh;
  mb4.x = pA.x+cos(angle1)*lgh;
  mb4.y = pA.y+sin(angle1)*lgh;
  mc4.x = pA.x+cos(angle2)*lgh;
  mc4.y = pA.y+sin(angle2)*lgh;
  md4.x = pD.x+cos(angle2)*lgh;
  md4.y = pD.y+sin(angle2)*lgh;
    if(m4<20){
      m4++;
    }else{
      spin7 = true;
    }
    if(spin7){
      if(n4<20){
        n4++;
      }else{
        spin8 = true;
      }
    }
  }
  
  //fifth matrix
  if(spin8){
  float angle1 = map(m5,0,20,PI/3,PI);
  float angle2 = map(n5,0,20,-PI/3,PI);
  ma5.x = pB.x+cos(angle1)*lgh;
  ma5.y = pB.y+sin(angle1)*lgh;
  mb5.x = pA.x+cos(angle1)*lgh;
  mb5.y = pA.y+sin(angle1)*lgh;
  mc5.x = pA.x+cos(angle2)*lgh;
  mc5.y = pA.y+sin(angle2)*lgh;
  md5.x = pD.x+cos(angle2)*lgh;
  md5.y = pD.y+sin(angle2)*lgh;
    if(m5<20){
      m5++;
    }else{
      spin9 = true;
    }
    if(spin9){
      if(n5<20){
        n5++;
      }else{
        spin10 = true;
      }
    }
  }
  
  //sixth matrix
  if(spin10){
  float angle1 = map(m6,0,20,PI/3,PI);
  float angle2 = map(n6,0,20,-PI/3,PI);
  ma6.x = pB.x+cos(angle1)*lgh;
  ma6.y = pB.y+sin(angle1)*lgh;
  mb6.x = pA.x+cos(angle1)*lgh;
  mb6.y = pA.y+sin(angle1)*lgh;
  mc6.x = pA.x+cos(angle2)*lgh;
  mc6.y = pA.y+sin(angle2)*lgh;
  md6.x = pD.x+cos(angle2)*lgh;
  md6.y = pD.y+sin(angle2)*lgh;
    if(m6<20){
      m6++;
    }else{
      spin11 = true;
    }
    if(spin11){
      if(n6<20){
        n6++;
      }else{
        spin12 = true;
      }
    }
  }
  
  //seventh matrix
  if(spin12){
  float angle1 = map(m7,0,20,PI/3,PI);
  float angle2 = map(n7,0,20,-PI/3,PI);
  ma7.x = pB.x+cos(angle1)*lgh;
  ma7.y = pB.y+sin(angle1)*lgh;
  mb7.x = pA.x+cos(angle1)*lgh;
  mb7.y = pA.y+sin(angle1)*lgh;
  mc7.x = pA.x+cos(angle2)*lgh;
  mc7.y = pA.y+sin(angle2)*lgh;
  md7.x = pD.x+cos(angle2)*lgh;
  md7.y = pD.y+sin(angle2)*lgh;
    if(m7<20){
      m7++;
    }else{
      spin13 = true;
    }
    if(spin13){
      if(n7<20){
        n7++;
      }else{
        spin14 = true;
      }
    }
  }

  //eighth matrix
  if(spin14){
  float angle1 = map(m8,0,20,PI/3,PI);
  float angle2 = map(n8,0,20,-PI/3,PI);
  ma8.x = pB.x+cos(angle1)*lgh;
  ma8.y = pB.y+sin(angle1)*lgh;
  mb8.x = pA.x+cos(angle1)*lgh;
  mb8.y = pA.y+sin(angle1)*lgh;
  mc8.x = pA.x+cos(angle2)*lgh;
  mc8.y = pA.y+sin(angle2)*lgh;
  md8.x = pD.x+cos(angle2)*lgh;
  md8.y = pD.y+sin(angle2)*lgh;
    if(m8<20){
      m8++;
    }else{
      spin15 = true;
    }
    if(spin15){
      if(n8<20){
        n8++;
      }else{
        spin16 = true;
      }
    }
  }

  //nineth matrix
  if(spin16){
  float angle1 = map(m9,0,20,PI/3,PI);
  float angle2 = map(n9,0,20,-PI/3,PI);
  ma9.x = pB.x+cos(angle1)*lgh;
  ma9.y = pB.y+sin(angle1)*lgh;
  mb9.x = pA.x+cos(angle1)*lgh;
  mb9.y = pA.y+sin(angle1)*lgh;
  mc9.x = pA.x+cos(angle2)*lgh;
  mc9.y = pA.y+sin(angle2)*lgh;
  md9.x = pD.x+cos(angle2)*lgh;
  md9.y = pD.y+sin(angle2)*lgh;
    if(m9<20){
      m9++;
    }else{
      spin17 = true;
    }
    if(spin17){
      if(n9<20){
        n9++;
      }else{
        spin18 = true;
      }
    }
  }

  //tenth matrix
  if(spin18){
  float angle1 = map(m10,0,20,PI/3,PI);
  float angle2 = map(n10,0,20,-PI/3,PI);
  ma10.x = pB.x+cos(angle1)*lgh;
  ma10.y = pB.y+sin(angle1)*lgh;
  mb10.x = pA.x+cos(angle1)*lgh;
  mb10.y = pA.y+sin(angle1)*lgh;
  mc10.x = pA.x+cos(angle2)*lgh;
  mc10.y = pA.y+sin(angle2)*lgh;
  md10.x = pD.x+cos(angle2)*lgh;
  md10.y = pD.y+sin(angle2)*lgh;
    if(m10<20){
      m10++;
    }else{
      spin19 = true;
    }
    if(spin19){
      if(n10<20){
        n10++;
      }else{
        spin20 = true;
      }
    }
  }

 }
  
  //only draws the cube
  void expandSideA(){
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma.x, ma.y);
  vertex(mb.x, mb.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md.x, md.y);
  vertex(mc.x, mc.y);
  endShape(CLOSE);
  
  if(!spin2){ noStroke(); 
  }else{
  pushMatrix();
  translate(pA.x, pA.y);
  rotate(PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma2.x, ma2.y);
  vertex(mb2.x, mb2.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md2.x, md2.y);
  vertex(mc2.x, mc2.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(pA.x, pA.y);
  rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma2.x, ma2.y);
  vertex(mb2.x, mb2.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md2.x, md2.y);
  vertex(mc2.x, mc2.y);
  endShape(CLOSE);
  popMatrix();
  }
  
  if(!spin4){ noStroke(); 
  }else{
  pushMatrix();
  translate(-a,a/sqrt(3));
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma3.x, ma3.y);
  vertex(mb3.x, mb3.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md3.x, md3.y);
  vertex(mc3.x, mc3.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(-a,a/sqrt(3));
  rotate(-TWO_PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma3.x, ma3.y);
  vertex(mb3.x, mb3.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md3.x, md3.y);
  vertex(mc3.x, mc3.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(-a,-a/sqrt(3));
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma3.x, ma3.y);
  vertex(mb3.x, mb3.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md3.x, md3.y);
  vertex(mc3.x, mc3.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(-a,-a/sqrt(3));
  rotate(TWO_PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma3.x, ma3.y);
  vertex(mb3.x, mb3.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md3.x, md3.y);
  vertex(mc3.x, mc3.y);
  endShape(CLOSE);
  popMatrix();
    }
    
  if(!spin6){ noStroke(); 
  }else{
  pushMatrix();
  translate(-2*a/3,2*a/sqrt(3));
  rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma4.x, ma4.y);
  vertex(mb4.x, mb4.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md4.x, md4.y);
  vertex(mc4.x, mc4.y);
  endShape(CLOSE);
  popMatrix();
  //
  pushMatrix();
  translate(-5*a/3,a/sqrt(3));
  rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma4.x, ma4.y);
  vertex(mb4.x, mb4.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md4.x, md4.y);
  vertex(mc4.x, mc4.y);
  endShape(CLOSE);
  popMatrix();
  //
  pushMatrix();
  translate(-5*a/3,-a/sqrt(3));
  rotate(PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma4.x, ma4.y);
  vertex(mb4.x, mb4.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md4.x, md4.y);
  vertex(mc4.x, mc4.y);
  endShape(CLOSE);
  popMatrix();
  //
  pushMatrix();
  translate(-2*a/3,-2*a/sqrt(3));
  rotate(PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma4.x, ma4.y);
  vertex(mb4.x, mb4.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md4.x, md4.y);
  vertex(mc4.x, mc4.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(-5*a/3,-a/sqrt(3));
  rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma4.x, ma4.y);
  vertex(mb4.x, mb4.y);
  endShape(CLOSE);
  popMatrix();
  
  }
  
  if(!spin8){ noStroke(); 
  }else{
  pushMatrix();
  translate(-2*a,2*a/sqrt(3));
  rotate(-2*PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma5.x, ma5.y);
  vertex(mb5.x, mb5.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(-a,-3*a/sqrt(3));
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma5.x, ma5.y);
  vertex(mb5.x, mb5.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(-a,3*a/sqrt(3));
  rotate(-2*PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md5.x, md5.y);
  vertex(mc5.x, mc5.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma5.x, ma5.y);
  vertex(mb5.x, mb5.y);
  endShape(CLOSE);
  popMatrix();

  pushMatrix();
  translate(-a,-3*a/sqrt(3));
  rotate(2*PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md5.x, md5.y);
  vertex(mc5.x, mc5.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma5.x, ma5.y);
  vertex(mb5.x, mb5.y);
  endShape(CLOSE);
  popMatrix();

  pushMatrix();
  translate(-2*a,2*a/sqrt(3));
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md5.x, md5.y);
  vertex(mc5.x, mc5.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma5.x, ma5.y);
  vertex(mb5.x, mb5.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(-2*a,0);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md5.x, md5.y);
  vertex(mc5.x, mc5.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma5.x, ma5.y);
  vertex(mb5.x, mb5.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(-2*a,-2*a/sqrt(3));
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md5.x, md5.y);
  vertex(mc5.x, mc5.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma5.x, ma5.y);
  vertex(mb5.x, mb5.y);
  endShape(CLOSE);
  popMatrix();
  }
  
  if(!spin10){ noStroke();
  }else{
  pushMatrix();
  beginShape();
  translate(-8*a/3,-2*a/sqrt(3));
  rotate(-PI/3);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma6.x, ma6.y);
  vertex(mb6.x, mb6.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  beginShape();
  translate(-8*a/3,0);
  rotate(-PI/3);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma6.x, ma6.y);
  vertex(mb6.x, mb6.y);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(-2*a/3,4*a/sqrt(3));
  rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md6.x, md6.y);
  vertex(mc6.x, mc6.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma6.x, ma6.y);
  vertex(mb6.x, mb6.y);
  endShape(CLOSE);
  popMatrix();
  //
  pushMatrix();
  translate(-5*a/3,3*a/sqrt(3));
  rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md6.x, md6.y);
  vertex(mc6.x, mc6.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma6.x, ma6.y);
  vertex(mb6.x, mb6.y);
  endShape(CLOSE);
  popMatrix();
  //
  pushMatrix();
  translate(-8*a/3,2*a/sqrt(3));
  rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md6.x, md6.y);
  vertex(mc6.x, mc6.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma6.x, ma6.y);
  vertex(mb6.x, mb6.y);
  endShape(CLOSE);
  popMatrix();
  //
  pushMatrix();
  translate(-2*a/3,-4*a/sqrt(3));
  rotate(PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md6.x, md6.y);
  vertex(mc6.x, mc6.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma6.x, ma6.y);
  vertex(mb6.x, mb6.y);
  endShape(CLOSE);
  popMatrix();
  //
  pushMatrix();
  translate(-5*a/3,-3*a/sqrt(3));
  rotate(PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md6.x, md6.y);
  vertex(mc6.x, mc6.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma6.x, ma6.y);
  vertex(mb6.x, mb6.y);
  endShape(CLOSE);
  popMatrix();
  //
  pushMatrix();
  translate(-8*a/3,-2*a/sqrt(3));
  rotate(PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md6.x, md6.y);
  vertex(mc6.x, mc6.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma6.x, ma6.y);
  vertex(mb6.x, mb6.y);
  endShape(CLOSE);
  popMatrix();
  }
  
  if(!spin12){ noStroke(); 
  }else{
    pushMatrix();
    beginShape();
  translate(-3*a,-3*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma7.x, ma7.y);
  vertex(mb7.x, mb7.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md7.x, md7.y);
  vertex(mc7.x, mc7.y);
    endShape(CLOSE);
    beginShape();
  translate(0,2*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma7.x, ma7.y);
  vertex(mb7.x, mb7.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md7.x, md7.y);
  vertex(mc7.x, mc7.y);
    endShape(CLOSE);
    beginShape();
  translate(0,2*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma7.x, ma7.y);
  vertex(mb7.x, mb7.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md7.x, md7.y);
  vertex(mc7.x, mc7.y);
    endShape(CLOSE);
    beginShape();
  translate(0,2*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma7.x, ma7.y);
  vertex(mb7.x, mb7.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md7.x, md7.y);
  vertex(mc7.x, mc7.y);
    endShape(CLOSE);
    popMatrix();
  //
    pushMatrix();
    beginShape();
  translate(-2*a,-4*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma7.x, ma7.y);
  vertex(mb7.x, mb7.y);
  endShape(CLOSE);
  beginShape();
  translate(a,-a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma7.x, ma7.y);
  vertex(mb7.x, mb7.y);
    endShape(CLOSE);
    popMatrix();
  //
    pushMatrix();
    translate(-2*a, 4*a/sqrt(3));
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md7.x, md7.y);
  vertex(mc7.x, mc7.y);
    endShape(CLOSE);
    translate(a, a/sqrt(3));
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md7.x, md7.y);
  vertex(mc7.x, mc7.y);
    endShape(CLOSE);
      popMatrix();
  }
  
  if(!spin14){ noStroke(); 
  }else{
    pushMatrix();
    translate(-3*a-2*a/3,-3*a/sqrt(3));
    rotate(PI/3);
    beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma8.x, ma8.y);
  vertex(mb8.x, mb8.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md8.x, md8.y);
  vertex(mc8.x, mc8.y);
    endShape(CLOSE);
    popMatrix();
    
    pushMatrix();
    beginShape();
    translate(-3*a+a/3,-4*a/sqrt(3));
    rotate(PI/3);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma8.x, ma8.y);
  vertex(mb8.x, mb8.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md8.x, md8.y);
  vertex(mc8.x, mc8.y);
    endShape(CLOSE);
    popMatrix();
    
    pushMatrix();
    beginShape();
    translate(-2*a+a/3,-5*a/sqrt(3));
    rotate(PI/3);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma8.x, ma8.y);
  vertex(mb8.x, mb8.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md8.x, md8.y);
  vertex(mc8.x, mc8.y);
    endShape(CLOSE);
    popMatrix();
    
    pushMatrix();
    beginShape();
    translate(-11*a/3,-sqrt(3)*a);
    rotate(-PI/3);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma8.x, ma8.y);
  vertex(mb8.x, mb8.y);
  endShape(CLOSE);
    popMatrix();
    
    pushMatrix();
    beginShape();
    translate(-11*a/3,-a/sqrt(3));
    rotate(-PI/3);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma8.x, ma8.y);
  vertex(mb8.x, mb8.y);
  endShape(CLOSE);
    popMatrix();
    
    pushMatrix();
    beginShape();
    translate(-11*a/3,a/sqrt(3));
    rotate(-PI/3);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma8.x, ma8.y);
  vertex(mb8.x, mb8.y);
  endShape(CLOSE);
    popMatrix();
    
    pushMatrix();
    beginShape();
    translate(-11*a/3,3*a/sqrt(3));
    rotate(-PI/3);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma8.x, ma8.y);
  vertex(mb8.x, mb8.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md8.x, md8.y);
  vertex(mc8.x, mc8.y);
    endShape(CLOSE);
    popMatrix();
    
    pushMatrix();
    beginShape();
    translate(-8*a/3,4*a/sqrt(3));
    rotate(-PI/3);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma8.x, ma8.y);
  vertex(mb8.x, mb8.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md8.x, md8.y);
  vertex(mc8.x, mc8.y);
    endShape(CLOSE);
    popMatrix();
    
    pushMatrix();
    beginShape();
    translate(-5*a/3,5*a/sqrt(3));
    rotate(-PI/3);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma8.x, ma8.y);
  vertex(mb8.x, mb8.y);
  endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md8.x, md8.y);
  vertex(mc8.x, mc8.y);
    endShape(CLOSE);
    popMatrix();
    
  }
  
  if(!spin16){ noStroke(); 
  }else{
    pushMatrix();
    beginShape();
    translate(-6*a/3,-6*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma9.x, ma9.y);
  vertex(mb9.x, mb9.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    beginShape();
    translate(-9*a/3,-5*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma9.x, ma9.y);
  vertex(mb9.x, mb9.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    beginShape();
    translate(-12*a/3,-4*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma9.x, ma9.y);
  vertex(mb9.x, mb9.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md9.x, md9.y);
  vertex(mc9.x, mc9.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    beginShape();
    translate(-12*a/3,-2*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma9.x, ma9.y);
  vertex(mb9.x, mb9.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md9.x, md9.y);
  vertex(mc9.x, mc9.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    beginShape();
    translate(-12*a/3,0);
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma9.x, ma9.y);
  vertex(mb9.x, mb9.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md9.x, md9.y);
  vertex(mc9.x, mc9.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    beginShape();
    translate(-12*a/3,2*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma9.x, ma9.y);
  vertex(mb9.x, mb9.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md9.x, md9.y);
  vertex(mc9.x, mc9.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    beginShape();
    translate(-12*a/3,4*a/sqrt(3));
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma9.x, ma9.y);
  vertex(mb9.x, mb9.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md9.x, md9.y);
  vertex(mc9.x, mc9.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-9*a/3,5*a/sqrt(3));
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md9.x, md9.y);
  vertex(mc9.x, mc9.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-6*a/3,6*a/sqrt(3));
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md9.x, md9.y);
  vertex(mc9.x, mc9.y);
    endShape(CLOSE);
    popMatrix();
  }
  
  if(!spin18){ noStroke(); 
  }else{
    pushMatrix();
    translate(-8*a/3,-6*a/sqrt(3));
    rotate(PI/3);
    beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma10.x, ma10.y);
  vertex(mb10.x, mb10.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md10.x, md10.y);
  vertex(mc10.x, mc10.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-11*a/3,-5*a/sqrt(3));
    rotate(PI/3);
    beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma10.x, ma10.y);
  vertex(mb10.x, mb10.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md10.x, md10.y);
  vertex(mc10.x, mc10.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-14*a/3,-4*a/sqrt(3));
    rotate(PI/3);
    beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma10.x, ma10.y);
  vertex(mb10.x, mb10.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md10.x, md10.y);
  vertex(mc10.x, mc10.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-8*a/3,6*a/sqrt(3));
    rotate(-PI/3);
    beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma10.x, ma10.y);
  vertex(mb10.x, mb10.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md10.x, md10.y);
  vertex(mc10.x, mc10.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-11*a/3,5*a/sqrt(3));
    rotate(-PI/3);
    beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma10.x, ma10.y);
  vertex(mb10.x, mb10.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md10.x, md10.y);
  vertex(mc10.x, mc10.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-14*a/3,4*a/sqrt(3));
    rotate(-PI/3);
    beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma10.x, ma10.y);
  vertex(mb10.x, mb10.y);
    endShape(CLOSE);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pD.x, pD.y);
  vertex(md10.x, md10.y);
  vertex(mc10.x, mc10.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-14*a/3,2*a/sqrt(3));
    rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma10.x, ma10.y);
  vertex(mb10.x, mb10.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-14*a/3,0);
    rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma10.x, ma10.y);
  vertex(mb10.x, mb10.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-14*a/3,-2*a/sqrt(3));
    rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma10.x, ma10.y);
  vertex(mb10.x, mb10.y);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    translate(-14*a/3,-4*a/sqrt(3));
    rotate(-PI/3);
  beginShape();
  stroke(255);
  noFill();
  vertex(pA.x, pA.y);
  vertex(pB.x, pB.y);
  vertex(ma10.x, ma10.y);
  vertex(mb10.x, mb10.y);
    endShape(CLOSE);
    popMatrix();
  }
 }
}
