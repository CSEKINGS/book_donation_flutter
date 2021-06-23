import 'package:book_donation/utils/theme/theme.dart';
import 'package:book_donation/utils/theme/theme_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// shared_preference to store the value of dark theme boolean
void onThemeChanged(bool value, ThemeNotifier themeNotifier) async {
  (value)
      ? themeNotifier.setTheme(darkTheme)
      : themeNotifier.setTheme(lightTheme);
  var prefs = await SharedPreferences.getInstance();
  await prefs.setBool('darkMode', value);
}
