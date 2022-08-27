import 'package:wazn/back_end/taffeelat/toremove/faeelaton.dart';
import 'package:wazn/back_end/taffeelat/toremove/mostafelon.dart';

class khafef {

  bool khafefs(String firstsh , String secondsh){

    faeelaton fi = new faeelaton();
    mostafelon fo = new mostafelon();

    List<int> f = [0,0,0,0,0,0];
    f[0] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, firstsh, 0);
    f[1] = mostafelon().mostafelons(true, true, true, false, false, firstsh, f[0]);
    f[2] = faeelaton().faeelatons(true, true, false, true, false, false, false, false, false, true, firstsh, f[0]+f[1]);
    f[3] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, secondsh, 0);
    f[4] = mostafelon().mostafelons(true, true, true, false, false, secondsh, f[3]);
    f[5] = faeelaton().faeelatons(true, true, false, true, false, false, false, false, false, true, secondsh, f[3]+f[4]);





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
  bool khafefm(String firstsh , String secondsh){

    faeelaton fi = new faeelaton();
    mostafelon fo = new mostafelon();

    List<int> f = [0,0,0,0];
    f[0] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, firstsh, 0);
    f[1] = mostafelon().mostafelons(true, true, false, false, false, firstsh, f[0]);
    f[2] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, secondsh, 0);
    f[3] = mostafelon().mostafelons(true, true, false, false, false, secondsh, f[2]);






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