
import '../../taffeelat/toremove/mafaeelon.dart';

class hazj{

  bool hazjs(String firstsh , String secondsh){



    List<int> f = [0,0,0,0];

  f[0] = mafaeelon().mafaeelons(true, false, false, true, false, firstsh, 0);
  print(f[0]);
  f[1] = mafaeelon().mafaeelons(true, false, false, true, false, firstsh, f[0]);
  print(f[1]);
  f[2] = mafaeelon().mafaeelons(true, false, false, true, false, secondsh, 0);
  f[3] = mafaeelon().mafaeelons(true, false, false, true, false, secondsh, f[2]);

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