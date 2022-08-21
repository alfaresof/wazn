import 'package:wazn/back_end/taffeelat/faelon.dart';
import 'package:wazn/back_end/taffeelat/faoolon.dart';
import 'package:wazn/back_end/taffeelat/mostafelon.dart';

class basset{

  bool bassets(String firstsh , String secondsh){

    mostafelon fi = new mostafelon();
    faelon fa = new faelon();

/*
لكافة التفعيلات في كل شطر، ثلاثة احتمالات:
   صحيحة: 1010110
    مخبونة: 110110
    مطوية: 101110
    *****************
*/
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
  }

  bool bassetm(String firstsh , String secondsh){

    mostafelon fi = new mostafelon();
    faelon fa = new faelon();

/*
لكافة التفعيلات في كل شطر، ثلاثة احتمالات:
   صحيحة: 1010110
    مخبونة: 110110
    مطوية: 101110
    *****************
*/
    List<int> f = [0,0,0,0,0,0];

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
  }




}