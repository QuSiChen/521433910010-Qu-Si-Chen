float angle= 0 ;
float aVelocity=0;
float aAcceleration =0.0001;

float prevMouseX=width/2;
float prevMouseY=height/2;
void setup(){
  size(1000,1000);
  background(2);
  noStroke();
  fill(#f6c2c2);
  rect(20,20, 50, 50);
  fill(#d4edf4);
  rect(20,80,50,50);
  fill(255);
  rect(20,140,50,50);
  fill(#9190FF);
  rect(20,200,50,50);
}

void draw() {
 
  
   if(mousePressed && mouseX>20 && mouseX<70 && mouseY>20 && mouseX<70)
 {stroke(#f6c2c2,70);
  if(mousePressed&&mouseX>80){ellipse(mouseX, mouseY,30,30);};
  noFill();}
   if(mousePressed && mouseX>20 && mouseX<70 && mouseY>80 && mouseX<130)
{stroke(#9ED4E3,70);}
 if(mousePressed && mouseX>20 && mouseX<70 && mouseY>140 && mouseY<190)
 {stroke(255,70);noFill();}
 if(mousePressed && mouseX>20 && mouseX<70 && mouseY>200 && mouseY<250)
 {stroke(#9190FF,40);}
if(mousePressed&&mouseX>80)
{  translate(mouseX,mouseY);
  rotate(angle);
  ellipse(-20,10,150,10);
  ellipse(10,-10,160,10);
  angle+= 0.01;
  ellipse(10,-10,160,10);
  angle +=0.01;
  aVelocity=aVelocity+aAcceleration;
  angle=angle+aVelocity;}
}
