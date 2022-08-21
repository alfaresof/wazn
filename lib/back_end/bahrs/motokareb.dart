import 'package:wazn/back_end/taffeelat/faoolon.dart';

class motokareb{

bool motokarebs(String firstsh , String secondsh){


  faoolon fi = new faoolon();


  List<int> f = [0,0,0,0,0,0,0,0];

  f[0]=faoolon().faoolons(true, true, false, false, false, firstsh, 0);
  f[1]=faoolon().faoolons(true, true, false, false, false, firstsh, f[0]);
  f[2]=faoolon().faoolons(true, true, false, false, false, firstsh, f[0]+f[1]);
  f[3]=faoolon().faoolons(true, true, true, true, true, firstsh, f[0]+f[1]+f[2]);
  f[4]=faoolon().faoolons(true, true, false, false, false, secondsh, 0);
  f[5]=faoolon().faoolons(true, true, false, false, false, secondsh, f[4]);
  f[6]=faoolon().faoolons(true, true, false, false, false, secondsh, f[4]+f[5]);
  f[7]=faoolon().faoolons(true, true, true, true, true, secondsh, f[4]+f[5]+f[6]);

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