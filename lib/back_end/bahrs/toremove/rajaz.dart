import 'package:wazn/back_end/taffeelat/toremove/mostafelon.dart';

class rajaz{

  bool rajazs(String firstsh , String secondsh){


    mostafelon fi = new mostafelon();


    List<int> f = [0,0,0,0,0,0];

    f[0]= mostafelon().mostafelons(true, true, true, true, false, firstsh, 0);
    f[1]= mostafelon().mostafelons(true, true, true, true, false, firstsh, f[0]);
    f[2]= mostafelon().mostafelons(true, true, true, true, true, firstsh, f[0]+f[1]);
    f[3]= mostafelon().mostafelons(true, true, true, true, false, secondsh, 0);
    f[4]= mostafelon().mostafelons(true, true, true, true, false, secondsh, f[4]);
    f[5]= mostafelon().mostafelons(true, true, true, true, true, secondsh, f[4]+f[5]);
    

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