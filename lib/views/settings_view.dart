import 'package:book_donation/utils/theme/theme_notifier.dart';
import 'package:book_donation/utils/theme/theme_shared_pref.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:book_donation/utils/theme/theme.dart';

/// settings view which contains theme and other settings
class SettingsView extends StatefulWidget {
  /// default constructor
  const SettingsView({Key? key}) : super(key: key);

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  var _darkTheme = false;
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    _darkTheme = (themeNotifier.getTheme() == darkTheme);
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.brush),
              title: const Text('Theme'),
              contentPadding: const EdgeInsets.all(16.0),
              trailing: DayNightSwitcher(
                isDarkModeEnabled: _darkTheme,
                onStateChanged: (val) {
                  setState(() {
                    _darkTheme = val;
                  });
                  onThemeChanged(val, themeNotifier);
                },
              ),
            ),
          ],
        ));
  }
}
