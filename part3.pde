void readData3(){
  for(int i = 0; i < tradeTable.getRowCount (); i ++) {
    TableRow row = tradeTable.getRow(i);
    int syscode = row.getInt("syscode");
    int timestamp = row.getInt("timestamp");
    if ((syscode==30)||(syscode==34)||(syscode==36)||(syscode==38)||(syscode==33)||(syscode==37)||(syscode==99)||(syscode==265)||(syscode==266)||(syscode==267)||(syscode==278)||(syscode==269)){
      int x =timestamp/100*60 + timestamp%100;
      //println(timestamp,x);
      if((x>=360)&&(x<=1320)){
        minutes[x]=1+ minutes[x];
        //println(i,timestamp,x);
  }
}
}
}

void Part3(){
  background(#698066);
  fill(255);
  textFont(myfont,20);
  strokeWeight(3);
  stroke(255);
  text("BACK",110,957);
  strokeWeight(3);
  stroke(255);
  line(35,960.5,55,950);
  line(35,959.5,55,970);
  line(50,960,70,960);
  image(title3,35,0);
  strokeWeight(1);
  stroke(255);
  line(mouseX, 0, mouseX, 1000);
  fill(#F4B929);
  beginShape();
  vertex(100,850);
  for(int i = 360; i <= 1320; i ++) {
    curveVertex((i-360)*1.3+100,850-minutes[i]/7);
  }
  vertex(1348,850);
  vertex(100,850);
  endShape();
  strokeWeight(4);
  stroke(255);
  line(99.5, 852, 1348.5, 852);
  for(int j = 6; j < 22; j ++) {
   fill(255);
  textFont(myfont, 10);
   text(j+":30",139+78*(j-6), 870);
 }
for(int k = 6; k <= 22; k ++) {
   fill(255);
  textFont(myfont, 13);
   text(k+":00",100+78*(k-6), 869);
 }
 for(int m = 6; m <= 38; m ++) {
   fill(255);
  textFont(myfont, 15);
  strokeWeight(3);
  stroke(255);
   text("I",100+39*(m-6), 845);
 }
  textFont(myfont, 15);
  fill(#610F13);
  stroke(#610F13);
  strokeWeight(3);
  text(minutes[(mouseX-100)/13*10+360]+" People",mouseX+50,800-minutes[(mouseX-100)/13*10+360]/7);
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