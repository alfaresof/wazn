import 'dart:ffi';

import 'package:wazn/back_end/bahrs/toremove/baseet.dart';
import 'package:wazn/back_end/bahrs/toremove/hazj.dart';
import 'package:wazn/back_end/bahrs/toremove/mohdath.dart';
import 'package:wazn/back_end/taffeelat/MaTaffelat.dart';
class search{
   String searchn(String bb){

       String shatr = bb;
       shatr = methods.replacea(shatr);
       shatr = shatr.replaceAll(' ', '');
        print(shatr);
       
       String results = "" ;

       for (int i = 0; i < shatr.length; i++) {
         int a = shatr.codeUnitAt(i);

         //we will divde it to two , with harakah , without
         if(i+2 < shatr.length){

           int b = shatr.codeUnitAt(i+1);
           int c = shatr.codeUnitAt(i+2);
           print(String.fromCharCode(a));
           print(String.fromCharCode(b));

           if(methods._IsHarf(a)&&methods._IsHarf(b)){

             if(methods._IsItMad(a)&& methods._IsItAL(a, b)==false){
               print('mad');
               results += '0';

             }else if(i+1 == shatr.length -1&&methods._IsItAL(a, b)==true){
               print('mad again');
              results += '0';
             }else if(methods._IsItAL(a, b)) {
               print('al');
               if (methods._IsItSunny(a, b, shatr.codeUnitAt(i + 3))) {
                 results += "01";
                 i += 3;
                 if (methods._IsItHarakah(shatr.codeUnitAt(i + 4))) {
                   i++;
                 }
               } else {
                 print(methods._IsItMad(shatr.codeUnitAt(i-1)));

                 if(methods._IsItMad(shatr.codeUnitAt(i-1))==false){
                 results += '0';

                 }
                 i += 1;
               }

             }else{
            if (methods._IsItMad(b)&&methods.typeof(c)=='-1'){
              print('before mad');
              results += '1';
            }else {
              print('sokon');
              results += '0';
            }}

           }else{
             results += methods.typeof(b);
             print(methods.typeof(b));
             if(methods.typeof(b)=='01'&&methods.typeof(c)=='1'){
               print("+++++");
               i +=1;
               print("+++++");
             }
             if (i+1 != shatr.length-1){
             i += 1;}
           }

         }else{
           if(methods._IsItMad(a)){
             results += '0';
           }else if(methods.typeof(a)==1){
             results += '0';
           }else{
             if( methods.typeof(a)!= '-1'){
             results += methods.typeof(a);
           }

           }
           if(methods._IsHarf(a)&& i == shatr.length -1){
             results += '0';
           }
         }

        print(results);

        /*
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
                 if ((methods._IsItHarakah(shatr.codeUnitAt(i + 1)) == false && methods._IsItSokon(shatr.codeUnitAt(i+1))==false) && (methods._IsItAL(a, shatr.codeUnitAt(i + 1)) == false)) {
                   results += '0';
                 } else {
                   if ((i + 3) <= shatr.length) {
                     if (methods._IsItAL(a, shatr.codeUnitAt(i + 1))) {
                       if (methods._IsItSunny(a, shatr.codeUnitAt(i + 1), shatr.codeUnitAt(i + 3))) {
                         results += "01";
                         i += 2;
                         if (methods._IsItHarakah(shatr.codeUnitAt(i + 4))) {
                           i++;
                         }
                       } else {
                         if (methods._IsItMoony(a, shatr.codeUnitAt(i + 1), shatr.codeUnitAt(i + 2))) {
                           if (methods._IsItMad(shatr.codeUnitAt(i - 2))) {
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
                   if (methods._IsItShadah(shatr.codeUnitAt(i - 1))) {
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
       */
       }
       if (methods._IsItHarakah(shatr.codeUnitAt(shatr.length - 1))) {
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

  static bool _IsHarf(int a){
    switch (String.fromCharCode(a)) {
      case 'َ':
      case 'ِ':
      case 'ُ':
      case 'ً':
      case 'ٍ':
      case 'ٌ':
      case  'ْ':
      case 'ّ':
        return false;
    }
    return true;
  }
  static String typeof (int a){

    switch (String.fromCharCode(a)) {
      case 'َ':
      case 'ِ':
      case 'ُ':
      return "1";
      case 'ً':
      case 'ٍ':
      case 'ٌ':
    return "10";
      case  'ْ':
        return "0";
      case 'ّ':
        return "01";

    }
  return "-1";

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