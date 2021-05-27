int[] array;

void setup(){
  size(700,700);
  array = new int[0];
}

void draw(){
  background(160);
  if(mousePressed){
    
    array = new int[2 + array.length];
  }
  textMode(CENTER);
  textSize(20);
  text(array.length,width/2,height/2);
}
