import 'package:wazn/back_end/bahrs/findbahr.dart';



class allbahrs{

//******************** بداية الطويل *******************

  static bool tawwel_n (List<String> shatr ){//not finish
    if (shatr[1].length > 24){
      return false;
    }
    List<List<List<bool>>> basset_bool = [
      [
        [true, true, false, false, false],//first
        [true, false, false, false, true],//sec
        [true, true, false, false, false],//thir
        [true, false, false, false, true]
      ],//fourth
      [
        [true, true, false, false, false],//first
        [true, false, false, false, true],//sec
        [true, true, false, false, false],
        [true, false, false, false, true]
      ],
    ];
    List<int> basset_taf = [2,3,2,3];
    List<List<int>> basset_result = [[0,0,0,0],[0,0,0,0]];
    return findit.findbahrso(basset_bool, basset_taf, basset_result, shatr);

  }// بحر الطويل
//******************** نهاية الطويل *******************


//******************** بداية البسيط *******************

  static bool basset_n (List<String> shatr ){
    if (shatr[1].length > 24){
      return false;
    }
  List<List<List<bool>>> basset_bool = [
  [[true, true, true, false, false],//first
  [true, true, false],//sec
  [true, true, true, false, false],//thir
  [false, true, true]],//fourth
  [[true, true, true, false, false],//first
  [true, true, false],//sec
  [true, true, true, false, false],
  [false,true,true]],
  ];
  List<int> basset_taf = [6,1,6,1];
  List<List<int>> basset_result = [[0,0,0,0],[0,0,0,0]];
  return findit.findbahrso(basset_bool, basset_taf, basset_result, shatr);

  }//بحر البسيط الطبيعي


