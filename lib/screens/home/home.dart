import 'package:flutter/material.dart';
import 'package:wazn/screens/home/wazn.dart';

import '../oldlist/old.dart';
import '../profile/profile.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedindex = 1;
  final tabs = [
    old(),
    waznpage(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedindex = index;
            tabs[_selectedindex];
          });
        },
        currentIndex: _selectedindex,
        backgroundColor: Colors.grey[900],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
              color: Colors.amber,
            ),
            label: 'ابيات سابقة',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow_outlined,
              color: Colors.amber,
            ),
            label: 'اوزن',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.amber,
            ),
            label: 'الملف الشخصي',
          ),
        ],
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.amber,
      ),
    );
  }
}
