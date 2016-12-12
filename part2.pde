float boxW=100;
float boxH1,boxH2,boxH3;
float boxD1,boxD2,boxD3;

void readData2() {
  
  inventory = new StringDict();
  for (int i = 0; i < accountTable.getRowCount (); i ++) {
    TableRow row = accountTable.getRow(i);
    String account = row.getString("account");
    String type = row.getString("type");
    if(type.equals("bachelor")==true){
      bachelorNum+=1;
  }
  if(type.equals("master")==true){
      masterNum+=1;
  }
  if(type.equals("phd")==true){
      phdNum+=1;
  }

    inventory.set(account,type);
  }
  
  for(int i = 0; i < tradeTable.getRowCount (); i ++) {
    TableRow row = tradeTable.getRow(i);
    String fromaccount = row.getString("fromaccount");
    int amount = row.getInt("amount");
    if((inventory.get(fromaccount)).equals("bachelor")==true){
      bachelorAmount+=amount;
  }
    if((inventory.get(fromaccount)).equals("master")==true){
      masterAmount+=amount;
  }
    if((inventory.get(fromaccount)).equals("phd")==true){
      phdAmount+=amount;
  }
  }
  boxD1=map(bachelorNum,0,bachelorNum+masterNum+phdNum,0,600); 
  boxD2=map(masterNum,0,bachelorNum+masterNum+phdNum,0,600);
  boxD3=map(phdNum,0,bachelorNum+masterNum+phdNum,0,600);
  boxH1=map(bachelorAmount/bachelorNum/2200,0,15,0,600);
  boxH2=map(masterAmount/masterNum/2200,0,15,0,600);
  boxH3=map(phdAmount/phdNum/2200,0,15,0,600);
}

void Part2(){
  background(#698066);
  myCam.beginHUD();
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
  image(title2,35,0);
  textFont(myfont,12);
  fill(255);
  noStroke();
  text("Bachelor",1060,50);
  text(bachelorNum/(bachelorNum+masterNum+phdNum)*100+"%",boxD1/2+1142,52);
  text("Master",1065,68);
  text(masterNum/(bachelorNum+masterNum+phdNum)*100+"%",boxD2/2+1140,70);
  text("PHD",1075,87);
  text(phdNum/(bachelorNum+masterNum+phdNum)*100+"%",boxD3/2+1145,87);
  fill(255);
  rect(1100, 50, boxD1/2, 7);
  fill(225);
  rect(1100, 68, boxD2/2, 7);
  fill(195);
  rect(1100, 85, boxD3/2, 7);
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
  myCam.endHUD();
  translate(-boxW-100, (boxH2/2)-(boxH1/2), 0);
  fill(255);
  stroke(#698066);
  strokeWeight(3);
  box(boxW,boxH1,boxD1);
  textFont(myfont,20);
  fill(255);
  text("Bachelor"+"("+bachelorNum/(bachelorNum+masterNum+phdNum)*100+"%)",0,(boxH1/2)+80);
  fill(#ffbf1f);
  text(bachelorAmount/bachelorNum/2200+" yuan per capita",0,-(boxH1/2)-60);
  
  translate(boxW+100,(boxH1/2)-(boxH2/2),0); 
  fill(225);
  stroke(#698066);
  strokeWeight(3);
  box(boxW,boxH2,boxD2);
  textFont(myfont,20);
  fill(255);
  text("Master"+"("+masterNum/(bachelorNum+masterNum+phdNum)*100+"%)",0,(boxH2/2)+80);
  fill(#ffbf1f);
  text(masterAmount/masterNum/2200+" yuan per capita",0,-(boxH2/2)-60);
  
  translate(boxW+100,(boxH2/2)-(boxH3/2), 0); 
  fill(195);
  stroke(#698066);
  strokeWeight(3);
  box(boxW,boxH3,boxD3);
  textFont(myfont,20);
  fill(255);
  text("PHD"+"("+phdNum/(bachelorNum+masterNum+phdNum)*100+"%)",0,(boxH3/2)+80);
  fill(#ffbf1f);
  text(phdAmount/phdNum/2200+" yuan per capita",0,-(boxH3/2)-60);
  
 
}