PFont chalkboard;
color a = #E32525;
color b = #03FF04;
color c = #031DFF;
int x = 10;
int y = 20;
// random selection of unique words
// fit in 700x600 canvas and contain as many unique words as possible
void setup() {
  size(700, 600);
  String[] line = loadStrings("uniquewords.txt");
  chalkboard = createFont("Chalkboard-Bold", 20); 
  textAlign(LEFT);
  
  for (int i=0; i < 100; i++){
    if (y == 600) {
      break;
    }
    int r = int(random(line.length));
    print(line[r].length(), "");
    colors(r);
    text(line[r], x, y);
    if (x + 100 < 700) {
      x+= (int(line[r].length()));
    }
    else {
      x = 10;
      y+= 30;
      text(line[r], x, y);
    }
      
  }
}

void draw() {
  textFont(chalkboard);
  

  
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

//make sure words dont repeat
