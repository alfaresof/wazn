
import 'package:wazn/back_end/taffeelat/toremove/faeelaton.dart';
import 'package:wazn/back_end/taffeelat/toremove/motfaelon.dart';

class kamel{

  bool kamels(String firstsh , String secondsh){

    motfaelon fi = new motfaelon();


    List<int> f = [0,0,0,0,0,0];
    f[0] = motfaelon().motfaelons(true, true, false, false, false, false, false, false, false, false, firstsh, 0);
    f[1] = motfaelon().motfaelons(true, true, false, false, false, false, false, false, false, false, firstsh, f[0]);
    f[2] = motfaelon().motfaelons(true, true, true, true, false, true, false, false, false, false, firstsh, f[1]+f[0]);
    f[3] = motfaelon().motfaelons(true, true, false, false, false, false, false, false, false, false, secondsh, 0);
    f[4] = motfaelon().motfaelons(true, true, false, false, false, false, false, false, false, false, secondsh, f[3]);
    f[5] = motfaelon().motfaelons(true, true, false, false, false, true, false, false, false, false, secondsh, f[3]+f[4]);





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

  bool kamelm(String firstsh , String secondsh){

    motfaelon fi = new motfaelon();


    List<int> f = [0,0,0,0,0,0];
    f[0] = motfaelon().motfaelons(true, true, false, false, false, false, false, false, false, false, firstsh, 0);
    f[1] = motfaelon().motfaelons(true, true, true, true, false, false, true, true, true, true, firstsh, f[0]);
    f[2] = motfaelon().motfaelons(true, true, false, false, false, false, false, false, false, false, secondsh, 0);
    f[3] = motfaelon().motfaelons(true, true, true, true, false, false, true, true, true, true, secondsh, f[2]);





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