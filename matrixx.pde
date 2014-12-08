
class matrixx{
  PVector pA;
  PVector pB;
  PVector pC;
  PVector pD;
  PVector pE;
  PVector pF;
  PVector pG;
  float A,B,C,D;
  
  matrixx(){
    a = 70;
  x = width/2;
  y = height/2;
  pA = new PVector(-2*a/3, 0);
  pB = new PVector(-a/3, -a/sqrt(3));
  pC = new PVector(0,0);
  pD = new PVector(-a/3, a/sqrt(3));
  pE = new PVector(a/3, -a/sqrt(3));
  pF = new PVector(2*a/3, 0);
  pG = new PVector(a/3, a/sqrt(3));
  }
  
  void update(float strokeColor){
    pushMatrix();
    translate(2*a/3,0);
    updating(strokeColor);
    popMatrix();
  }
  
  void updating(float strokeColor){
  translate(x-2*a/3,y);
    for(int i=0; i<width/a; i++){
      for (int j=0; j<height/a; j++){
  A = i*a/sqrt(3);
  B = i*a;
  C = 2*j*a/sqrt(3);
  D = 2*j*a;
  
  noFill();
  stroke(255,strokeColor);
  beginShape();
  vertex(pB.x+B+D, pB.y+A);
  vertex(pA.x+B+D, pA.y+A);
  vertex(pD.x+B+D, pD.y+A);
  vertex(pC.x+B+D, pC.y+A);
  vertex(pB.x+B+D, pB.y+A);
  vertex(pB.x+B+D, pB.y+A);
  vertex(pE.x+B+D, pE.y+A);
  vertex(pF.x+B+D, pF.y+A);
  vertex(pC.x+B+D, pC.y+A);
  vertex(pD.x+B+D, pD.y+A);
  vertex(pG.x+B+D, pG.y+A);
  vertex(pF.x+B+D, pF.y+A);
  endShape();
  
  beginShape();
  vertex(pB.x+B+D, pB.y-A);
  vertex(pA.x+B+D, pA.y-A);
  vertex(pD.x+B+D, pD.y-A);
  vertex(pC.x+B+D, pC.y-A);
  vertex(pB.x+B+D, pB.y-A);
  vertex(pB.x+B+D, pB.y-A);
  vertex(pE.x+B+D, pE.y-A);
  vertex(pF.x+B+D, pF.y-A);
  vertex(pC.x+B+D, pC.y-A);
  vertex(pD.x+B+D, pD.y-A);
  vertex(pG.x+B+D, pG.y-A);
  vertex(pF.x+B+D, pF.y-A);
  endShape();
  
  
  beginShape();
  vertex(pB.x-B-D, pB.y+A);
  vertex(pA.x-B-D, pA.y+A);
  vertex(pD.x-B-D, pD.y+A);
  vertex(pC.x-B-D, pC.y+A);
  vertex(pB.x-B-D, pB.y+A);
  vertex(pB.x-B-D, pB.y+A);
  vertex(pE.x-B-D, pE.y+A);
  vertex(pF.x-B-D, pF.y+A);
  vertex(pC.x-B-D, pC.y+A);
  vertex(pD.x-B-D, pD.y+A);
  vertex(pG.x-B-D, pG.y+A);
  vertex(pF.x-B-D, pF.y+A);
  endShape();
  
  beginShape();
  vertex(pB.x-B-D, pB.y-A);
  vertex(pA.x-B-D, pA.y-A);
  vertex(pD.x-B-D, pD.y-A);
  vertex(pC.x-B-D, pC.y-A);
  vertex(pB.x-B-D, pB.y-A);
  vertex(pB.x-B-D, pB.y-A);
  vertex(pE.x-B-D, pE.y-A);
  vertex(pF.x-B-D, pF.y-A);
  vertex(pC.x-B-D, pC.y-A);
  vertex(pD.x-B-D, pD.y-A);
  vertex(pG.x-B-D, pG.y-A);
  vertex(pF.x-B-D, pF.y-A);
  endShape();
  
  beginShape();
  vertex(pB.x+B, pB.y+A+C);
  vertex(pA.x+B, pA.y+A+C);
  vertex(pD.x+B, pD.y+A+C);
  vertex(pC.x+B, pC.y+A+C);
  vertex(pB.x+B, pB.y+A+C);
  vertex(pB.x+B, pB.y+A+C);
  vertex(pE.x+B, pE.y+A+C);
  vertex(pF.x+B, pF.y+A+C);
  vertex(pC.x+B, pC.y+A+C);
  vertex(pD.x+B, pD.y+A+C);
  vertex(pG.x+B, pG.y+A+C);
  vertex(pF.x+B, pF.y+A+C);
  endShape();
  
  beginShape();
  vertex(pB.x-B, pB.y+A+C);
  vertex(pA.x-B, pA.y+A+C);
  vertex(pD.x-B, pD.y+A+C);
  vertex(pC.x-B, pC.y+A+C);
  vertex(pB.x-B, pB.y+A+C);
  vertex(pB.x-B, pB.y+A+C);
  vertex(pE.x-B, pE.y+A+C);
  vertex(pF.x-B, pF.y+A+C);
  vertex(pC.x-B, pC.y+A+C);
  vertex(pD.x-B, pD.y+A+C);
  vertex(pG.x-B, pG.y+A+C);
  vertex(pF.x-B, pF.y+A+C);
  endShape();
  
  beginShape();
  vertex(pB.x+B, pB.y-A-C);
  vertex(pA.x+B, pA.y-A-C);
  vertex(pD.x+B, pD.y-A-C);
  vertex(pC.x+B, pC.y-A-C);
  vertex(pB.x+B, pB.y-A-C);
  vertex(pB.x+B, pB.y-A-C);
  vertex(pE.x+B, pE.y-A-C);
  vertex(pF.x+B, pF.y-A-C);
  vertex(pC.x+B, pC.y-A-C);
  vertex(pD.x+B, pD.y-A-C);
  vertex(pG.x+B, pG.y-A-C);
  vertex(pF.x+B, pF.y-A-C);
  endShape();
  
  beginShape();
  vertex(pB.x-B, pB.y-A-C);
  vertex(pA.x-B, pA.y-A-C);
  vertex(pD.x-B, pD.y-A-C);
  vertex(pC.x-B, pC.y-A-C);
  vertex(pB.x-B, pB.y-A-C);
  vertex(pB.x-B, pB.y-A-C);
  vertex(pE.x-B, pE.y-A-C);
  vertex(pF.x-B, pF.y-A-C);
  vertex(pC.x-B, pC.y-A-C);
  vertex(pD.x-B, pD.y-A-C);
  vertex(pG.x-B, pG.y-A-C);
  vertex(pF.x-B, pF.y-A-C);
  endShape();
      }
    }
  }

}
