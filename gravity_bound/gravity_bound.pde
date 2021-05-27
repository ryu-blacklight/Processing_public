float grvty, x, y, addX, addY, count, conut;
//注意！！
//int型で定義すると、減速処理中に速度が１未満の小数点になった時に小数点以下が放棄されて速度が0となり停止します
//必ずfloat型の浮動小数点で定義してください


void setup(){
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100);
  
  grvty = 3.92;  //重力の40％　描写範囲が狭いのでこれで十分。
  x = 0;
  y = 0;
  addX = 40;
  addY = -30;
  count = 0;
  
  frameRate(60);
}

void draw(){
  
  background(360, 0, 70);
  
  addY += grvty;
  
  //translate(30, 870);
  
  fill(360, 0, 50);
  noStroke();
  ellipse(x, y, 20, 20);
  x += addX;
  y += addY;
  
  if(x > 1000 || x < 0){
    addX *= (-1);
  }
  
  if(y > 1000 || y < 0){
    addY *= (-1);
  }
  
  //saveFrame("frames/Gravity######.tga");
  
  if(frameCount == 600){
    exit();
  }
}
