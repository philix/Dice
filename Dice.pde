Die c;
boolean gamble1;
boolean gamble2;
boolean gamble3;
boolean gamble4;
boolean gamble5;
boolean gamble6;
int total;
void setup(){
  size(500,500);
  background(60);
  noLoop();
}
void draw(){
  
  for(int xx = 20; xx< 500; xx+= 80){
    for(int yy = 10; yy<400; yy+= 80){
      c = new Die(xx,yy);
      c.roll();
      c.show();
    }
  }
}
void mousePressed(){
      redraw();
      total = 0;
}
class Die{/*models one single dice cube*/
      //member variable declarations here
  int dieSize, dieX, dieY;
  
  Die(int x, int y){ /*constructor*/
          //variable initializations here
      dieSize = 50;
      dieX = x;
      dieY = y;
  }
  void roll(){
    fill(255,255,255);
    int gamble = (int)(Math.random()*6+1);
    if(gamble == 1){
       gamble1 = true;
    }else if(gamble == 2){
       gamble2 = true;
    }else if(gamble == 3){
       gamble3 = true;
    }else if(gamble == 4){
       gamble4 = true;
    }else if(gamble == 5){
       gamble5 = true;
    }else if(gamble == 6){
       gamble6 = true;
    }
  }
  void show(){
    int randomColor1 = (int)(Math.random()*266);
    int randomColor2 = (int)(Math.random()*266);
    int randomColor3 = (int)(Math.random()*266);
    fill(randomColor1,randomColor2,randomColor3);
    noStroke();
    rect(dieX,dieY,60,60,10);
    textSize(30);
    fill(60);
    rect(250,400,100,60);
    fill(255,255,255);
    text("Total: " + total,170,450);
    fill(0);
    if(gamble1 == true){
      ellipse(dieX+30,dieY+30,10,10);
      gamble1 = false;
      total++;
    }else if(gamble2 == true){
      ellipse(dieX+15,dieY+15,10,10);
      ellipse(dieX+45,dieY+40,10,10);
      gamble2 = false;
      total += 2;
    }else if(gamble3 == true){
      for(int x = 10; x<70; x+=20){
        ellipse(dieX+30, dieY + x, 10,10);
      }
      gamble3 = false;
      total += 3;
    }else if(gamble4 == true){
      for(int y = 20; y<=41; y+=20){
        for(int x = 20; x<=41; x+=20){
          ellipse(dieX + y, dieY + x, 10,10);
        }
      }
      gamble4 = false;
      total += 4;
    }else if(gamble5 == true){
      for(int y = 20; y<=41; y+=20){
        for(int x = 20; x<=41; x+=20){
          ellipse(dieX + y, dieY + x, 10,10);
        }
      }
    ellipse(dieX+30,dieY+30,10,10);
    gamble5 = false;
    total += 5;
    }else{
  for(int x = 20; x<=45; x+=20){
    for(int y = 10; y<=60; y+=20){
      ellipse(dieX+x,dieY+y,10,10);
    }
  }
  gamble6 = false;
  total += 6;
 }
    textSize(30);
    fill(60);
    rect(250,400,100,60);
    fill(255,255,255);
    text("Total: " + total,170,450);
}
}
