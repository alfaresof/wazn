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

  List<List<String>> WTaffelat = [
    ["فاعلاتن", "فعلاتن", "فاعلا", "فعلا", "فاعلات", "فعلاتْ", "فاعلاتن", "فعلاتن", "فاعل", "فاعلْتِنْ"],//faaelaton 0
    ["فاعلن","فعلن","فاعل"],//faelon 1
    ["فعولن", "فعولُ", "فعو", "فع", "فعولْ"],//faoolon 2
    ["مفاعيلن","مفاعي","مفاعيل","مفاعيلُ","مفاعلن"],//mafaeelon 3
    ["مفعولات","فاعلان"],//mafolato 4
    ["مفاعلتن","مفاعلْتنْ","مفاعلْ"],//mofaalaton 5
    ["مستفعلن","متفعلن","مستعلن","متعلن","مستفعلْ"],//mostafelon 6
    ["متفاعلن", "متْفاعلُ", "متفاعلْ", "متْفاعلنْ", "متفا", "متْفا", "متفاعلاتن", "متْفاعلاتن", "متفاعلان", "متْفاعلان"]//motafaelon 7
  ];
  List<int> results = [0,0,0,0];
  List<int> find (List<bool> bol,String a, int start,int Taffelah){
    if(0 <= start){
      for (int i = 0; i < Taffelat[Taffelah].length; i++) {
        if (bol[i] == true) {
          if(start+Taffelat[Taffelah][i].length <= a.length){
            if (Taffelat[Taffelah][i] == a.substring(start, start + Taffelat[Taffelah][i].length)) {
              results[0] = Taffelat[Taffelah][i].length;
              results[1] = Taffelah;
              results[2] = i;
              return results;
            }}
        }
      }}
    results [0] = -1;
    return results;
  }

  }




