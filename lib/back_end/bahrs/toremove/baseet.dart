import 'package:wazn/back_end/bahrs/findbahr.dart';
import 'package:wazn/back_end/taffeelat/MaTaffelat.dart';
import 'package:wazn/back_end/taffeelat/toremove/faelon.dart';
import 'package:wazn/back_end/taffeelat/toremove/mostafelon.dart';

class basset{

  bool bassets(String firstsh , String secondsh){


/*
لكافة التفعيلات في كل شطر، ثلاثة احتمالات:
   صحيحة: 1010110
    مخبونة: 110110
    مطوية: 101110
    *****************
*/

    List<String> shatr = [firstsh,secondsh];
    List<List<List<bool>>> basset_bool = [
      [[true, true, true, false, false],//first
        [true, true, false],//sec
        [true, true, true, false, false],//thir
      [false, true, true]],//fourth
      [[true, true, true, false, false],//first
        [true, true, false],//sec
        [true, true, true, false, false],
      [false,true,true]],
    ];
    List<int> basset_taf = [6,1,6,1];
    List<List<int>> basset_result = [[0,0,0,0],[0,0,0,0]];
    return findit.findbahrso(basset_bool, basset_taf, basset_result, shatr);
    /*
    List<int> f = [0,0,0,0,0,0,0,0];
    f[0] = mostafelon().mostafelons(true, true, true, false, false, firstsh, 0);
    f[1] = faelon().faelons(true, true, false, firstsh, f[0]);
    f[2] = mostafelon().mostafelons(true, true, true, false, false, firstsh, f[0]+f[1]);
    f[3] = faelon().faelons(false, true, true, firstsh, f[0]+f[1]+f[2]);
    f[4] = mostafelon().mostafelons(true, true, true, false, false, secondsh, 0);
    f[5] = faelon().faelons(true, true, false, secondsh, f[4]);
    f[6] = mostafelon().mostafelons(true, true, true, false, false, secondsh, f[4]+f[5]);
    f[7] = faelon().faelons(false, true, true, secondsh, f[4]+f[5]+f[6]);

    int res=0;
    for (int i=0; i<f.length; i++ ){

      if(f[i]>0){
        res += 1;
      }

    }
    if(res==8){
      return true;
    }



    return false;

*/
  }

  bool bassetm(String firstsh , String secondsh){

/*
لكافة التفعيلات في كل شطر، ثلاثة احتمالات:
   صحيحة: 1010110
    مخبونة: 110110
    مطوية: 101110
    *****************
*/
  List<String> shatr = [firstsh,secondsh];
    List<List<List<bool>>> a = [
      [[true, true, true, false, false],
      [true, false, false],
      [true, false, false, false, false]],
     [[true, true, true, false, false],
      [true, false, false],
      [true, false, false, false, false]],
    ];
    List<int> taf = [6,1,2];
    List<List<int>> f = [[0,0,0],[0,0,0]];
    print(findit.findbahrso(a, taf, f, shatr));

    return findit.findbahrso(a, taf, f, shatr);
    /*
    int starts=0;
    for(int i=0;i<2; i++){
      starts =0;
      for(int j=0; j<taf.length; j++) {
        print('starts');
        print(starts);
        print("object");
        print(f[i][j]);

        f[i][j] = MaTaffelt().find(a[i][j], shatr[i], starts, taf[j]);
        starts += f[i][j];
        if(f[i][j] == -1){
          return false;
        }
        print("hoho");
        print(f[i][j]);
      }
    }
    return true;

    f[0] = mostafelon().mostafelons(true, true, true, false, false, firstsh, 0);
    f[1] = faelon().faelons(true, false, false, firstsh, f[0]);
    f[2] = faoolon().faoolons(true, false, false, false, false, firstsh, f[0]+f[1]);
    f[3] = mostafelon().mostafelons(true, true, true, false, false, secondsh, 0);
    f[4] = faelon().faelons(true, false, false, secondsh, f[3]);
    f[5] = faoolon().faoolons(true, false, false, false, false, secondsh, f[3]+f[4]);


    int res=0;
    for (int i=0; i<f.length; i++ ){

      if(f[i]>0){
        res += 1;
      }

    }
    if(res==6){
      return true;
    }



    return false;
    */

  }




}