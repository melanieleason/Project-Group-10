PFont chalkboard;
color a = #E32525;
color b = #03FF04;
color c = #031DFF;
String[] line;
// random selection of unique words
// fill with three colors
// fit in 700x600 canvas and contain as many unique words as possible
void setup() {
  size(700, 600);
  line = loadStrings("uniquewords.txt");
  chalkboard = createFont("Chalkboard-Bold", 20); 
  noLoop();
}

void draw() {
  textFont(chalkboard);
  int x = 10;
  int y = 20;
  int x1 = 0;
  for (int i=0; i < line.length; i++){
    if (y == 600) {
      break;
    }
    int r = int(random(line.length));
    print(line[r].length(), "");
    colors(i);
    x1 = x + (int(line[r].length()));
    if (x1 < 700) {
      x = x1; 
      text(line[r], x, y);
    }
    else {
      x = 10;
      y+= 30;
      text(line[r], x, y);
    }
    x1 = 0;
      
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
  loop();
}PFont chalkboard;
color a = #E32525;
color b = #03FF04;
color c = #031DFF;
String[] line;
// random selection of unique words
// fill with three colors
// fit in 700x600 canvas and contain as many unique words as possible
void setup() {
  size(700, 600);
  line = loadStrings("uniquewords.txt");
  chalkboard = createFont("Chalkboard-Bold", 20); 
  noLoop();
}

void draw() {
  textFont(chalkboard);
  int x = 10;
  int y = 20;
  int x1 = 0;
  for (int i=0; i < line.length; i++){
    if (y == 600) {
      break;
    }
    int r = int(random(line.length));
    print(line[r].length(), "");
    colors(i);
    x1 = x + (int(line[r].length()));
    if (x1 < 700) {
      x = x1; 
      text(line[r], x, y);
    }
    else {
      x = 10;
      y+= 30;
      text(line[r], x, y);
    }
    x1 = 0;
      
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
  loop();
}
