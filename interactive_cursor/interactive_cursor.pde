//int intX40 = int((pmouseX/40)*40);　グローバルで宣言するとdraw内で値が変化しないので固定化される。
//int intY40 = int((pmouseY/40)*40);  ちゃんとdraw内で宣言して、引数として関数に取り込むこと。
//グローバル変数宣言（実質無意味）

void setup(){
  size(700,700);
  colorMode(GRAY,255);
  //グレースケール。色は必要ないのでグレーと書いておいたほうがお手元のパソコン君に優しい
  
  frameRate(60);
  //フレームレートは60fps（毎秒60枚のアニメ）プリキュアの変身バンクですら24fpsなんですけど！？
}

void draw(){
  ellipseMode(CENTER);
  int time = 0;
  int intX40 = int((pmouseX/40)*40);
  int intY40 = int((pmouseY/40)*40);
  //draw内で使う変数の定義。
  
  background(0);
  
  stroke(255);
  noFill();
  rect(intX40,intY40,40,40);
  
  if(mousePressed){  // 「マウスを押したときにこれを実行してくれ」
    rectPressed(intX40,intY40);  //rectPressedの独自関数呼び出し
    
    stroke(255);
    line(pmouseX-18,pmouseY-18,pmouseX-10,pmouseY-10);//左上
    line(pmouseX-18,pmouseY+18,pmouseX-10,pmouseY+10);//左下
    
    line(pmouseX+10,pmouseY-10,pmouseX+18,pmouseY-18);//右上
    line(pmouseX+18,pmouseY+18,pmouseX+10,pmouseY+10);//右下
    
    //左上⇔右下、左下⇔右上の間で数値の + - が反転している。
    //個人的にこのカーソルは関数に分けてを作った方が絶対良いと思う。一々めんどくさい。
  }
  
  stroke(0);
  fill(0);
  ellipse(pmouseX,pmouseY,10,10);
  
  stroke(255 - time);
  noFill();
  ellipse(pmouseX,pmouseY,10,10);
  //カーソル（共通部分の円）
  
  if(mousePressed){  //カーソル（マウス押したとき）
    fill(255);
    ellipse(pmouseX,pmouseY,2,2);
  }else{  //カーソル（通常時）
    ellipse(pmouseX,pmouseY,6,6);
  }
  
  
  
  if(frameCount <= (60*15)){
    //saveFrame("frame/####.tga");
  }
}

void rectPressed(int intX40,int intY40){
  
  /*
  ** void関数について **
  
  描写命令に必要な引数（計算に必要な数字）だけ与えて「描写だけやってくれ、計算結果は返さなくていい」。
  それが "void関数"。
  void drawや、void setupとかも、計算結果は必要ない（最終的に出てくる結果は図形描写だけでいい）。
  だから最初に "void(中身を捨てる)" と書く。
  
  もしも計算結果を画面に表示したいとかいう場合は "float" の関数にしたり、"int" にして
  「計算結果を報告してくれよな！」と命令しなくてはいけない。
  */
  
  for(int i = 0; i < 4; i++){
    int j = i;
    
    //j = j % 2;
    
    int pos1 = j*40;
    int pos1nega = (j*(-1))*40; 
    // "pos1nega" は "pos1" とは真逆に配置するための変数
    
    noFill();
    stroke(255-(j*60));
    rect(intX40 + pos1,intY40,40,40);
    rect(intX40 + pos1nega,intY40,40,40);
    //x座標
    
    rect(intX40,intY40 + pos1,40,40);
    rect(intX40,intY40 + pos1nega,40,40);
    //y座標
  }
  
}


//class rectDisplay()
