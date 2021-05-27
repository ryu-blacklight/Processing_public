size(500, 500);
colorMode(HSB, 2160, 4320, 4320);
//表示（色、画面サイズ）の設定。


translate(250, 250);  //原点から移動。つまり図形の描写基準を画面中心へ移動。
float x = 0;  //原点からのx座標の距離。その変数。小数点以下を含んで移動するので浮動小数点型。

int h = 2160;  //色相。2160を初期値として繰り返すごとに減少していく。
int s = 4320;  //彩度。4320を初期値として繰り返すごとに減少。
int b = 2160;  //明度。2160を初期値として繰り返すごとに『増加』。明度50%→明度100%に変化する。

for(float deg = 0; deg <= 4320; deg ++){  //繰り返しのfor文。degは度数の意味。1ずつ増える。
   
   float clr = 3000 *(deg % 5);
   /*
   今回の肝の部分。
   剰余の結果を利用し、５の倍数の繰り返し回数の円弧だけ虹のグラデーションを持つようにする。
   */
   
   x+=0.075;  //xは繰り返すたびに0.075ずつ増加。
   /*
   1回目に対し、2回目の移動は0.075 * a = 0.15。a=2。
   2回目に対し、3回目の移動は0.15 * a = 0.225。a=1.5。
   繰り返すたびにaは1に向かって減少していく。
   */
   
   noFill();  //塗りつぶしなし。
   stroke(h,s-clr,b+clr);  //線の色。HSBそれぞれの変数と、剰余の結果を用いて導出。
   arc(50+x,0,100,100,radians(0),radians(180));
   //円弧の描写。初期位置はx軸プラス方向へ50。以降繰り返すごとに変数xの数だけ外へ。
   
   rotate(radians(1));  //繰り返すごとに角度を1度ずらしていく。
   
   h--;
   s--;
   b++;
   //次回の繰り返しへ向けて色情報の更新。これらを4320回繰り返す。
   //4320は360 * 12。原点と初期値を基準に12周する。
}
