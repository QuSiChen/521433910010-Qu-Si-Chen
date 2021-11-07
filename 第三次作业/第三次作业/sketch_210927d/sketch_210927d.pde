//蒙德里安
int q=40;
int i=0;
int dim=100;
int x=90;
int y=800;
int w=255;
int e=0;
int speed=5;
int a=0;
int p=90;
int u=5;

int h=80;
int s=180;
int d=5;//速度
int state=0;



void setup()
{ size(800,800);}
void draw(){
  background(255);
  strokeWeight(5);
  line(0,700,800,700);
  line(40,0,40,height);
  line(80,0,80,height);
  a=a+speed;
  if(a>700||a<0)
  {speed=speed*(-1);}
  q++;
  if(q>255)
  {q=0;}
  fill(q);
  rect(40,a,40,100);
  fill(#A2A2A2);
  rect(0,130,40,50);
  strokeWeight(5);
  line(0,130,800,130);
  line(0,180,800,180);
  p=p+u;
  if(p<90||p>700)
  {u=u*-1;}
  w--;
  if(w<40)
  {w=250;}
  fill(w);
  rect(p,130,100,50);
  strokeWeight(5);
  line(500,0,500,800);
  line(600,0,600,800);
  y=y-5;
 if(y<-200)
   {y=800;}
   fill(q);
  rect(500,y,100,200);
  line(90,180,500,180);
  line(0,280,800,280);
  line(90,650,500,650);
  line(700,180,700,450);
  line(600,450,800,450);
  line(600,580,800,580);
  line(600,400,700,400);
  line(600,350,700,350);
  fill(#969696);
  rect(650,350,50,50);
  e=e+5;
  if (e>255)
  {e=0;}
  fill(e);
  rect(600,450,100,130);
  line(180,180,180,800);
  line(0,580,600,580);
  line(0,650,40,650);
  line(40,650,90,650);
  line(180,500,500,500);
  line(450,0,450,800);
  fill(#504F4F);
  rect(450,i,50,80);
  fill(#959595);
  rect(180,500,270,80);
  fill(#B7B7B7);
  rect(180,580,270,70);
  fill(q);
  rect(600,0,200,130);
  fill(#E8E5E5);
  rect(80,0,370,130);
  line(0,0,800,0);
  line(0,800,800,800);
  line(700,580,700,800);
  fill(#C1C1C1);
  rect(h,s,100,100);
  if(state==0){
    h=h+d;
    if(h>700){
      h=700;
      state=1;}}
  else if(state==1)
  {s=s+d;
   if(s>700){s=700;state=2;}
  }else if( state==2)
  {h=h-d;if( h<80){h=80;state=3;}
  }else if(state==3)
  {s=s-d;
  if(s<180){s=180;state=0;}}
  
      
  
}
