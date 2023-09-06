import 'package:flutter/material.dart';

class HomeTabbar extends StatefulWidget {
  const HomeTabbar({super.key});

  @override
  State<HomeTabbar> createState() => _HomeTabbarState();
}

class _HomeTabbarState extends State<HomeTabbar> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: TabBar(
            controller: _tabController,
            tabs: [
              tabbarComponent('Home', Icons.home),
              tabbarComponent('Configuration', Icons.settings),
              tabbarComponent('Connection', Icons.plumbing)
            ],
          ),
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: [
            tabBarViewPage('Home Screen', Colors.red),
            tabBarViewPage('Configuration Screen', Colors.blue),
            tabBarViewPage('Connection Scrren', Colors.green)
          ]),
        )
      ],
    );
  }

  Container tabBarViewPage(String viewPageName, Color colorName) {
    return Container(
      alignment: Alignment.center,
      color: colorName,
      child: Text(viewPageName),
    );
  }

  Tab tabbarComponent(String strTabName, IconData iconData) {
    return Tab(
      icon: Icon(iconData, color: Colors.black),
      child: Text(
        strTabName,
        style: tabbarTextStyle(),
      ),
    );
  }

  TextStyle tabbarTextStyle() {
    return const TextStyle(color: Colors.black);
  }
}
