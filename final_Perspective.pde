import ddf.minim.*;

AudioPlayer player;
Minim minim;

firstScene scene001;
thirdScene scene003;
fourthScene scene004;
fifthScene scene005;
sixthScene scene006;
seventhScene scene007;
eighthScene scene008;
ninthScene scene009;
matrixx Matrixx;

//position parameter
float x;
float y;
//size parameter
float a;
float me;
//position points used in the first 4 scenes
PVector aa,bb,cc,dd,ee,ff,a1,a2,a3,a4,a5,a6;

float fadeOut;


void setup(){
  size(620,600);
  scene001 = new firstScene();
  scene003 = new thirdScene();
  scene004 = new fourthScene();
  scene005 = new fifthScene();
  scene006 = new sixthScene();
  scene007 = new seventhScene();
  scene008 = new eighthScene();
  scene009 = new ninthScene();
  Matrixx = new matrixx();
  //
  fadeOut = 255;
  
  minim = new Minim(this);
  player = minim.loadFile("Monument.mp3", 2048);
  player.play();
  
}

void draw(){
  smooth();
  background(0);
  fill(0);
  stroke(255);
  switchSystem();
}

void switchSystem(){
  println(millis());
  //credit to the Github collaboration with Marco & Kate & Kim for the millis system
  if (millis()<7000){
    scene001.update();
    println("001");
  }
  else if(millis()>7000 && millis()<8000){
    scene003.update();
    scene003.cutLine();
    println("003");
  }else if (millis()>8000 && millis()<9900){ 
    scene004.update();
    println("004");
  }else if (millis()<17000 && millis()>9900){
    scene005.update();
    println("005");
  }else if (millis()>17000 && millis()<25000){
    scene006.update();
    println("006");
  }else if (millis()>25000 && millis()<27300){
    Matrixx.update(fadeOut);
    println("007");
    if(fadeOut>0){ fadeOut-=5;}
    scene007.update();
    scene007.movement();
    println("007");
  }else if(millis()>27300 && millis()<28300){
    scene008.update();
    scene008.cutLine();
    println("008");
  }else if(millis()>28300 && millis()<35000){
    scene009.update();
    println("009");
  }
}
