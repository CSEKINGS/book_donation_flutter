import 'package:shared_preferences/shared_preferences.dart';

import 'theme.dart';
import 'theme_notifier.dart';

/// shared_preference to store the value of dark theme boolean
void onThemeChanged(bool value, ThemeNotifier themeNotifier) async {
  (value)
      ? themeNotifier.setTheme(darkTheme)
      : themeNotifier.setTheme(lightTheme);
  var prefs = await SharedPreferences.getInstance();
  await prefs.setBool('darkMode', value);
}
