class seventhScene{
  PVector blue1a, pink1a, green1a;
  //cubes who stay
  PVector stay1, stay2, stay3, stay4, stay5, stay6;
  //cubes who are moving 2 blocks
  PVector move2a, move2b, move2c, move2d;
  //cubes who are moving 1 block
  PVector move1a, move1b, move1c, move1d, move1e;
  //transparency
  float trs;
  float specialTrs;
  
  float ah, av;
  
  boolean switch1, switch2, switch3, switch4, switch5;
  
  PVector sq1, sq2, sq3, sq4;
  
  //outer layer1
  PVector pink1;
  //layer2
  PVector blu1,blu2,blu3,blu4,blu5,blu6,blu7,blu8,blu9,blu10,blu11,blu12;
  
  
  seventhScene(){
  a = 70;
  x = width/2;
  y = height/2;
  
  ah = a/3;
  av = a/sqrt(3);
  
  trs = 255;
  specialTrs = 0;
  
  
  
    blue1a = new PVector(-2*ah,0);
    pink1a = new PVector(ah, -av);
    green1a = new PVector(ah, av);
  stay1 = new PVector(-2*ah, 2*av);
  stay2 = new PVector(4*ah, 2*av);
  stay3 = new PVector(4*ah, 0);
  stay4 = new PVector(ah, -3*av);
  stay5 = new PVector(-2*ah, -2*av);
  stay6 = new PVector(-5*ah, av);
    move2a = new PVector(-2*ah, 4*av);
    move2b = new PVector(7*ah, -av);
    move2c = new PVector(-2*ah, -6*av);
    move2d = new PVector(-8*ah, 4*av);
  move1a = new PVector(-5*ah, 3*av);
  move1b = new PVector(7*ah, 3*av);
  move1c = new PVector(7*ah, av);
  move1d = new PVector(-2*ah, -4*av);
  move1e = new PVector(-5*ah, -av);
  
    //top 4 points of a single square
  sq1 = new PVector(-ah, -av);
  sq2 = new PVector(ah, -av);
  sq3 = new PVector(0,0);
  sq4 = new PVector(2*ah, 0);
    pink1 = new PVector(13*ah, -7*av);
    blu1 = new PVector(4*ah, -8*av);
    blu2 = new PVector(7*ah, -7*av);
    blu3 = new PVector(10*ah, -6*av);
    blu4 = new PVector(13*ah, -5*av);
  }
  
  void update(){
    pushMatrix();
    translate(x+2*ah,y);
    //movement();
    cubes();
    specialCube();
    popMatrix();
    //
    microMovingSystem();
  }
  
  void movement(){
    if(blue1a.x>-a){
      blue1a.x -=(ah)/40;
    }
    if(blue1a.y>-av){
      blue1a.y -=(av)/40;
    }
    
    if(pink1a.x<2*ah){
      pink1a.x +=(ah)/40;
    }
    if(pink1a.y>-2*av){
      pink1a.y -=(av)/40;
    }
    
    if(green1a.x<2*ah){
      green1a.x +=(ah)/40;
    }
    if(green1a.y<2*av){
      green1a.y +=(av)/40;
    }
    //0,01 help adjust the merge
    if(move2c.x<0-0.01){
      move2c.x+=(ah)/35;
    }
    if(move2c.y<-4*av-0.01){
      move2c.y+=(av)/35;
    }
    if(move2b.x>3*ah+0.35){
      move2b.x--;
    }
    if(move2a.x<0-0.1){
      move2a.x+=(ah)/40;
    }
    if(move2a.y>2*av+0.1){
      move2a.y-=(av)/40;
    }
    //
    if(move1a.x<-4*ah){
      move1a.x+=ah/35;
    }
    if(move1a.y>2*av){
      move1a.y-=av/35;
    }
    //
    if(move1b.x>6*ah){
      move1b.x-=ah/35;
    }
    if(move1b.y>2*av){
      move1b.y-=av/35;
    }
    //
    if(move1c.x>5*ah){
      move1c.x-=ah/35;
    }
    //
    if(move1d.x<-ah){
      move1d.x+=ah/35;
    }
    if(move1d.y<-3*av){
      move1d.y+=av/35;
    }
    //
    if(move1e.x<-4*ah){
      move1e.x+=ah/35;
    }
    if(move1e.y<0){
      move1e.y+=av/35;
    }
    //
    if(move2d.x<-6*ah){
      move2d.x+=ah/45;
    }
    if(move2d.y>2*av){
      move2d.y-=av/45;
    }
  }
 
