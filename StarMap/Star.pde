class Star
{
  float hab;
  String displayName;
  float distance;
  float Xg, Yg, Zg;
  float absMag;
  
  Star(TableRow row)
  {
    hab = row.getFloat(3);
    displayName = row.getString(4);
    distance = row.getFloat(13);
    Xg = row.getFloat(14);
    Yg = row.getFloat(15);
    Zg = row.getFloat(16);
  }
  
  void draw(float x, float y)
  {
    x = map(x, -5, 5, 50, 750);
    y = map(y, -5, 5, 50s, 750);
    stroke(255);
    fill(255);
    ellipse(x ,y ,4, 4);
    println(x * 100, y * 100);
  }
  
   String toString()
  {
    return hab + "\t" + displayName  + "\t" + distance + "\t" + Xg + "\t"
    + Yg + "\t" + Zg + "\t" + absMag ;
  }
}

void drawStars()
{
  for(Star star: stars)
  {
    star.draw(star.Xg, star.Yg);
  }
}