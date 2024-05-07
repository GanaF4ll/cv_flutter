// fichier de navigation
import "package:flutter/material.dart";
import "home.dart";
import "experience.dart";
import "formation.dart";
import "competence.dart";
import "info.dart";

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentScreen = 0;
  final List<Widget> _screenList = [
    HomeScreen(),
    ExperienceScreen(),
    FormationScreen(),
    CompetenceScreen(),
    InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("!React Native"),
      ),
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentScreen,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Moi'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.work,
                ),
                label: 'Expériences'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wallet_travel_sharp,
                ),
                label: 'Formation'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.code,
                ),
                label: 'Compétences'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.info_outlined,
                ),
                label: 'Infos'),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
