class fifthScene{
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

//POSITION
float b;
PVector Left;
PVector Right;
PVector Top;
float speeed;
float specialSpeed; //speed for those who move insanely slow
//increment for two sides

float exPansion;
float newA;
//for the last cube to be a little bit larger
//in the last few seconds
PVector increment1;
//increment for bottom
float increment2;

//adjustment
float save;

  fifthScene(){
  //positions
  x = width/2-2*a/3;
  y = height/2;
  //size
  a = 70;
  me = a/sqrt(3);
  
  //moving
  speeed = 0.18;
  // speeed need to be small so the cube would be moved to the exact (0,0)spot
  //there will be a gap between each final position of the cube if the speed number is larger than 1.
  specialSpeed = 0.8;
  
  exPansion = 0.12;
  newA = 70;
  
  //secondary position
  b = a*2/3;
  Left = new PVector((-a*8/3)-b*sqrt(3), a/sqrt(3)+me+b);
  Right = new PVector(4*a/3+b*sqrt(3), a/sqrt(3)+me+b);
  Top = new PVector(-2*a/3, -5*a/sqrt(3)-2*b+me);
  increment1 = new PVector(2*a+sqrt(3)*b, 2*sqrt(3)*a+3*b);
  increment2 = 4*a+2*sqrt(3)*b;
  
  //side1
  aaa1 = new PVector(Left.x, Left.y);
  aaa2 = new PVector(Left.x+increment1.x*1/6, Left.y-increment1.y*1/6);
  aaa3 = new PVector(Left.x+increment1.x*2/6, Left.y-increment1.y*2/6);
  aaa4 = new PVector(Left.x+increment1.x*3/6, Left.y-increment1.y*3/6);
  aaa5 = new PVector(Left.x+increment1.x*4/6, Left.y-increment1.y*4/6);
  aaa6 = new PVector(Left.x+increment1.x*5/6, Left.y-increment1.y*5/6);
  
  //side2
  aaa01 = new PVector(Top.x, Top.y);
  aaa02 = new PVector(Top.x+increment1.x*1/6, Top.y+increment1.y*1/6);
  aaa03 = new PVector(Top.x+increment1.x*2/6, Top.y+increment1.y*2/6);
  aaa04 = new PVector(Top.x+increment1.x*3/6, Top.y+increment1.y*3/6);
  aaa05 = new PVector(Top.x+increment1.x*4/6, Top.y+increment1.y*4/6);
  aaa06 = new PVector(Top.x+increment1.x*5/6, Top.y+increment1.y*5/6);
  
  //side3
  aaa001 = new PVector(Right.x, Right.y);
  aaa002 = new PVector(Right.x-increment2*1/6, Right.y);
  aaa003 = new PVector(Right.x-increment2*2/6, Right.y);
  aaa004 = new PVector(Right.x-increment2*3/6, Right.y);
  aaa005 = new PVector(Right.x-increment2*4/6, Right.y);
  aaa006 = new PVector(Right.x-increment2*5/6, Right.y);
  
  //adjustment
  save = 0.0;
  }
  
  void update(){
    pushMatrix();
    translate(x-save,y);
    fill(0);
    stroke(255);
    //the whole moving system is drawn here:
    rotationMove();
    //the one that is misleading
    problemCube();
    popMatrix();
  }
  
