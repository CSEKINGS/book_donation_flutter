import 'package:book_donation/views/dashboard_view.dart';
import 'package:book_donation/views/map_view.dart';
import 'package:book_donation/views/miscellaneous_view.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

/// The first screen of the app after login.
/// This shows a navigation bar to navigate to other screen
class HomeNavigationView extends StatefulWidget {
  /// default constructor
  const HomeNavigationView({Key? key}) : super(key: key);

  @override
  _HomeNavigationViewState createState() => _HomeNavigationViewState();
}

class _HomeNavigationViewState extends State<HomeNavigationView> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const DashboardView(),
    const MapView(),
    const MiscellaneousView(),
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
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                LineIcons.home,
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                LineIcons.mapMarked,
              ),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                LineIcons.user,
              ),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}
