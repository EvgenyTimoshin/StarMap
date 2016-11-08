void setup()
{
  size(800, 800);
  loadData();
  printStars();
  
}
ArrayList<Star>stars = new ArrayList<Star>();
int borderOffset = 50;

void draw()
{
  drawGrid();
  background(0);
  
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
  for(int y = borderOffset; y < height; y+=70)
  {
    line(0+borderOffset, y , width-borderOffset, y);
  }
}