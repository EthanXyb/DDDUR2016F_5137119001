void readData(){
  for(int i = 0; i < tradeTable.getRowCount (); i ++) {
    TableRow row = tradeTable.getRow(i);
    int syscode = row.getInt("syscode");
    int amount = row.getInt("amount");
    if ((syscode==30)||(syscode==99)){
      canteen1+=amount;
      average1+=1;
    }
    if ((syscode==34)||(syscode==269)){
      canteen2+=amount;
      average2+=1;
    }
    if ((syscode==36)||(syscode==268)){
      canteen3+=amount;
      average3+=1;
    }
    if ((syscode==38)||(syscode==267)){
      canteen4+=amount;
      average4+=1;
    }
    if ((syscode==33)||(syscode==265)){
      canteen5+=amount;
      average5+=1;
    }
    if ((syscode==37)||(syscode==266)){
      canteen6+=amount;
      average6+=1;
    }   
  }
  bar1=map(canteen1,0,574743358,0,200);
  bar2=map(canteen2,0,574743358,0,200);
  bar3=map(canteen3,0,574743358,0,200);
  bar4=map(canteen4,0,574743358,0,200);
  bar5=map(canteen5,0,574743358,0,200);
  bar6=map(canteen6,0,574743358,0,200);
}


void Part1(){
  background(#698066);
  cant1=loadImage("canteen1.png");
  cant2=loadImage("canteen2.png");
  cant3=loadImage("canteen3.png");
  cant4=loadImage("canteen4.png");
  cant5=loadImage("canteen5.png");
  cant6=loadImage("canteen6.png");
  image(map,0,0); 
  fill(255);
  textFont(myfont,20);
  strokeWeight(10);
  stroke(255);
  text("BACK",110,957);
  strokeWeight(3);
  stroke(255);
  line(35,960.5,55,950);
  line(35,959.5,55,970);
  line(50,960,70,960);
  fill(255);
  noStroke();
  rect(1300, 100, -5,-bar1);
  rect(1310, 100, -5,-bar2);
  rect(1320, 100, -5,-bar3); 
  rect(1330, 100, -5,-bar4);
  rect(1340, 100, -5,-bar5); 
  rect(1350, 100, -5,-bar6);
  fill(255);
  image(title1,35,0);
  if ((mouseX > 363)&&( mouseX <413)) {
    if ((mouseY >613)&& (mouseY < 675)) {
      image(cant1,363,613);
      fill(255);
      textAlign(LEFT, CENTER);
      textFont(myfont,12);
      text("No.1 Canteen",950,50);
      text("Average Daily Turnover："+canteen1/15300+" yuan",950,70);
      text("Average Single Spending Amount："+canteen1/average1/100+" yuan",950,90);
      fill(#ffbf1f);
      rect(1300, 100, -5,-bar1);
    }
}
  if ((mouseX > 605)&&( mouseX <660)){
    if ((mouseY >672)&& (mouseY < 710)) {
      image(cant2,605,672);
      fill(255);
      textAlign(LEFT, CENTER);
      textFont(myfont,12);
      text("No.2 Canteen",950,50);
      text("Average Daily Turnover："+canteen2/15300+" yuan",950,70);
      text("Average Single Spending Amount："+canteen2/average2/100+" yuan",950,90);
      fill(#ffbf1f);
      rect(1310, 100, -5,-bar2);
    }
}
if ((mouseX > 544)&&( mouseX <566)){
    if ((mouseY >373)&& (mouseY < 423)) {
      image(cant3,544,373);
      fill(255);
      textAlign(LEFT, CENTER);
      textFont(myfont,12);
      text("No.3 Canteen",950,50);
      text("Average Daily Turnover："+canteen3/15300+" yuan",950,70);
      text("Average Single Spending Amount："+canteen3/average3/100+" yuan",950,90);
      fill(#ffbf1f);
      rect(1320, 100, -5,-bar3); 
    }
}
if ((mouseX > 205)&&( mouseX <235)){
    if ((mouseY >355)&& (mouseY <400)) {
      image(cant4,205,355);
      fill(255);
      textAlign(LEFT, CENTER);
      textFont(myfont,12);
      text("No.4 Canteen",950,50);
      text("Average Daily Turnover："+canteen4/15300+" yuan",950,70);
      text("Average Single Spending Amount："+canteen4/average4/100+" yuan",950,90);
      fill(#ffbf1f);
      rect(1330, 100, -5,-bar4);
    }
}
if ((mouseX > 890)&&( mouseX <936)){
    if ((mouseY > 726)&& (mouseY <759)) {
      image(cant5,890,726);
      fill(255);
      textAlign(LEFT, CENTER);
      textFont(myfont,12);
      text("No.5 Canteen",950,50);
      text("Average Daily Turnover："+canteen5/15300+" yuan",950,70);
      text("Average Single Spending Amount："+canteen5/average5/100+" yaun",950,90);
      fill(#ffbf1f);
      rect(1340, 100, -5,-bar5);    
  }
}
if ((mouseX >1197)&&( mouseX <1215)){
    if ((mouseY >465)&& (mouseY < 486)) {
       image(cant6,1197,465);
      fill(255);
      textAlign(LEFT, CENTER);
      textFont(myfont,12);
      text("No.6 Canteen",950,50);
      text("Average Daily Turnover："+canteen6/15300+" yuan",950,70);
      text("Average Single Spending Amount："+canteen6/average6/100+" yuan",950,90);
      fill(#ffbf1f);
      rect(1350, 100, -5,-bar6);
    }
}
  if ((mouseY >950)&&(mouseY < 970)){
     if ((mouseX >35)&&(mouseX <150)){
            fill(#F4B929);
            textFont(myfont,20);
            strokeWeight(10);
            stroke(#F4B929);
            text("BACK",110,957);
            strokeWeight(3);
            stroke(#F4B929);
            line(35,960.5,55,950);
            line(35,959.5,55,970);
            line(50,960,70,960);
  }
  }
  if ((yloc >945)&&(yloc <975)){
    if ((xloc >35)&&(xloc < 150)){
    Button();
    }
}
}