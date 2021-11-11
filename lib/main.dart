import 'package:book_donation/utils/common_utils.dart';
import 'package:book_donation/utils/theme/theme.dart';
import 'package:book_donation/utils/theme/theme_notifier.dart';
import 'package:book_donation/views/home_navigation_view.dart';
import 'package:book_donation/views/login_view.dart';
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
class MyApp extends StatefulWidget {
  /// default constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  Future<bool> checkTokenPresent() async {
    String? token = await CommonUtils.storage.read(key: 'token');
    return token != null ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Donation',
      theme: themeNotifier.getTheme(),
     
      
      home: FutureBuilder<bool>(
        future: checkTokenPresent(),
        builder: (buildContext, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data! ? HomeNavigationView() : LoginView();
          } else {
            return const SizedBox(
              height: 100.0,
              width: 100.0,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}


