// screen/device.dart
//

import 'package:flutter/material.dart';

import 'experience.dart';
import 'formation.dart';
import 'info.dart';
import 'profil.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0;
  final List<Widget> _screenList = const [
    ProfilScreen(),
    ExperienceScreen(),
    FormationScreen(),
    InfoScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rchnou'),
      ),
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          currentIndex: _currentScreen,
          onTap: onTabTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Profil'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: 'List'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_tree,
                ),
                label: 'BXL'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_alarm,
                ),
                label: 'Truc'),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}