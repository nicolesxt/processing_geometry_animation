class fourthScene{
  
//slide1
PVector aaa1;
PVector aaa2;
PVector aaa3;
PVector aaa4;
PVector aaa5;
PVector aaa6;

//slide2
PVector aaa01;
PVector aaa02;
PVector aaa03;
PVector aaa04;
PVector aaa05;
PVector aaa06;

//slide3
PVector aaa001;
PVector aaa002;
PVector aaa003;
PVector aaa004;
PVector aaa005;
PVector aaa006;

//MOVEMENT
float speed;
float b;
PVector top;
PVector leftBottom;
PVector sideLength;
PVector rightBottom;
float bottomLength;




  fourthScene(){
  //positions
  x = width/2-2*a/3;
  y = height/2;
  //size
  a = 70;
  me = a/sqrt(3);
  
  //1st slide of boxes
  aaa1 = new PVector(-a*8/3, a/sqrt(3)+me);
  aaa2 = new PVector(-a*8/3+a/3, a/sqrt(3)+me-a/sqrt(3));
  aaa3 = new PVector(-a*8/3+2*a/3, a/sqrt(3)+me-2*a/sqrt(3));
  aaa4 = new PVector(-a*8/3+3*a/3, a/sqrt(3)+me-3*a/sqrt(3));
  aaa5 = new PVector(-a*8/3+4*a/3, a/sqrt(3)+me-4*a/sqrt(3));
  aaa6 = new PVector(-a*8/3+5*a/3, a/sqrt(3)+me-5*a/sqrt(3));
  
  //2nd slide of boxes
  aaa01 = new PVector(-a/3-a/3, -2*a*sqrt(3)+me+a/sqrt(3));
  aaa02 = new PVector(-a/3, -2*a*sqrt(3)+me+2*a/sqrt(3));
  aaa03 = new PVector(-a/3+1*a/3, -2*a*sqrt(3)+me+3*a/sqrt(3));
  aaa04 = new PVector(-a/3+2*a/3, -2*a*sqrt(3)+me+4*a/sqrt(3));
  aaa05 = new PVector(-a/3+3*a/3, -2*a*sqrt(3)+me+5*a/sqrt(3));
  aaa06 = new PVector(-a/3+4*a/3, -2*a*sqrt(3)+me+6*a/sqrt(3));
  
  //3rd slide of boxes
  aaa001 = new PVector(5*a/3-a/3, 0+me+a/sqrt(3));
  aaa002 = new PVector(5*a/3-a/3-2*a/3, 0+me+a/sqrt(3));
  aaa003 = new PVector(5*a/3-a/3-4*a/3, 0+me+a/sqrt(3));
  aaa004 = new PVector(5*a/3-a/3-6*a/3, 0+me+a/sqrt(3));
  aaa005 = new PVector(5*a/3-a/3-8*a/3, 0+me+a/sqrt(3));
  aaa006 = new PVector(5*a/3-a/3-10*a/3, 0+me+a/sqrt(3));
  
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
  
  //velocity of the movement
  speed = 1;
  //secondary position
  //distance travelled
  b = a*2/3;
  //position parameters
  leftBottom = new PVector((-a*8/3)-b*sqrt(3), a/sqrt(3)+me+b);
  sideLength = new PVector(b*sqrt(3)+2*a, 3*b+6*a/sqrt(3));
  top = new PVector(leftBottom.x + sideLength.x, leftBottom.y - sideLength.y);
  rightBottom = new PVector(top.x+sideLength.x, top.y+sideLength.y );
  bottomLength = rightBottom.x-leftBottom.x;
  
  
  }
  
  void update(){
    pushMatrix();
    translate(x,y);
    fill(0);
    stroke(255);
    problemCube();
    CubeSlide1();
    CubeSlide2();
    CubeSlide3();
    movementLogic1();
    movementLogic2();
    movementLogic3();
    popMatrix();
  }
  
  //movement
  void movementLogic1(){
    /////////cube1
    if(aaa1.x>leftBottom.x){
    aaa1.x -= speed;
    }
    if(aaa1.y<leftBottom.y){
    aaa1.y += speed;
    }
    /////////cube2
    if(aaa2.x>leftBottom.x+sideLength.x/6){
    aaa2.x -= speed;
    }
    if(aaa2.y<leftBottom.y-sideLength.y/6){
    aaa2.y += speed;
    }
    /////////cube3
    if(aaa3.x>leftBottom.x+sideLength.x*2/6){
    aaa3.x -= speed;
    }
    if(aaa3.y<leftBottom.y-sideLength.y*2/6){
    aaa3.y += speed;
    }
    /////////cube4    
    if(aaa4.x>leftBottom.x+sideLength.x*3/6){
    aaa4.x -= speed;
    }
    if(aaa4.y>leftBottom.y-sideLength.y*3/6){
    aaa4.y -= speed;
    }
    /////////cube5
    if(aaa5.x>leftBottom.x+sideLength.x*4/6){
    aaa5.x -= speed;
    }
    if(aaa5.y>leftBottom.y-sideLength.y*4/6){
    aaa5.y -= speed;
    }
    /////////cube6
    if(aaa6.x>leftBottom.x+sideLength.x*5/6){
    aaa6.x -= speed;
    }
    if(aaa6.y>leftBottom.y-sideLength.y*5/6){
    aaa6.y -= speed;
    }
  }
  
  void movementLogic2(){
    /////////cube1
    if(aaa01.x>top.x){
    aaa01.x -= speed;
    }
    if(aaa01.y>top.y){
    aaa01.y -= speed;
    }
    /////////cube2
    if(aaa02.x<top.x+sideLength.x*1/6){
    aaa02.x += speed;
    }
    if(aaa02.y>top.y+sideLength.y*1/6){
    aaa02.y -= speed;
    }
    /////////cube3
    if(aaa03.x<top.x+sideLength.x*2/6){
    aaa03.x += speed;
    }
    if(aaa03.y>top.y+sideLength.y*2/6){
    aaa03.y -= speed;
    }
    /////////cube4
    if(aaa04.x<top.x+sideLength.x*3/6){
    aaa04.x += speed;
    }
    if(aaa04.y>top.y+sideLength.y*3/6){
    aaa04.y -= speed;
    }
    /////////cube2
    if(aaa05.x<top.x+sideLength.x*4/6){
    aaa05.x += speed;
    }
    if(aaa05.y>top.y+sideLength.y*4/6){
    aaa05.y -= speed;
    }
    /////////cube2
    if(aaa06.x<top.x+sideLength.x*5/6){
    aaa06.x += speed;
    }
    if(aaa06.y<top.y+sideLength.y*5/6){
    aaa06.y += speed;
    }
  }
  
  void movementLogic3(){
    /////////cube1
    if(aaa001.x<rightBottom.x){
    aaa001.x += speed*sqrt(3);
    }
    if(aaa001.y<rightBottom.y){
    aaa001.y += speed;
    }
    /////////cube2
    if(aaa002.x<rightBottom.x-bottomLength*1/6){
    aaa002.x += speed;
    }
    if(aaa002.y<rightBottom.y){
    aaa002.y += speed;
    }
    /////////cube3
    if(aaa003.x<rightBottom.x-bottomLength*2/6){
    aaa003.x += speed;
    }
    if(aaa003.y<rightBottom.y){
    aaa003.y += speed;
    }
    /////////cube4
    if(aaa004.x<rightBottom.x-bottomLength*3/6){
    aaa004.x += speed;
    }
    if(aaa004.y<rightBottom.y){
    aaa004.y += speed;
    }
    /////////cube5
    if(aaa005.x>rightBottom.x-bottomLength*4/6){
    aaa005.x -= speed;
    }
    if(aaa005.y<rightBottom.y){
    aaa005.y += speed;
    }
    /////////cube6
    if(aaa006.x>rightBottom.x-bottomLength*5/6){
    aaa006.x -= speed;
    }
    if(aaa006.y<rightBottom.y){
    aaa006.y += speed;
    }
  }

  ////////////////////////the problem cube (at left bottom)
  void problemCube(){
  ////////////cube6 (from side 3)
  pushMatrix();
  translate(aaa006.x, aaa006.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  }
  
  
  
  ////////////////////////////////first slide
  void CubeSlide1(){  
  
  pushMatrix();
  translate(aaa1.x, aaa1.y);
  
  ///////////cube1
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);
  
  popMatrix();
  
  ////////////cube2
  pushMatrix();
  translate(aaa2.x, aaa2.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube3
  pushMatrix();
  translate(aaa3.x, aaa3.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube4
  pushMatrix();
  translate(aaa4.x, aaa4.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube5
  pushMatrix();
  translate(aaa5.x, aaa5.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube6
  pushMatrix();
  translate(aaa6.x, aaa6.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  }
  
  ////////////////////////////////second slide
  void CubeSlide2(){  
  
  pushMatrix();
  translate(aaa01.x, aaa01.y);
  
  ///////////cube1
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);
  
  popMatrix();
  
  ////////////cube2
  pushMatrix();
  translate(aaa02.x, aaa02.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube3
  pushMatrix();
  translate(aaa03.x, aaa03.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube4
  pushMatrix();
  translate(aaa04.x, aaa04.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube5
  pushMatrix();
  translate(aaa05.x, aaa05.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube6
  pushMatrix();
  translate(aaa06.x, aaa06.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  }
  
  ////////////////////////////////third slide
  void CubeSlide3(){  
  
  pushMatrix();
  translate(aaa001.x, aaa001.y);
  
  ///////////cube1
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);
  
  popMatrix();
  
  ////////////cube2
  pushMatrix();
  translate(aaa002.x, aaa002.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube3
  pushMatrix();
  translate(aaa003.x, aaa003.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube4
  pushMatrix();
  translate(aaa004.x, aaa004.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube5
  pushMatrix();
  translate(aaa005.x, aaa005.y);
  
  //side1
  beginShape();
  vertex(0,0);
  vertex(a/3, a/sqrt(3));
  vertex(2*a/3,0);
  vertex(a/3,-a/sqrt(3));
  vertex(0,0);
  endShape(CLOSE);
  
  //side2
  beginShape();
  vertex(a/3, a/sqrt(3));
  vertex(a/3+2*a/3, a/sqrt(3));
  vertex(a/3+3*a/3, 0);
  vertex(2*a/3,0);
  endShape(CLOSE);
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, -a/sqrt(3));
  vertex(a/3, -a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  ////////////cube6*----------->the Most Important!!!
  pushMatrix();
  translate(aaa006.x, aaa006.y);
  
  //side2
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3, 0);
  vertex(3*a/3,-a/sqrt(3));
  endShape();
  
  //side3
  beginShape();
  vertex(2*a/3, 0);
  vertex(4*a/3,0);
  vertex(3*a/3, a/sqrt(3));
  vertex(1*a/3, a/sqrt(3));
  endShape(CLOSE);

  popMatrix();
  
  }
}
