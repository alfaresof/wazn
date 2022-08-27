class faoolon
{



  int faoolons(bool first, bool second, bool third, bool forth, bool fifth, String a, int start)
  {
    List<bool> bol = [first, second, third, forth, fifth];
    List<String> taf = ["11010", "1101", "110", "10", "1100"];
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