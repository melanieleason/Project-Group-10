PFont courier;
color a = #E32525;
color b = #03FF04;
color c = #031DFF;
color[] colors = {a, b, c};

// random selection of unique words
// fill with three colors
// fit in 700x600 canvas and contain as many unique words as possible
String[] unique_words = loadStrings("uniquewords.txt");
void setup() {
  size(700, 600);
  courier = createFont("Courier", 32); 
  textFont(courier);
  textSize(40);
  textAlign(LEFT);
  
}

void draw() {
  for (int i=0; i < unique_words.length; i++);
       text("unique_words[i]", 0, 0);
 
}
