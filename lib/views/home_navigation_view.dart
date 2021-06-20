import 'package:book_donation/views/dashboard_view.dart';
import 'package:book_donation/views/map_view.dart';
import 'package:book_donation/views/settings_view.dart';
import 'package:flutter/material.dart';

class HomeNavigationView extends StatefulWidget {
  HomeNavigationView({Key key}) : super(key: key);

  @override
  _HomeNavigationViewState createState() => _HomeNavigationViewState();
}

class _HomeNavigationViewState extends State<HomeNavigationView> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    DashboardView(),
    MapView(),
    SettingsView(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Dashboard',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Map',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
