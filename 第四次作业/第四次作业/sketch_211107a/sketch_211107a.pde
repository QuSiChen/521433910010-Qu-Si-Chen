PFont font;
PGraphics pg;
int i=0;
void setup() {
  font = createFont("Century",600);
  size(800, 800, P2D);
  pg = createGraphics(800, 800, P2D);
}

void draw() {
  background(0);
i++;
if(i/5>255){i=-i;}
  pg.beginDraw();
  pg.background(#C7EDE8);
  pg.fill(i/5,i/2,i/2);
  pg.textFont(font);
  pg.textSize(800);
  pg.pushMatrix();
  pg.translate(width/2, height/2-215);
  pg.textAlign(CENTER, CENTER);
  pg.text("s", 0, 0);
  pg.popMatrix();
  pg.endDraw();

  int tilesX = 16;
  int tilesY = 16;

  int tileW = int(width/tilesX);
  int tileH = int(height/tilesY);

  for (int y = 0; y < tilesY; y++) {
    for (int x = 0; x < tilesX; x++) {   
      int wave = int(sin(frameCount * 0.05 + ( x * y ) * 0.07) * 100);
      int sx = x*tileW + wave;
      int sy = y*tileH;
      int sw = tileW;
      int sh = tileH;
      int dx = x*tileW;
      int dy = y*tileH;
      int dw = tileW;
      int dh = tileH;
    
      copy(pg, sx, sy, sw, sh, dx, dy, dw, dh);

    }
  }
}
