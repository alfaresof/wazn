import '../../taffeelat/toremove/faeelaton.dart';

class ramal{

  bool ramals(String firstsh , String secondsh){




    List<int> f = [0,0,0,0,0,0];
    f[0] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, firstsh, 0);
    f[1] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, firstsh, f[0]);
    f[2] = faeelaton().faeelatons(true, true, true, true, true, true, false, false, false, false, firstsh, f[0]+f[1]);
    f[3] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, secondsh, 0);
    f[4] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, secondsh, f[3]);
    f[5] = faeelaton().faeelatons(true, true, true, true, true, true, false, false, false, false, secondsh, f[3]+f[4]);




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

  bool ramalm(String firstsh , String secondsh){

    faeelaton fi = new faeelaton();


    List<int> f = [0,0,0,0];
    f[0] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, firstsh, 0);
    f[1] = faeelaton().faeelatons(true, true, true, true, false, false, true, true, false, false, firstsh, f[0]);
    f[2] = faeelaton().faeelatons(true, true, false, false, false, false, false, false, false, false, secondsh, 0);
    f[3] = faeelaton().faeelatons(true, true, true, true, false, false, true, true, false, false, secondsh, f[2]);





    int res=0;
    for (int i=0; i<f.length; i++ ){
      print(f[i]);
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