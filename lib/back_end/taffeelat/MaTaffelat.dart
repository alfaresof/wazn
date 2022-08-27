class MaTaffelt{

  List<List<String>> Taffelat = [
    ["1011010", "111010", "10110", "1110", "101100", "11100", "10110100", "1110100", "1010", "101010"],//faaelaton 0
    ["10110","1110","1010"],//faelon 1
    ["11010", "1101", "110", "10", "1100"],//faoolon 2
    ["1101010","11010","110100","110101","110110"],//mafaeelon 3
    ["1010101","101101"],//mafolato 4
    ["1101110","1101010","11010"],//mofaalaton 5
    ["1010110","110110","101110","11110","101010"],//mostafelon 6
    ["1110110", "1010110", "111010", "101010", "1110", "1010", "111011010", "101011010", "11101100", "10101100"]//motafaelon 7
  ];
  int find (List<bool> bol,String a, int start,int Taffelah){
    if(0 <= start){
      for (int i = 0; i < Taffelat[Taffelah].length; i++) {
        if (bol[i] == true) {
          if(start+Taffelat[Taffelah][i].length <= a.length){
            if (Taffelat[Taffelah][i] == a.substring(start, start + Taffelat[Taffelah][i].length)) {
              return Taffelat[Taffelah][i].length;
            }}
        }
      }}
    return -1;
  }

  }




