import 'package:flutter/material.dart';

class HomeBottomNavigationBarScreen extends StatefulWidget {
  const HomeBottomNavigationBarScreen({super.key});

  @override
  State<HomeBottomNavigationBarScreen> createState() => _HomeBottomNavigationBarScreenState();
}

class _HomeBottomNavigationBarScreenState extends State<HomeBottomNavigationBarScreen> {
  late int _selectedItemIndex;
  final List<Widget> _widgets = [
    ViewPageItem(pageName: 'page1'),
    ViewPageItem(pageName: 'page2'),
    ViewPageItem(pageName: 'page3')
  ] ;

  @override
  void initState() {
    super.initState();
    _selectedItemIndex = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets.elementAt(_selectedItemIndex),
      bottomNavigationBar:
      BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        ],
        currentIndex: _selectedItemIndex,
        onTap: _onTapped,
      ),
    );
  }

  void _onTapped(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }
}

class ViewPageItem extends StatelessWidget {
  ViewPageItem({required this.pageName, super.key});
  String pageName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(pageName),
    );
  }
}

