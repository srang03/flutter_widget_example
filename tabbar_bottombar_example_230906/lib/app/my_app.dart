import 'package:flutter/material.dart';
import 'package:tabbar_bottombar_example_230906/screen/home_page/home_screen.dart';
import 'package:tabbar_bottombar_example_230906/screen/second_page/second_screen.dart';

import '../screen/second_page_review/home_bottom_navigation_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeBottomNavigationBarScreen(
      ),
    );
  }
}
