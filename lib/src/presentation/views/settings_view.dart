import 'package:book_donation/src/config/theme/theme.dart';
import 'package:book_donation/src/config/theme/theme_notifier.dart';
import 'package:book_donation/src/config/theme/theme_shared_pref.dart';
import 'package:book_donation/src/presentation/widgets/custom_list_tile_icon.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

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
              leading: const CustomListTileIcon(
                tileIcon: LineIcons.palette,
                iconColor: Color(0xFFD85A71),
                iconBackgroundColor: Color(0xFFF0D9DF),
              ),
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
