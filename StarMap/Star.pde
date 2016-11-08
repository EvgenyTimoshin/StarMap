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
  
   String toString()
  {
    return hab + "\t" + displayName  + "\t" + distance + "\t" + Xg + "\t"
    + Yg + "\t" + Zg + "\t" + absMag ;
  }
}