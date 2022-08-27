class mostafelon
{



  int mostafelons(bool first, bool second, bool third, bool forth, bool fifth, String a, int start)
  {
    List<bool> bol = [first, second, third, forth, fifth];
    List<String> taf = ["1010110","110110","101110","11110","101010"];
    if(0 <= start){
      for (int i = 0; i < taf.length; i++) {
      if (bol[i] == true) {
        if(start+taf[i].length<=a.length){
        if (taf[i] == a.substring(start, start + taf[i].length)) {
          return taf[i].length;
        }}
      }
    }}
    return -1;
  }
}