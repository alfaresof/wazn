class motfaelon
{



  int motfaelons(bool first_one,bool first_two,bool second_one,bool second_two,bool third_one,bool third_two,bool fourth_one,bool fourth_two,bool fifth,bool sixth, String a, int start)
  {
    List<bool> bol = [first_one, first_two, second_one, second_two, third_one, third_two, fourth_one, fourth_two, fifth, sixth];
    List<String> taf = ["1110110", "1010110", "111010", "101010", "1110", "1010", "111011010", "101011010", "11101100", "10101100"];
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