  void cubes(){
    singleCube(stay6,trs);
    singleCube(move1e,trs);
    singleCube(blue1a,trs);
    singleCube(stay5,trs);
    singleCube(move1d,trs);
    singleCube(move2c,trs);
    singleCube(stay4,trs);
    singleCube(pink1a,trs);
    singleCube(move2b,trs);
    singleCube(stay3,trs);
    singleCube(move1c,trs);
    singleCube(move1b,trs);
    singleCube(stay2,trs);
    singleCube(green1a,trs);
    singleCube(move2a,trs);
    singleCube(stay1,trs);
    singleCube(move1a,trs);
    singleCube(move2d,trs);
  }
  
  void singleCube(PVector neww, float trs){
      pushMatrix();
      translate(neww.x, neww.y);
    fill(0,trs);
    stroke(255);
    //a
    pushMatrix();
    beginShape();
    vertex(-2*ah,0);
    vertex(-ah,-av);
    vertex(0,0);
    vertex(-ah,av);
    endShape(CLOSE);
    popMatrix();
    //b
    pushMatrix();
    beginShape();
    rotate(TWO_PI/3);
    vertex(-2*ah,0);
    vertex(-ah,-av);
    vertex(0,0);
    vertex(-ah,av);
    endShape(CLOSE);
    popMatrix();
    //c
    pushMatrix();
    beginShape();
    rotate(-TWO_PI/3);
    vertex(-2*ah,0);
    vertex(-ah,-av);
    vertex(0,0);
    vertex(-ah,av);
    endShape(CLOSE);
    popMatrix();
      popMatrix();
  }
  
void Cube(PVector neww, float trs, boolean OnOff){
  if(OnOff){
      pushMatrix();
      translate(neww.x, neww.y);
    fill(0,trs);
    stroke(255);
    //a
    beginShape();
    vertex(-2*ah,0);
    vertex(sq1.x, sq1.y);
    vertex(sq3.x, sq3.y);
    vertex(-ah,av);
    endShape(CLOSE);
    //b
    beginShape();
    vertex(sq1.x, sq1.y);
    vertex(sq3.x, sq3.y);
    vertex(sq4.x, sq4.y);
    vertex(sq2.x, sq2.y);
    endShape(CLOSE);
    //c
    beginShape();
    vertex(-ah, av);
    vertex(sq3.x, sq3.y);
    vertex(sq4.x, sq4.y);
    vertex(ah, av);
    endShape(CLOSE);
      popMatrix();
  }else{
      pushMatrix();
      translate(neww.x, neww.y);
    fill(0,trs);
    stroke(255);
    //a
    beginShape();
    vertex(-2*ah,0);
    vertex(-ah, -av);
    vertex(0,0);
    vertex(-ah,av);
    endShape(CLOSE);
    //b
    beginShape();
    vertex(-ah, -av);
    vertex(0,0);
    vertex(2*ah, 0);
    vertex(ah, -av);
    endShape(CLOSE);
    //c
    beginShape();
    vertex(-ah, av);
    vertex(0,0);
    vertex(2*ah, 0);
    vertex(ah, av);
    endShape(CLOSE);
      popMatrix();
  }
  }
  
  void specialCube(){
    if(specialTrs<255){
      specialTrs+=5;
    }
      pushMatrix();
      translate(-5*ah,av);
    fill(0,specialTrs);
    stroke(255);
    beginShape();
    vertex(-2*ah,0);
    vertex(-ah,-av);
    vertex(0,0);
    vertex(-ah,av);
    endShape(CLOSE);
    beginShape();
    vertex(0,0);
    vertex(-ah,av);
    vertex(ah, av);
    vertex(2*ah, 0);
    endShape(OPEN);
      popMatrix();
  }
  
void microMovingSystem(){
  if(sq1.x>-2*ah){
    sq1.x -=ah/35;
  }
  if(sq1.y<0){
    sq1.y+=av/35;
  }
  //
  if(sq2.x>0){
    sq2.x-=ah/35;
  }
  if(sq2.y<0){
    sq2.y+=av/35;
  }
  //
  if(sq3.x>-ah){
    sq3.x-=ah/35;
  }
  if(sq3.y<av){
    sq3.y+=av/35;
  }
  //
  if(sq4.x>ah){
    sq4.x-=ah/35;
  }
  if(sq4.y<av){
    sq4.y+=av/35;
  }
}
  
}
