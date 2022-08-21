import 'package:wazn/back_end/taffeelat/faoolon.dart';
import 'package:wazn/back_end/taffeelat/mofaalaton.dart';

class wafer{


  bool wafers(String firstsh , String secondsh){




    List<int> f = [0,0,0,0,0,0];
   f[0] = mofaalaton().mofaalatons(true, true, false, firstsh, 0);
   f[1] = mofaalaton().mofaalatons(true, true, false, firstsh, f[0]);
   f[2] = faoolon().faoolons(true, false, false, false, false, firstsh, f[0]+f[1]);
    f[3] = mofaalaton().mofaalatons(true, true, false, secondsh, 0);
    f[4] = mofaalaton().mofaalatons(true, true, false, secondsh, f[3]);
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
  }
  bool waferm(String firstsh , String secondsh){




    List<int> f = [0,0,0,0];
    f[0] = mofaalaton().mofaalatons(true, true, false, firstsh, 0);
    f[1] = mofaalaton().mofaalatons(true, false, false, firstsh, f[0]);
    f[2] = mofaalaton().mofaalatons(true, true, false, firstsh, 0);
    f[3] = mofaalaton().mofaalatons(true, true, false, firstsh, f[2]);
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