import 'package:flutter/material.dart';
import 'package:wazn/back_end/maino.dart';
import 'package:wazn/back_end/search.dart';
import 'package:wazn/screens/home/resu.dart';

class waznpage extends StatefulWidget {

  const waznpage({Key? key}) : super(key: key);
  @override
  State<waznpage> createState() => _waznpageState();
}

class _waznpageState extends State<waznpage> {
  String first = "";
  String second = "";
  String a ="" , b="" ;
  @override
  Widget build(BuildContext context) {
    void _showresult(String a , String b) {

      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              color: Colors.black87,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 60),
              child: result_wazn(
                first_w: a,
                second_w: b,
              ),
            );
          });




    }

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          child:  Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  'أدخل البيت الشعري',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontFamily: 'cairo',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  onChanged: (val){
                    setState(() {
                      first = val;
                      a = search().searchn(val);
                    } );
                  },
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    prefixIconColor: Colors.black,
                    contentPadding: EdgeInsets.all(8),
                    hintStyle:
                        TextStyle(color: Colors.black, fontFamily: 'cairo_light'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: 'ادخل الشطر الأول',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (val){
                    setState(()  {
                      second = val;
                      b = search().searchn(val);
                    });
                  },
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    prefixIconColor: Colors.black,
                    contentPadding: EdgeInsets.all(8),

                    hintStyle:
                        TextStyle(color: Colors.black, fontFamily: 'cairo_light'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: 'ادخل الشطر الثاني',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  onPressed: (() =>_showresult(first, second)),
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'أوجد الوزن',
                    style: TextStyle(fontFamily: 'cairo', fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                Text(
                  '${a}',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontFamily: 'cairo',
                  ),
                ),
                Text(
                  '${b}',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontFamily: 'cairo',
                  ),
                ),
                Text(
                  'تعليمات مهمّة',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontFamily: 'cairo',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'شوية اسطر من التعليمات',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 10,
                    fontFamily: 'cairo',
                  ),
                ),

              ],
            ),
          ),
        ),

    );
  }
}
