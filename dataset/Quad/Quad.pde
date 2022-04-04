
void setup() {
  size(64,64);
}


void draw(){
  background(240);
  scale(1.5,1.5,0);
  int n = int(random(2, 30));
  int c = int(random(0,2));
  
  DrawSquare (n, c);
  saveFrame("output/quad-######.jpg");
  println(frameCount);
  if (frameCount==100){
    exit();
  }
  
}


// Draw n superposed quadrangles (based on 40*40 squares) c=brown/black
void DrawSquare(int n, int c) {
  push(); 
    noFill();
    scale(0.8,0.8);
    
    for (int k=0; k<n; k++) { // n times
      int[] dispersion = new int[8];
      for (int d=0; d<8; d++) { // generate the dispersion array, filled with 8 random relative integers which will be the dispersions around the 8 coordinates
        int disp = int (random(-12, 15));
        dispersion[d] = disp;
      }
      
     if (c==0) {
           stroke(159,77,57);
           quad(20+dispersion[0],20+dispersion[1],60+dispersion[2],20+dispersion[3],60+dispersion[4],60+dispersion[5],20+dispersion[6],60+dispersion[7]);
    }
    
      if (c==1) {
           stroke(20,20,20);
           quad(20+dispersion[0],20+dispersion[1],60+dispersion[2],20+dispersion[3],60+dispersion[4],60+dispersion[5],20+dispersion[6],60+dispersion[7]);
    }
    
    
    
    }
      
  pop();
  
}
