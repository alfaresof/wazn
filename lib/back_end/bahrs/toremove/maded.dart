import 'package:wazn/back_end/taffeelat/toremove/faelon.dart';

import '../../taffeelat/toremove/faeelaton.dart';

class maded {

  bool madeds(String firstsh , String secondsh){

    faeelaton fi = new faeelaton();
    faelon fo = new faelon();

    List<int> f = [0,0,0,0,0,0];
    f[0] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, firstsh, 0);
    f[1] = faelon().faelons(true, true, false, firstsh, f[0]);
    f[2] = faeelaton().faeelatons(true, true, true, true, true, true, false, false, true, false, firstsh, f[0]+f[1]);
    f[3] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, firstsh, 0);
    f[4] = faelon().faelons(true, true, false, firstsh, f[3]);
    f[5] = faeelaton().faeelatons(true, true, true, true, true, true, false, false, true, false, firstsh, f[3]+f[4]);







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