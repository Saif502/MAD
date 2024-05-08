import 'package:flutter/material.dart';
import 'package:my_app/home.dart';
import 'package:my_app/search.dart';
import 'package:my_app/settings.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  var screens = [
    const HomeScreen(),
    const SearchScreen(),
    const SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        //currentIndex: _selectedIndex,
        selectedFontSize: 17,
        backgroundColor: Colors.green[200],
        onTap: (value) {
          print("selected value: $value");

          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
    );
  }
}
