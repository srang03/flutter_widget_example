import 'package:flutter/material.dart';
import 'package:tabbar_bottombar_example_230906/screen/home_page/home_tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: HomeTabbar()),
    );
  }
}
