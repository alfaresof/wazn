import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wazn/back_end/search.dart';
import 'package:wazn/screens/home/home.dart';
import 'package:wazn/screens/wrapper.dart';
import 'package:wazn/service/auth.dart';
import 'package:flutter/services.dart';
import 'models/user.dart';

void main() async {

  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    search();
    return MaterialApp(
      home: home(),
    );
    /* return StreamProvider<usera?>.value(
      value: authservice().user,
      catchError: (usera, user) {},
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );*/
  }
}