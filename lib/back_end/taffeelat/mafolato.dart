class mafolato
{



  int mafolatos(bool first, bool second, String a, int start)
  {
    List<bool> bol = [first, second];
    List<String> taf = ["1010101","101101"];
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