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
    displayName = row.getString(3);
    distance = row.getFloat(13);
    Xg = row.getFloat(13);
    Yg = row.getFloat(14);
    Zg = row.getFloat(15);
    absMag = row.getFloat(16);
  }
  
  void draw(float x, float y)
  {
    x = map(x, -5, 5, 50, 750);
    y = map(y, -5, 5, 50, 750);
    stroke(255);
    fill(255);
    stroke(#D1E315);
    line(x , y, x + 2, y + 2);
    line(x , y, x - 2, y + 2);
    line(x , y, x + 2, y - 2);
    line(x , y, x - 2, y - 2);
    noFill();
    stroke(255, 0 ,0 );
    ellipse(x, y, absMag, absMag);
    textAlign(LEFT, CENTER);
    text(displayName, x + 8, y);
    println(absMag);
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