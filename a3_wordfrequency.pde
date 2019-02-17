//Assignment3 Group10 Peter Pan

String[] wordfrequency;
int[] num;
int x = 0;
int y = 0;

void setup() {
  
  
  background(255);
  size(750,700);
  String[] line = loadStrings("wordfrequency.txt");
  int size = line.length;
  wordfrequency = new String[size];
  num = new int[size];
 
  
  for (int i = 0; i < size; i++) {
    String[] list = split(line[i], ':');
    
    wordfrequency[i] =list[0];
    String val = list[1];
    
    val = trim(val);
    num[i] =int(val);

  }
}
void draw() 
{
  int z = 0;
  color a = color(20,x,y,200);
  x +=8;
  y +=2;   
  for (int i = 0; i < wordfrequency.length; i = i+1) 
  {
    
    stroke(255,200);
    strokeWeight(1);
    fill(a);
    int e = num[i];  
    int f = e/5;
    if (e<4)
    {
      f = 1;
    }
    else if (e<7 && e>3)
    {
      f = 2;
    }
    else if (e<10 && e>6)
    {
      f = 3;
    }


    rectMode(RADIUS);
    rect(z+4, 350, 4, f); 
    
    z = z + 8;
  
  }
  
}
