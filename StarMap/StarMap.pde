void setup()
{
  size(800, 800);
  loadData();
  
}
ArrayList<Star>stars = new ArrayList<Star>();

void draw()
{
  
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