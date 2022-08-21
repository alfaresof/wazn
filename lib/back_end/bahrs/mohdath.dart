
import '../taffeelat/faelon.dart';

class mohdath{

  bool mohdaths(String firstsh , String secondsh){


    faelon fa = new faelon();

/*
لكافة التفعيلات في كل شطر، ثلاثة احتمالات:
   صحيحة: 1010110
    مخبونة: 110110
    مطوية: 101110
    *****************
*/
    List<int> f = [0,0,0,0,0,0,0,0];

    f[0]=faelon().faelons(true, true, true, firstsh, 0);
    f[1]=faelon().faelons(true, true, true, firstsh, f[0]);
    f[2]=faelon().faelons(true, true, true, firstsh, f[0]+f[1]);
    f[3]=faelon().faelons(true, true, true, firstsh, f[0]+f[1]+f[2]);
    f[4]=faelon().faelons(true, true, true, secondsh, 0);
    f[5]=faelon().faelons(true, true, true, secondsh, f[4]);
    f[6]=faelon().faelons(true, true, true, secondsh, f[4]+f[5]);
    f[7]=faelon().faelons(true, true, true, secondsh, f[4]+f[5]+f[6]);
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