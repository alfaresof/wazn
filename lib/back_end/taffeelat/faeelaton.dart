class faeelaton
{



  int faeelatons(bool first_one,bool first_two,bool second_one,bool second_two,bool third_one,bool third_two,bool fourth_one,bool fourth_two,bool fifth,bool sixth, String a, int start)
  {
    List<bool> bol = [first_one, first_two, second_one, second_two, third_one, third_two, fourth_one, fourth_two, fifth, sixth];
    List<String> taf = ["1011010", "111010", "10110", "1110", "101100", "11100", "10110100", "1110100", "1010", "101010"];
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