  static bool basset_m ( List<String> shatr){
    if (shatr[1].length > 17){
      return false;
    }
    List<List<List<bool>>> a = [
      [[true, true, true, false, false],
        [true, false, false],
        [true, false, false, false, false]],
      [[true, true, true, false, false],
        [true, false, false],
        [true, false, false, false, false]],
    ];
    List<int> taf = [6,1,2];
    List<List<int>> f = [[0,0,0],[0,0,0]];
    print(findit.findbahrso(a, taf, f, shatr));

    return findit.findbahrso(a, taf, f, shatr);

  }//بحر مجزوء البسيط
//******************** نهاية البسيط  *******************

//******************** بداية الكامل *******************
  static bool kamel_n (List<String> shatr ){
    if (shatr[1].length > 21){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, false, false, false, false, false, false, false, false],
        [true, true, true, true, false, true, false, false, false, false]//sec
      ],
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, false, false, false, false, false, false, false, false],//sec
        [true, true, false, false, false, true, false, false, false, false]
      ],
    ];
    List<int> _taf = [7,7,7];
    List<List<int>> _result = [[0,0,0],[0,0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر الكامل العادي

  static bool kamel_m (List<String> shatr ){
    if (shatr[1].length > 14){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, true, true, false, false, true, true, true, true]
      ],
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, true, true, false, false, true, true, true, true]//sec

      ],
    ];
    List<int> _taf = [7,7];
    List<List<int>> _result = [[0,0],[0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر الكامل المجزوء
//******************** نهاية الكامل *******************

  //******************** بداية الوافر  *******************
  static bool wafer_n (List<String> shatr ){
    if (shatr[1].length > 19){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, false],//first
        [true, true, false],
        [true, false, false, false, false]//sec
      ],
      [
        [true, true, false],//first
        [true, true, false],//sec
        [true, false, false, false, false]
      ],
    ];
    List<int> _taf = [5,5,2];
    List<List<int>> _result = [[0,0,0],[0,0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر الوافر العادي

  static bool wafer_m (List<String> shatr ){
    if (shatr[1].length > 14){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, false],//first
        [true, false, false]
      ],
      [
        [true, true, false],//first
        [true, true, false]//sec

      ],
    ];
    List<int> _taf = [5,5];
    List<List<int>> _result = [[0,0],[0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر الوافر المجزوء

//******************** نهاية الوافر *******************

  //******************** بداية الخفيف  *******************
  static bool khafef_n (List<String> shatr ){
    if (shatr[1].length > 21){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, true, false, false],
        [true, true, false, true, false, false, false, false, false, true]//sec
      ],
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, true, false, false],//sec
        [true, true, false, true, false, false, false, false, false, true]
      ],
    ];
    List<int> _taf = [0,6,0];
    List<List<int>> _result = [[0,0,0],[0,0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر الخفيف العادي

  static bool khafef_m (List<String> shatr ){
    if (shatr[1].length > 14){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, false, false, false]
      ],
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, false, false, false]//sec

      ],
    ];
    List<int> _taf = [0,6];
    List<List<int>> _result = [[0,0],[0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر الخفيف المجزوء

//******************** نهاية الخفيف *******************


  //******************** بداية الرمل  *******************
  static bool ramal_n (List<String> shatr ){
    if (shatr[1].length > 21){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, false, false, false, false, false, false, false, false],
        [true, true, true, true, true, true, false, false, false, false]//sec
      ],
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, false, false, false, false, false, false, false, false],//sec
        [true, true, true, true, true, true, false, false, false, false]
      ],
    ];
    List<int> _taf = [0,0,0];
    List<List<int>> _result = [[0,0,0],[0,0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر الخفيف العادي

  static bool ramal_m (List<String> shatr ){
    if (shatr[1].length > 14){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, true, true, false, false, true, true, false, false]
      ],
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, true, true, false, false, true, true, false, false]//sec

      ],
    ];
    List<int> _taf = [0,0];
    List<List<int>> _result = [[0,0],[0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر الرمل المجزوء

//******************** نهاية الرمل *******************







  //******************** بداية المتقارب  *******************
  static bool motokareb_n (List<String> shatr ){
    if (shatr[1].length > 20){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, false, false, false],//first
        [true, true, false, false, false],//first
        [true, true, false, false, false],
        [true, true, true, true, true]
      ],
      [
        [true, true, false, false, false],//first
        [true, true, false, false, false],//first
        [true, true, false, false, false],
        [true, true, true, true, true]
      ],
    ];
    List<int> _taf = [2,2,2,2];
    List<List<int>> _result = [[0,0,0,0],[0,0,0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر المتقارب العادي

//******************** نهاية المتقارب *******************



  //******************** بداية المنسرح  *******************
  static bool monsareh_n (List<String> shatr ){
    if (shatr[1].length > 21){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, true, true, false],//first
        [true, true],//first
        [true, true, false, false, true]
      ],
      [
        [true, true, true, true, false],//first
        [true, true],//first
        [true, true, false, false, true]
      ],
    ];
    List<int> _taf = [6,4,6];
    List<List<int>> _result = [[0,0,0],[0,0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر المنسرح العادي

//******************** نهاية المنسرح *******************


  //******************** بداية السريع  *******************
  static bool sareeh_n (List<String> shatr ){
    if (shatr[1].length > 19){
      return false;
    }

    List<List<List<bool>>> _bool = [
      [
        [true, true, true, true, false],//first
        [true, true, true, true, false],//first
        [true, true, true]
      ],
      [
        [true, true, true, true, false],//first
        [true, true, true, true, false],//first
        [true, true, true]
      ],
    ];
    List<int> _taf = [6,6,1];
    List<List<int>> _result = [[0,0,0],[0,0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر المنسرح العادي

//******************** نهاية السريع *******************



  //******************** بداية المقتضب  *******************
  static bool moktateb_n (List<String> shatr ){
    if (shatr[1].length > 12){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, false, false],//first
        [true, false, false],//first
      ],
      [
        [true, false, false],//first
        [true, false, false],//first
      ],
    ];
    List<int> _taf = [1,5];
    List<List<int>> _result = [[0,0],[0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر لمجتث العادي

//******************** نهاية المقتضب *******************

//******************** بداية المجتث  *******************
  static bool mojtath_n (List<String> shatr ){
    if (shatr[1].length > 14){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, true, false, false],//first
        [true, true, false, false, false, false, false, false, false, true],//first
      ],
      [
        [true, true, true, false, false],//first
        [true, true, false, false, false, false, false, false, false, true],//first
      ],
    ];
    List<int> _taf = [6,0];
    List<List<int>> _result = [[0,0],[0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر لمجتث العادي

//******************** نهاية المجتث *******************

//******************** بداية المحدث  *******************
  static bool mohdath_n (List<String> shatr ){
    if (shatr[1].length > 20){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, true],//first
        [true, true, true],//first
        [true, true, true],//first
        [true, true, true],//first
      ],
      [
        [true, true, true],//first
        [true, true, true],//first
        [true, true, true],//first
        [true, true, true],//first

      ],
    ];
    List<int> _taf = [1,1,1,1];
    List<List<int>> _result = [[0,0,0,0],[0,0,0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر المحدث العادي

//******************** نهاية المحدث *******************

//******************** بداية المضارع  *******************
  static bool modareh_n (List<String> shatr ){
    if (shatr[1].length > 13){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [false, false, false, true, false],//first
        [true, false, false, false, false, false, false, false, false, false]
      ],
      [
        [false, false, false, true, false],//first
        [true, false, false, false, false, false, false, false, false, false]
      ],
    ];
    List<int> _taf = [3,0];
    List<List<int>> _result = [[0,0],[0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر المضارع العادي

//******************** نهاية المضارع *******************


  //******************** بداية الرجز  *******************
  static bool rajaz_n (List<String> shatr ){
    if (shatr[1].length > 21){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, true, true, false],//first
        [true, true, true, true, false],
        [true, true, true, true, true]//sec
      ],
      [
        [true, true, true, true, false],//first
        [true, true, true, true, false],
        [true, true, true, true, true]//sec
      ],
    ];
    List<int> _taf = [6,6,6];
    List<List<int>> _result = [[0,0,0],[0,0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر الرجز العادي

//******************** نهاية الرجز *******************



  //******************** بداية المديد  *******************
  static bool maded_n (List<String> shatr ){
    if (shatr[1].length > 19){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, false],
        [true, true, true, true, true, true, false, false, true, false]//sec
      ],
      [
        [true, true, false, false, false, false, false, false, false, false],//first
        [true, true, false],//sec
        [true, true, true, true, true, true, false, false, true, false]
      ],
    ];
    List<int> _taf = [0,1,0];
    List<List<int>> _result = [[0,0,0],[0,0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر المديد العادي

//******************** نهاية المديد *******************

  //******************** بداية الهزج *******************

  static bool hazj_n (List<String> shatr ){
    if (shatr[1].length > 14){
      return false;
    }
    List<List<List<bool>>> _bool = [
      [[true, false, false, true, false],//first
        [true, false, false, true, false]//sec
        ],
      [[true, false, false, true, false],//first
        [true, false, false, true, false]//sec
        ],
    ];
    List<int> _taf = [3,3];
    List<List<int>> _result = [[0,0],[0,0]];
    return findit.findbahrso(_bool, _taf, _result, shatr);

  }//بحر الهزج

//******************** نهاية الهزج *******************





}
