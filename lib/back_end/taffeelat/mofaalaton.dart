class mofaalaton
{



  int mofaalatons(bool first, bool second, bool third, String a, int start)
  {
    List<bool> bol = [first, second, third];
    List<String> taf = ["1101110","1101010","11010"];
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