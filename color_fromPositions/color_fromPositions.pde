size(500, 500);
colorMode(RGB, 1f);
float r, g, b, num;
loadPixels();
for(int x = 0; x < width; x++){
  for(int y = 0; y < height; y++){
    
    num = 7;
    //num = 2401;
    
    r = sin( ( (x+y)*(x-y) ) / num );
    g = sin( ( pow(x,2)-pow(y,2) ) / -num );
    b = tan( ( pow(x,3)+pow(y,3) ) / 5000 );
    
    color _color = color(r, g, b);
    pixels[y*width + x] = _color;
  }
}
updatePixels();
