import 'package:wazn/back_end/taffeelat/toremove/faelon.dart';
import 'package:wazn/back_end/taffeelat/toremove/mostafelon.dart';

class sareeh{


  bool sareehs(String firstsh , String secondsh){




    List<int> f = [0,0,0,0,0,0];
    f[0] = mostafelon().mostafelons(true, true, true, true, false, firstsh, 0);
    f[1] = mostafelon().mostafelons(true, true, true, true, false, firstsh, f[0]);
    f[2] = faelon().faelons(true, true, true, firstsh, f[0]+f[1]);
    f[3] = mostafelon().mostafelons(true, true, true, true, false, firstsh, 0);
    f[4] = mostafelon().mostafelons(true, true, true, true, false, firstsh, f[3]);
    f[5] = faelon().faelons(true, true, true, firstsh, f[3]+f[4]);



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
  }





}