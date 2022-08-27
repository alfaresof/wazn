
import 'package:wazn/back_end/taffeelat/toremove/faelon.dart';
import 'package:wazn/back_end/taffeelat/toremove/mafolato.dart';
import 'package:wazn/back_end/taffeelat/toremove/mofaalaton.dart';

class moktateb{

  bool moktatebs(String firstsh , String secondsh){


   mafolato fi = new mafolato();
/*
لكافة التفعيلات في كل شطر، ثلاثة احتمالات:
   صحيحة: 1010110
    مخبونة: 110110
    مطوية: 101110
    *****************
*/
    List<int> f = [0,0,0,0];

    f[0]= faelon().faelons(true, false, false, firstsh, 0);
    f[1]= mofaalaton().mofaalatons(true, false, false,  firstsh, f[0]);
    f[2]= faelon().faelons(true, false, false, secondsh, 0);
    f[3]= mofaalaton().mofaalatons(true, false, false,  secondsh, f[2]);
    int res=0;
    for (int i=0; i<f.length; i++ ){

      if(f[i]>0){
        res += 1;
      }

    }
    if(res==4){
      return true;
    }



    return false;
  }






}