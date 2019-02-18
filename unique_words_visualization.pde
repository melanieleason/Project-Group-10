PFont chalkboard;
color a = #D33A51;
color b = #7D0895;
color c = #4251E3;
String[] line;

void setup() {
  size(700, 600);
  line = loadStrings("uniquewords.txt");
  chalkboard = createFont("Chalkboard-Bold", 20); 
  noLoop();
}

void draw() {
  background(255);
  textFont(chalkboard);
  int xbuffer = 10;
  int y = 20;
  int x = 0;
  for (int i=0; i < line.length; i++){
    if (y == height) {
      break;
    }
    int r = int(random(line.length));
    colors(i);
  //  text(line[r], x, y);
    int z = x + xbuffer + int(textWidth(line[r]));

    if (z < width) {
      text(line[r], x, y);
      x = z;
    }
    else {
      x = 0;
      y+= 30;
      text(line[r], x, y);
      x = x + xbuffer + int(textWidth(line[r]));
    } 
      
  }
}

void colors(int x) {
    if (x % 3 ==0) {
      fill(a);
    }
    else if (x%3 == 1) {
      fill(b);
    }
    else{
      fill(c);
    }
}

void mousePressed() {
  redraw();
}
