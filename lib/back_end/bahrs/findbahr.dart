import '../taffeelat/MaTaffelat.dart';

class findit {


  static bool findbahrso(List<List<List<bool>>> bool_bah, List<int> taf,
      List<List<int>> result_of_bahrs, List<String> shatr) {
    int starts = 0;
    for (int i = 0; i < 2; i++) {
      starts = 0;
      for (int j = 0; j < taf.length; j++) {
        print('starts');
        print(starts);
        print("object");
        print(result_of_bahrs[i][j]);

        result_of_bahrs[i][j] =
            MaTaffelt().find(bool_bah[i][j], shatr[i], starts, taf[j]);
        starts += result_of_bahrs[i][j];
        if (result_of_bahrs[i][j] == -1) {
          return false;
        }
        print("hoho");
        print(result_of_bahrs[i][j]);
      }
    }

    return true;
  }
}