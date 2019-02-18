PFont chalkboard;
color a = #E32525;
color b = #03FF04;
color c = #031DFF;
color[] colors = {a, b, c};
int x = 10;
int y = 20;
// random selection of unique words
// fill with three colors
// fit in 700x600 canvas and contain as many unique words as possible
void setup() {
  size(700, 600);
  String[] line = loadStrings("uniquewords.txt");
  chalkboard = createFont("Chalkboard-Bold", 32); 
  textFont(chalkboard);
  textSize(20);
  textAlign(LEFT);
  
  for (int i=0; i < line.length; i++){
    if (y == 600) {
      break;
    }
    int r = int(random(line.length));
    line[r] = line[r].replaceAll("//s+","");
    print(line[r].length());
    text(line[r], x, y);
    if (x + 100 < 700) {
      x+= (line[r].length());
    }
    else {
      x = 10;
      y+= 30;
      text(line[r], x, y);
    }
      
  }
}

void draw() {
  
}

/*void color(String word) {
  for (int i = 0, word.length() i++) {
    if (word[i] == "a") {
      fill(a);
    }
  }
}*/
