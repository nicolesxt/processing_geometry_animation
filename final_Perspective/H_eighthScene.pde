

class eighthScene{
  float var1 = a*2/3;
  PVector var2 = new PVector(a/3,a/sqrt(3));
  eighthScene(){
  //positions
  x = width/2+2*a/3;
  y = height/2;
  //size
  a = 70;
  me = a/sqrt(3);
  
  //penrose triangle
  aa = new PVector(-a*8/3, a/sqrt(3)+me);
  dd = new PVector(a*8/3, a/sqrt(3)+me);
  ff = new PVector(-a*7/3, 2*a/sqrt(3)+me);
  ee = new PVector(a*7/3, 2*a/sqrt(3)+me);
  bb = new PVector(-a/3, -2*a*sqrt(3)+me);
  cc = new PVector(a/3, -2*a*sqrt(3)+me);
  a1 = new PVector(-a/3, -(4*a/sqrt(3))+me);
  a2 = new PVector(0, -sqrt(3)*a+me);
  a3 = new PVector(5*a/3, 0+me);
  a4 = new PVector(a, 0+me);
  a5 = new PVector(-4*a/3, a/sqrt(3)+me);
  a6 = new PVector(-a,0+me);
  }
  void update(){
    
  //primary shape
  noFill();
  primaryShape1();
  primaryShape2();
  primaryShape3();
  }
  
