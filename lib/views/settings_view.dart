import 'package:flutter/material.dart';

/// Settings page
class SettingsView extends StatefulWidget {
  /// default constructor
  const SettingsView({Key key}) : super(key: key);

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(),
    ));
  }
}
