import 'package:wazn/back_end/taffeelat/toremove/faeelaton.dart';

import '../../taffeelat/toremove/mafaeelon.dart';

class modareh {

  bool modarehs(String firstsh , String secondsh){

   

    List<int> f = [0,0,0,0];
    
    f[0] = mafaeelon().mafaeelons(false, false, false, true, false, firstsh, 0);
    f[1] = faeelaton().faeelatons(true, false, false, false, false, false, false, false, false, false, firstsh, f[0]);
    f[2] = mafaeelon().mafaeelons(false, false, false, true, false, secondsh, 0);
    f[3] = faeelaton().faeelatons(true, false, false, false, false, false, false, false, false, false, secondsh, f[0]);







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