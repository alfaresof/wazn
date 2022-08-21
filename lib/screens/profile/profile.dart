import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        alignment: Alignment.topRight,
        child: Column(
          children: <Widget>[
            Text(
              'أهلاً محمد فرحات',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'cairo', fontSize: 30, color: Colors.amber),
            ),
            SizedBox(
              height: 200,
            ),
            ButtonTheme(
              height: 20,
              minWidth: 400,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'أبلغ عن مشكلة ',
                  style: TextStyle(fontFamily: 'cairo', fontSize: 20),
                ),
              ),
            ),
            ButtonTheme(
              height: 20,
              minWidth: 400,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'تسجيل الخروج',
                  style: TextStyle(fontFamily: 'cairo', fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
