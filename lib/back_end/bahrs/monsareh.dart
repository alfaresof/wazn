import 'package:wazn/back_end/taffeelat/mafolato.dart';
import 'package:wazn/back_end/taffeelat/mostafelon.dart';

class monsareh {



  bool monsarehs(String firstsh , String secondsh){



  List<int> f = [0,0,0,0,0,0];

 f[0] = mostafelon().mostafelons(true, true, true, true, false, firstsh, 0);
 f[1] = mafolato().mafolatos(true, true, firstsh, f[0]);
 f[2] = mostafelon().mostafelons(true, true, false, false, true, firstsh, f[0]+f[1]);
  f[3] = mostafelon().mostafelons(true, true, true, true, false, secondsh, 0);
  f[4] = mafolato().mafolatos(true, true, secondsh, f[3]);
  f[5] = mostafelon().mostafelons(true, true, false, false, true, secondsh, f[3]+f[4]);




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