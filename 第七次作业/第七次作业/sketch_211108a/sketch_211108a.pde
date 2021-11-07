float speed=100;
float constant = 0.005;
ArrayList<Particle>particles=new ArrayList(0);
void setup()
{
  size(720,720);
  background(0);
  
}
void mouseClicked()
{
  particles.add(new Particle(random(width),random(height)));
}
void draw()
{
  for(Particle p :particles)
  {
   p.update();
   p.display();
  }
  //if(keyPressed)
  {
    for(int w=0;w<10;w++){
   particles.add(new Particle(random(width),random(height)));}
}}
class Particle
{
  PVector position;
  PVector velocity;
  
  Particle(float X,float Y)
  {
    position = new PVector(X,Y);
    velocity = new PVector(0,0);
  }
  void update()
  {
    velocity=PVector.fromAngle(noise(position.x*constant,position.y*constant)*2*PI);
    velocity.setMag(speed);
    position .add(PVector.div(velocity,frameRate));
}
void display()
{
  fill(255);
  noStroke();
  circle(position.x,position.y,0.5);
  
}
}
