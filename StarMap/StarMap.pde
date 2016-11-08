void setup()
{
  size(800, 800);
  loadData();
  printStars();
  
}
ArrayList<Star>stars = new ArrayList<Star>();
ArrayList<Line>lines = new ArrayList<Line>();
int borderOffset = 50;
float lastX;
float lastY;
float newX;
float newY;
Boolean drawline = false;
boolean firstLine = false;
boolean secondline = false;

void draw()
{
  background(0);
  drawGrid();
  drawStars();
  
  if(drawline == true)
  {
    drawLine();
  }
}

void loadData()
{
  Table table = loadTable("textfile.csv");
  
  for(int i = 0; i < table.getRowCount(); i++)
  {
    TableRow row = table.getRow(i);
    Star star = new Star(row);
    stars.add(star);
  }

}

void printStars()
{
  for(Star star: stars)
  {
    println(star);
  }
}

void drawGrid()
{
  stroke(#CD15E3);
  int sideNav = -5;
  for(int x = borderOffset; x < width; x+=70)
  {
    line(x, 0 + borderOffset, x, height - borderOffset);
    fill(#CD15E3);
    text(sideNav , x , borderOffset - 10 );
    sideNav ++;
  }
  sideNav = -5;
  for(int y = borderOffset; y < height; y+=70)
  {
    line(0+borderOffset, y , width-borderOffset, y);
    fill(#CD15E3);
    text(sideNav , borderOffset - 20 , y );
    sideNav ++;
  }
}

void drawLine()
{
  line(lastX, lastY,  newX, newY);
  float distance =  dist(lastX, lastY, newX, newY);
  text("Dist:" + distance, newX + 10, newY);
}

void mousePressed()
{
  if(firstLine == false)
  {
    addLine();
    firstLine = true;
    drawline = false;
  }
  else
  {
    addSecondLine();
    firstLine = false;
    drawline = true;
  }
}

void addLine()
{
  lastX = mouseX;
  lastY = mouseY;
}

void addSecondLine()
{
  newX = mouseX;
  newY = mouseY;
}