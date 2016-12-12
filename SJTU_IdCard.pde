import peasy.*;

PeasyCam myCam;
Table accountTable;
Table merchantTable;
Table tradeTable;
PFont myfont, myfont2;
float canteen1,canteen2,canteen3,canteen4,canteen5,canteen6=0;
float bar1,bar2,bar3,bar4,bar5,bar6=0;
float average1,average2,average3,average4,average5,average6=0;
PImage map,button,logo,cant1,cant2,cant3,cant4,cant5,cant6,title1,title2,title3,exit,exit2;
int xloc,yloc;
int[] minutes=new int[1500];
int timestamp,syscode;
StringDict inventory;
float bachelorAmount,bachelorNum,masterAmount,phdAmount, masterNum,phdNum=0;
float[] angles = new float[5];


void setup() {
  size(1446, 1000, P3D);
  myCam = new PeasyCam(this, 0, 0, 200, 800);
  myCam.setMinimumDistance(750);
  myCam.setMaximumDistance(1000);
  background(255);
  accountTable = loadTable("account.csv", "header");
  tradeTable = loadTable("trade.csv", "header");
  myfont = createFont("Century Gothic", 12);
  myfont2 = createFont("黑体-简",12);
  button = loadImage("button2.jpg"); 
  map = loadImage("map2.jpg");
  logo = loadImage("logo1.jpg");
  title1 = loadImage("title1.jpg");
  title2 = loadImage("title2.jpg");
  title3 = loadImage("title3.jpg");
  exit= loadImage("exit.png");
  exit2= loadImage("exit2.png");
  readData();
     readData2();
     readData3();
      
}


void Button(){
  myCam.beginHUD();
  background(255);
  image(button,0,500);
  image(logo,615,170);
  noStroke();
  textAlign(CENTER, CENTER);
  textFont(myfont, 17);
  fill(105,128,102);
  text("CONSUMPTION OF CANTEENS", 293,530);
  text("CAMPUS CARD CONSUMPTION", 722,530);
  text("PEOPLE FLOW OF CANTEENS", 1152,530);
  fill(255);
  strokeWeight(2);
  stroke(105,128,102);
  rect(620,770,200,70);
  image(exit,654,777);
  
  if ((mouseY >510)&&(mouseY < 565)){
     if ((mouseX >152)&&(mouseX <432)){
            fill(105,128,102);
            noStroke();
            rect(152,510,280,55);
            textFont(myfont, 17);
            fill(255);
            text("CONSUMPTION OF CANTEENS", 293,530);
  }
  if ((mouseX >582)&&(mouseX <862)){
            fill(105,128,102);
            noStroke();
            rect(582,510,280,55);
            textFont(myfont, 17);
            fill(255);
            text("CAMPUS CARD CONSUMPTION", 722,530);
  }
  if ((mouseX >1012)&&(mouseX <1292)){
            fill(105,128,102);
            noStroke();
            rect(1012,510,280,55);
            textFont(myfont, 17);
            fill(255);
            text("PEOPLE FLOW OF CANTEENS", 1152,530);
  }
  }
    if ((mouseY >770)&&(mouseY < 840)){
     if ((mouseX >620)&&(mouseX <820)){
          fill(105,128,102);
          rect(620,770,200,70);
          image(exit2,654,777);
  }
}
  myCam.endHUD();
}



void draw(){
  Button();
  if ((yloc >510)&&(yloc <565)){
    if ((xloc >152)&&(xloc < 432)){
    myCam.beginHUD();
    Part1();
    myCam.endHUD();
    }
    if ((xloc >582)&&(xloc <862)){
     Part2();
    }
    if ((xloc >1012)&&(xloc <1292)){
     myCam.beginHUD();
     Part3();
     myCam.endHUD();
    }
  }
  if ((yloc >770)&&(yloc <840)){
    if ((xloc >620)&&(xloc < 820)){
    exit();
    }
  }
}
 void mouseClicked(){
  xloc = mouseX;
  yloc = mouseY;
}  