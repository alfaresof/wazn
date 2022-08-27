import 'package:wazn/back_end/bahrs/toremove/baseet.dart';
import 'package:wazn/back_end/bahrs/toremove/hazj.dart';
import 'package:wazn/back_end/bahrs/toremove/kamel.dart';
import 'package:wazn/back_end/bahrs/toremove/khafef.dart';

import 'package:wazn/back_end/bahrs/toremove/mohdath.dart';
import 'package:wazn/back_end/bahrs/toremove/mojtath.dart';

import 'package:wazn/back_end/bahrs/toremove/monsareh.dart';

import 'package:wazn/back_end/bahrs/toremove/rajaz.dart';

import 'package:wazn/back_end/search.dart';
import 'package:wazn/back_end/bahrs/all_bahrs.dart';
class maino{


     List<String> mainos(String A, String B){
       print("object");
    String first = search().searchn(A);
    String second = search().searchn(B);
    List<String> res = [first,second];
    print(first);
    print(second);
    List<bool> f = [

      allbahrs.basset_n(res),
      allbahrs.basset_m(res),
      allbahrs.hazj_n(res),
      allbahrs.kamel_n(res),
      allbahrs.kamel_m(res),
      allbahrs.khafef_n(res),
      allbahrs.khafef_m(res),
      allbahrs.maded_n(res),
      allbahrs.modareh_n(res),
      allbahrs.mohdath_n(res),
      allbahrs.mojtath_n(res),
      allbahrs.moktateb_n(res),
      allbahrs.monsareh_n(res),
      allbahrs.motokareb_n(res),
      allbahrs.rajaz_n(res),
      allbahrs.ramal_n(res),
      allbahrs.ramal_m(res),
      allbahrs.sareeh_n(res),
      allbahrs.tawwel_n(res),
      allbahrs.wafer_n(res),
      allbahrs.wafer_m(res)

    ];
       print("objects");
    List<String> bahrso = [
      "بحر البسيط",
      "مجزوء البسيط",
      "الهزج",
      "الكامل",
      "مجزوء الكامل",
      "الخفيف",
      "مجزوء الخفيف",
      "المديد",
      "المضارع",
      "المحدث",
      "المجتث",
      "المقتضب",
      "المنسرح",
      "المتقارب",
      "الرجز",
      "الرمل",
      "مجزوء الرمل",
      "السريع",
      "الطويل",
      "الوافر",
      "مجزوء الوافر",

    ];
    List<String> resulte = [];
    for (int i =0 ; i<bahrso.length; i++){
      if(f[i]==true){
        print(bahrso[i]);
        print(f[i]);
        resulte.add(bahrso[i]);

      }

    }
    return resulte;



  }
}


