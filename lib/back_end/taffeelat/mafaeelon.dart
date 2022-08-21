class mafaeelon
{



  int mafaeelons(bool first,bool second,bool third, bool fourth,bool fifth, String a, int start)
  {
    List<bool> bol = [first, second, third, fourth, fifth];
    List<String> taf = ["1101010","11010","110100","110101","110110"];
    if(0 <= start){
    for (int i = 0; i < taf.length; i++) {
      if (bol[i] == true) {
        if(start+taf[i].length<=a.length){
        if (taf[i] == a.substring(start, start + taf[i].length)) {
          print(a.substring(start, start + taf[i].length));
          return taf[i].length;
        }}
      }
    }}
    return -1;
  }
}