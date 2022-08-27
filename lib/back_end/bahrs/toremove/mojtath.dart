import 'package:wazn/back_end/taffeelat/toremove/faeelaton.dart';
import 'package:wazn/back_end/taffeelat/toremove/mostafelon.dart';

class mojtath {

  bool mojtaths(String firstsh , String secondsh){



    List<int> f = [0,0,0,0,0,0];

    f[0] = mostafelon().mostafelons(true, true, true, false, false, firstsh, 0);
    f[1] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, true, firstsh, f[0]);
    f[2] = mostafelon().mostafelons(true, true, true, false, false, secondsh, 0);
    f[3] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, true, secondsh, f[2]);





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