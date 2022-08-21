import 'dart:ffi';

import 'package:wazn/back_end/bahrs/baseet.dart';
import 'package:wazn/back_end/bahrs/hazj.dart';
import 'package:wazn/back_end/bahrs/mohdath.dart';
import 'package:wazn/back_end/bahrs/motokareb.dart';
import 'package:wazn/back_end/bahrs/rajaz.dart';
import 'package:wazn/back_end/bahrs/taweel.dart';
class search{
   String searchn(String bb){

       String b = bb;
       b = methods.replacea(b);
        print(b);
       
       String results = "" ;

       for (int i = 0; i < b.length; i++) {
         int a = b.codeUnitAt(i);
         if (methods._IsItHarakah(a)) {
           results +=  '1';
         } else {
           if (methods._IsItSokon(a)) {
             results += '0';
           } else {
             if (methods._IsItShadah(a)) {
               results += "01";
               i++;
             } else {
               if (methods._IsItMad(a)) {
                 if ((methods._IsItHarakah(b.codeUnitAt(i + 1)) == false && methods._IsItSokon(b.codeUnitAt(i+1))==false) && (methods._IsItAL(a, b.codeUnitAt(i + 1)) == false)) {
                   results += '0';
                 } else {
                   if ((i + 3) <= b.length) {
                     if (methods._IsItAL(a, b.codeUnitAt(i + 1))) {
                       if (methods._IsItSunny(a, b.codeUnitAt(i + 1), b.codeUnitAt(i + 3))) {
                         results += "01";
                         i += 2;
                         if (methods._IsItHarakah(b.codeUnitAt(i + 4))) {
                           i++;
                         }
                       } else {
                         if (methods._IsItMoony(a, b.codeUnitAt(i + 1), b.codeUnitAt(i + 2))) {
                           if (methods._IsItMad(b.codeUnitAt(i - 2))) {
                           } else {
                             results += '0';
                           }
                         }
                       }
                     }
                   }
                 }
               } else {
                 if (methods._IsItTanween(a)) {
                   if (methods._IsItShadah(b.codeUnitAt(i - 1))) {
                     print("i am here");
                     results += '0';
                   } else {
                     print("all is good");
                     results += "10";
                   }
                 } else {
                 }
               }
             }
           }
         }
       }
       if (methods._IsItHarakah(b.codeUnitAt(b.length - 1))) {
         results += '0';
       }

       return results;
     }









  }






class methods
{

  static String replacea(String a)
  {
    List<String> aa = ["لَكِن", "هَذَا", "هَذِه", "هَذَان", "هَؤُلَاء", "هَذِي"];
    List<String> bb = ["لَاكِن", "هَاذَا", "هَاذِه", "هَاذَان", "هَاؤُلَاء", "هَاذِي"];
    for (int i = 0; i < aa.length; i++) {
      a = a.replaceAll(aa[i], bb[i]);
    }
    return a;
  }

  static bool _IsItHarakah(int a)
  {
    switch (String.fromCharCode(a)) {
      case 'َ':
      case 'ِ':
      case 'ُ':
        return true;
    }
    return false;
  }

  static bool _IsItTanween(int a)
  {
    switch (String.fromCharCode(a)) {
      case 'ً':
      case 'ٍ':
      case 'ٌ':
        return true;
    }
    return false;
  }

  static bool _IsItMad(int a)
  {
    switch (String.fromCharCode(a)) {
      case 'ا':
      case 'و':
      case 'ي':
      case 'ى':
        return true;
    }
    return false;
  }

  static bool _IsItSokon(int a)
  {
    if (String.fromCharCode(a) == 'ْ') {
      return true;
    }
    return false;
  }

  static bool _IsItShadah(int a)
  {
    if (String.fromCharCode(a) == 'ّ') {
      return true;
    }
    return false;
  }

  static bool _IsItAL(int a, int after)
  {
    if ((String.fromCharCode(a) == 'ا') && (String.fromCharCode(after) == 'ل')) {
      return true;
    }
    return false;
  }

  static bool _IsItSunny(int a, int aftera, int aftera2)
  {
    if (_IsItAL(a, aftera) && _IsItShadah(aftera2)) {
      return true;
    }
    return false;
  }

  static bool _IsItMoony(int a, int aftera, int aftera2)
  {
    if ((_IsItAL(a, aftera) && (_IsItHarakah(aftera2) == false)) && (_IsItShadah(aftera2) == false)) {
      return true;
    }
    return false;
  }
}