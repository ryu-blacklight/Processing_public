size(500, 500);
colorMode(HSB, 2160, 4320, 4320);


translate(250, 250);  //原点を画面中心へ
float x = 0;

int h = 2160;
int s = 4320;
int b = 2160;

for(int i = 0; i <= 4320; i ++){

   int clr = 3000 *(i % 5);
   //剰余の結果を利用した虹のグラデーションを持つようにする
   
   x+=0.075;
   
   noFill();
   stroke(h,s-clr,b+clr);  //線の色。剰余の結果を用いる
   arc(50+x, 0, 100, 100, 0, PI);
   
   
   rotate(2*PI/360);  //角度を1度加算
   
   h--;
   s--;
   b++;
   //次回の繰り返しへ向けて色情報の更新
}
//save(image.png)