  //////////move to the center
  void rotationMove(){
  // the MOST IMPORTANT CUBE
  if (aaa006.x<-a || aaa006.y>0){
    aaa006.x += speeed*3;
    aaa006.y -= speeed*abs(aaa006.y/aaa006.x)*3;
  }else{
    if(save<2*a/3){
      save++;
    }
  }
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
//----------------------------------------------------------LEFT SLIDE
/////cube1
  if(aaa1.x<-a || aaa1.y>0){
      aaa1.x += speeed*6;
      aaa1.y -= speeed*abs(aaa1.y/aaa1.x)*4;
  pushMatrix();
  translate(aaa1.x, aaa1.y);
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
/////cube2
    if(aaa2.x<-a || aaa2.y>0){
      aaa2.x += speeed*5;
      aaa2.y -= speeed*abs(aaa2.y/aaa2.x)*10;
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
  }
/////cube3
    if(aaa3.x<-a || aaa3.y>0){
      aaa3.x += speeed*6;
      aaa3.y -= speeed*abs(aaa3.y/aaa3.x)*10;
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
    }
/////cube4
    if(aaa4.x<-a || aaa4.y<0){
      aaa4.x += speeed*5;
      aaa4.y += speeed*abs(aaa4.y/aaa4.x)*5;
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
    }
//////cube5
    if(aaa5.x<-a || aaa5.y<0){
      aaa5.x += speeed*5;
      aaa5.y += speeed*abs(aaa5.y/aaa5.x)*5;
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
    }
//////cube6
    if(aaa6.x<-a || aaa6.y<0){
      aaa6.x += specialSpeed;
      aaa6.y += specialSpeed*abs(aaa6.y/aaa6.x);
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


//----------------------------------------------------------RIGHT SLIDE
/////cube1
  if(aaa01.x<-a|| aaa01.y<0){
      aaa01.x += specialSpeed/4;
      aaa01.y += specialSpeed*abs(aaa01.y/aaa01.x)/4;
  pushMatrix();
  translate(aaa01.x, aaa01.y);
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
/////cube2
    if( aaa02.y<0){
      aaa02.x += speeed/3;
      aaa02.y += speeed*abs(aaa02.y/aaa02.x)/3;
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
  }
/////cube3
    if(aaa03.x>0 || aaa03.y<0){
      aaa03.x -= speeed;
      aaa03.y += speeed*abs(aaa03.y/aaa03.x);
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
    }
/////cube4
    if(aaa04.x>0 || aaa04.y<0){
      aaa04.x -= speeed*2.5;
      aaa04.y += speeed*abs(aaa04.y/aaa04.x)*2.5;
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
    }
//////cube5
    if(aaa05.x>0 || aaa05.y>0){
      aaa05.x -= speeed*3;
      aaa05.y -= speeed*abs(aaa05.y/aaa05.x)*3;
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
    }
///////////////////cube6
    if(aaa06.x>0 || aaa06.y>0){
      aaa06.x -= speeed*4;
      aaa06.y -= speeed*abs(aaa06.y/aaa06.x)*4;
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
    
    
//----------------------------------------------------------BOTTOM SIDE
  ///////////cube1
  if (aaa001.x>0 || aaa001.y>0){
    aaa001.x -= speeed*3;
    aaa001.y -= speeed*abs(aaa001.y/aaa001.x)*3;
  pushMatrix();
  translate(aaa001.x, aaa001.y);
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
  ////////////cube2
  if (aaa002.x>0 || aaa002.y>0){
    aaa002.x -= speeed*2;
    aaa002.y -= speeed*abs(aaa002.y/aaa002.x)*2;
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
  }
  ////////////cube3
  if (aaa003.x>0 || aaa003.y>0){
    aaa003.x -= speeed;
    aaa003.y -= speeed*abs(aaa003.y/aaa003.x);
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
  }
  ////////////cube4
  if (aaa004.x<0 || aaa004.y>0){
    aaa004.x += speeed*3;
    aaa004.y -= speeed*abs(aaa004.y/aaa004.x)*3;
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
  }
  ////////////cube5
  if (aaa005.x<0 || aaa005.y>0){
    aaa005.x += speeed*4;
    aaa005.y -= speeed*abs(aaa005.y/aaa005.x)*4;
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
  }
  }
  
  ////////////////////////the problem cube (at left bottom)
  void problemCube(){
  ////////////cube6 (from side 3)
  //-----the other side of the cube disappear when the x position is larger than a certain amount
  if(aaa006.x<-165){
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
}
