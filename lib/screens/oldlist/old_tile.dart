import 'package:flutter/material.dart';
import 'package:wazn/models/olde.dart';
import 'package:wazn/screens/home/home.dart';
import 'package:wazn/screens/home/resu.dart';
import 'package:wazn/screens/home/wazn.dart';
import 'package:wazn/screens/oldlist/old.dart';

class old_tile extends StatelessWidget {
  final olde oldes;
  const old_tile({Key? key, required this.oldes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showresult() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              color: Colors.black87,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 60),
              child: result_wazn(
                  first_w: oldes.first,
                  second_w: oldes.second,
                 ),
            );
          });
    }

    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        color: Colors.amber,
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))),
          title: Text(
            '${oldes.first} \n ${oldes.second}',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontFamily: 'cairo', fontSize: 20),
          ),
          subtitle: Text(
            'البحر : ${oldes.resu}',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 20,
                color: Colors.amber,
                backgroundColor: Colors.black),
          ),
          onTap: (() => _showresult()),
        ),
      ),
    );
  }
}
