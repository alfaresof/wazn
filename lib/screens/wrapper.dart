import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wazn/screens/home/home.dart';

import '../models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return home();
    /* final user = Provider.of<usera?>(context);
    print(user);
    //return home or auth widget
    if (user == null) {
      return Container();
    } else {
      return Container();
    }*/
  }
}
