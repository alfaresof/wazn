import 'package:flutter/material.dart';
import 'package:wazn/back_end/maino.dart';
import 'package:wazn/screens/home/home.dart';

import '../oldlist/old_tile.dart';

class result_wazn extends StatelessWidget {

  final String first_w;
  final String second_w;
  const result_wazn(
      {Key? key,
      required this.first_w,
      required this.second_w})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    List aa =  [];
   aa = maino().mainos(first_w, second_w);

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                '$aa',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.amber, fontFamily: 'cairo', fontSize: 40),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${first_w} \n ${second_w}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'cairo', fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                ' مفتاحه',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.amber, fontFamily: 'cairo', fontSize: 40),
              ),
              Text(
                'فعولن مفاعيلن فعولن مفاعيلُ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'cairo', fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              '${result_w}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.amber, fontFamily: 'cairo', fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${first_w} \n ${second_w}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'cairo', fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' مفتاحه',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.amber, fontFamily: 'cairo', fontSize: 40),
            ),
            Text(
              'فعولن مفاعيلن فعولن مفاعيلُ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'cairo', fontSize: 15),
            ),
          ],
        ),
      ),*/
