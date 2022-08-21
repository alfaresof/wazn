import 'package:wazn/back_end/bahrs/baseet.dart';
import 'package:wazn/back_end/bahrs/hazj.dart';
import 'package:wazn/back_end/bahrs/kamel.dart';
import 'package:wazn/back_end/bahrs/khafef.dart';
import 'package:wazn/back_end/bahrs/maded.dart';
import 'package:wazn/back_end/bahrs/modareh.dart';
import 'package:wazn/back_end/bahrs/mohdath.dart';
import 'package:wazn/back_end/bahrs/mojtath.dart';
import 'package:wazn/back_end/bahrs/moktqteb.dart';
import 'package:wazn/back_end/bahrs/monsareh.dart';
import 'package:wazn/back_end/bahrs/motokareb.dart';
import 'package:wazn/back_end/bahrs/rajaz.dart';
import 'package:wazn/back_end/bahrs/ramal.dart';
import 'package:wazn/back_end/bahrs/sareeh.dart';
import 'package:wazn/back_end/bahrs/taweel.dart';
import 'package:wazn/back_end/bahrs/wafer.dart';
import 'package:wazn/back_end/search.dart';

class maino{


     List<String> mainos(String A, String B){
       print("object");
    String first = search().searchn(A);
    String second = search().searchn(B);
    print(first);
    print(second);
    List<bool> f = [
      basset().bassets(first, second),
      basset().bassetm(first, second),
      hazj().hazjs(first, second),
      kamel().kamels(first, second),
      kamel().kamelm(first, second),
      khafef().khafefs(first, second),
      khafef().khafefm(first, second),
      maded().madeds(first, second),
      modareh().modarehs(first, second),
      mohdath().mohdaths(first, second),
      mojtath().mojtaths(first, second),
      moktateb().moktatebs(first, second),
      monsareh().monsarehs(first, second),
      motokareb().motokarebs(first, second),
      rajaz().rajazs(first, second),
      ramal().ramals(first, second),
      ramal().ramalm(first, second),
      sareeh().sareehs(first, second),
      taweel().taweels(first, second),
      wafer().wafers(first, second),
      wafer().waferm(first, second),

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