  void cutLine(){
    if (var1 > 0){
      var1 -=0.03*a*2/3;
    }
    if (var2.x > 0){
      var2.x-=0.03*a/3;
    }
    if (var2.y > 0){
      var2.y-=0.03*a/sqrt(3);
    }
  //on part 2
  pushMatrix();
  translate(x+2*a/3,y);
  beginShape();
  line(bb.x + a/3, bb.y + a*sqrt(3)/3,bb.x + a/3 + var1, bb.y +a*sqrt(3)/3);
  line(bb.x + 2*a/3, bb.y + 2*a*sqrt(3)/3,bb.x + 2*a/3 + var1, bb.y +2*a*sqrt(3)/3);
  line(bb.x + 3*a/3, bb.y + 3*a*sqrt(3)/3,bb.x + 3*a/3 + var1, bb.y +3*a*sqrt(3)/3);
  line(bb.x + 4*a/3, bb.y + 4*a*sqrt(3)/3,bb.x + 4*a/3 + var1, bb.y +4*a*sqrt(3)/3);
  line(bb.x + 5*a/3, bb.y + 5*a*sqrt(3)/3,bb.x + 5*a/3 + var1, bb.y +5*a*sqrt(3)/3);
  line(bb.x + 6*a/3, bb.y + 6*a*sqrt(3)/3,bb.x + 6*a/3 + var1, bb.y +6*a*sqrt(3)/3);
  endShape();
  popMatrix();
  
  pushMatrix();
  translate(x+2*a/3,y);
  beginShape();
  line(a3.x, a3.y,a3.x+var2.x,a3.y+var2.y);
  line(a3.x-2*a/3, a3.y,a3.x+var2.x-2*a/3,a3.y+var2.y);
  line(a3.x-4*a/3, a3.y,a3.x+var2.x-4*a/3,a3.y+var2.y);
  line(a3.x-6*a/3, a3.y,a3.x+var2.x-6*a/3,a3.y+var2.y);
  line(a3.x-8*a/3, a3.y,a3.x+var2.x-8*a/3,a3.y+var2.y);
  endShape();
  popMatrix();
  
  //on part 3
  pushMatrix();
  translate(x+2*a/3,y);
  beginShape();
  line(dd.x-2*a/3, dd.y, dd.x-2*a/3-var2.x, dd.y+var2.y);
  line(dd.x-4*a/3, dd.y, dd.x-4*a/3-var2.x, dd.y+var2.y);
  line(dd.x-6*a/3, dd.y, dd.x-6*a/3-var2.x, dd.y+var2.y);
  line(dd.x-8*a/3, dd.y, dd.x-8*a/3-var2.x, dd.y+var2.y);
  line(dd.x-10*a/3, dd.y, dd.x-10*a/3-var2.x, dd.y+var2.y);
  line(dd.x-12*a/3, dd.y, dd.x-12*a/3-var2.x, dd.y+var2.y);
  endShape();
  popMatrix();
  
  pushMatrix();
  translate(x+2*a/3,y);
  beginShape();
  line(a2.x, a2.y, a2.x - var1, a2.y);
  line(a2.x-a/3, a2.y+a/sqrt(3), a2.x - var1-a/3, a2.y+a/sqrt(3));
  line(a2.x-2*a/3, a2.y+2*a/sqrt(3), a2.x - var1-2*a/3, a2.y+2*a/sqrt(3));
  line(a2.x-3*a/3, a2.y+3*a/sqrt(3), a2.x - var1-3*a/3, a2.y+3*a/sqrt(3));
  line(a2.x-4*a/3, a2.y+4*a/sqrt(3), a2.x - var1-4*a/3, a2.y+4*a/sqrt(3));
  line(a2.x-5*a/3, a2.y+5*a/sqrt(3), a2.x - var1-5*a/3, a2.y+5*a/sqrt(3));
  endShape();
  popMatrix();
  
  //on part 1
  pushMatrix();
  translate(x+2*a/3,y);
  beginShape();
  line(a1.x, a1.y, a1.x-var2.x, a1.y-var2.y);
  line(a1.x-a/3, a1.y+a/sqrt(3), a1.x-var2.x-a/3, a1.y-var2.y+a/sqrt(3));
  line(a1.x-2*a/3, a1.y+2*a/sqrt(3), a1.x-var2.x-2*a/3, a1.y-var2.y+2*a/sqrt(3));
  line(a1.x-3*a/3, a1.y+3*a/sqrt(3), a1.x-var2.x-3*a/3, a1.y-var2.y+3*a/sqrt(3));
  line(a1.x-4*a/3, a1.y+4*a/sqrt(3), a1.x-var2.x-4*a/3, a1.y-var2.y+4*a/sqrt(3));
  line(a1.x-5*a/3, a1.y+5*a/sqrt(3), a1.x-var2.x-5*a/3, a1.y-var2.y+5*a/sqrt(3));
  endShape();
  popMatrix();
  
  pushMatrix();
  translate(x+2*a/3,y);
  beginShape();
  line(a1.x, a1.y, a1.x+var2.x, a1.y-var2.y);
  line(a1.x+a/3, a1.y+a/sqrt(3), a1.x+var2.x+a/3, a1.y-var2.y+a/sqrt(3));
  line(a1.x+2*a/3, a1.y+2*a/sqrt(3), a1.x+var2.x+2*a/3, a1.y-var2.y+2*a/sqrt(3));
  line(a1.x+3*a/3, a1.y+3*a/sqrt(3), a1.x+var2.x+3*a/3, a1.y-var2.y+3*a/sqrt(3));
  line(a1.x+4*a/3, a1.y+4*a/sqrt(3), a1.x+var2.x+4*a/3, a1.y-var2.y+4*a/sqrt(3));
  endShape();
  popMatrix();
  }
  
}
//blue one
void primaryShape1(){
  noFill();
  stroke(255);
  //part1
  //fill(#0017FF);
  pushMatrix();
  translate(x+2*a/3,y);
  beginShape();
  vertex(aa.x, aa.y);
  vertex(bb.x, bb.y);
  vertex(a3.x, a3.y);
  vertex(a4.x, a4.y);
  vertex(a1.x, a1.y);
  vertex(ff.x, ff.y);
  vertex(aa.x, aa.y);
  endShape();
  popMatrix();
}

//red one
void primaryShape2(){
  //part2
  //fill(#FF0000);
  noFill();
  pushMatrix();
  translate(x+2*a/3,y);
  beginShape();
  vertex(cc.x, cc.y);
  vertex(dd.x, dd.y);
  vertex(a5.x, a5.y);
  vertex(a6.x, a6.y);
  vertex(a3.x, a3.y);
  vertex(bb.x, bb.y);
  vertex(cc.x, cc.y);
  endShape();
  popMatrix();
}

//yellow one
void primaryShape3(){
  //part3
  //fill(#FFF700);
  noFill();
  pushMatrix();
  translate(x+2*a/3,y);
  beginShape();
  vertex(ee.x, ee.y);
  vertex(ff.x, ff.y);
  vertex(a1.x, a1.y);
  vertex(a2.x, a2.y);
  vertex(a5.x, a5.y);
  vertex(dd.x, dd.y);
  vertex(ee.x, ee.y);
  endShape();
  popMatrix();
}
