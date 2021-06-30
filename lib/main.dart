import 'package:book_donation/utils/theme/theme.dart';
import 'package:book_donation/utils/theme/theme_notifier.dart';
import 'package:book_donation/views/registration_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// transparent status bar not working
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  // ));
  await SharedPreferences.getInstance().then((prefs) {
    /// change this to false if you want to start app with light theme.
    var darkModeOn = prefs.getBool('darkMode') ?? false;
    runApp(
      ChangeNotifierProvider<ThemeNotifier>(
        create: (context) => ThemeNotifier(darkModeOn ? darkTheme : lightTheme),
        child: const MyApp(),
      ),
    );
  });
}

/// This widget is the root of your application.
class MyApp extends StatelessWidget {
  /// default constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Donation',
      theme: themeNotifier.getTheme(),
      home: const RegistrationView(),
    );
  }
}
