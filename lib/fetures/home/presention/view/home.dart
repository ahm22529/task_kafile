import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/country/presention/view/country.dart';
import 'package:task_kafile/fetures/country/presention/view/widget/contrybo.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/bodymain.dart';
import 'package:task_kafile/fetures/services/presention/view/services.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  String selectedUserType = "both"; // إضافة هذه السطر

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          BodyMain(
              selectedUserType: selectedUserType,
              onUserTypeChanged: (value) {
                setState(() {
                  selectedUserType = value;
                });
              }),
          contry(),
          services(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("Asset/image/UserCircle.png",
                color: _selectedIndex == 0
                    ? const Color(0xff1DBF73)
                    : const Color(0xffC3C5C8)),
            label: 'Who Am I',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: const Color(0xFF1DBF73), // لون العنصر المحدد
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
