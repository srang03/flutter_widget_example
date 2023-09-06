import 'package:flutter/material.dart';
import 'package:tabbar_bottombar_example_230906/screen/second_page/second_first_view.dart';
import 'package:tabbar_bottombar_example_230906/screen/second_page/second_second_view.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [ SecondFirstView(), SecondSecondView(), ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _bottomNavigationBarItem(Icons.home, ''),
          _bottomNavigationBarItem(Icons.safety_check, '')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(IconData iconData, String strLabel){
    return   BottomNavigationBarItem(icon: Icon(iconData), label: strLabel);
  }

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
