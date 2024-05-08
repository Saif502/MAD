import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //currentIndex: _selectedIndex,
      selectedFontSize: 17,
      backgroundColor: Colors.green[200],
      onTap: (value) {
        print("selected value: $value");
        if (value == 0) {
          Navigator.of(context).pushNamed('/home');
        } else if (value == 1) {
          Navigator.of(context).pushNamed('/search');
        } else {
          Navigator.of(context).pushNamed('/settings');
        }
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
    );
  }
}
