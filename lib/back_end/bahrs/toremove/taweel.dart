




import '../../taffeelat/toremove/faoolon.dart';
import '../../taffeelat/toremove/mafaeelon.dart';

class taweel{

  bool taweels(String firstsh , String secondsh){


    List<int> f = [0,0,0,0,0,0,0,0];

    f[0] = faoolon().faoolons(true, true, false, false, false, firstsh, 0);
    f[1] = mafaeelon().mafaeelons(true, false, false, false, true, firstsh, f[0]);
    f[2] = faoolon().faoolons(true, true, false, false, false, firstsh, f[0]+f[1]);
    f[3] = mafaeelon().mafaeelons(true, false, false, false, true, firstsh, f[0]+f[1]+f[2]);
    f[4] = faoolon().faoolons(true, true, false, false, false, firstsh, 0);
    f[5] = mafaeelon().mafaeelons(true, false, false, false, true, firstsh, f[4]);
    f[6] = faoolon().faoolons(true, true, false, false, false, firstsh, f[4]+f[5]);
    f[7] = mafaeelon().mafaeelons(true, false, false, false, true, firstsh, f[4]+f[5]+f[6]);

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
  }





}