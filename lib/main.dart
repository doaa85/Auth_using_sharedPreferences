import 'package:flutter/material.dart';
import 'package:shared_preference_task3/pages/home_page.pages.dart';
import 'package:shared_preference_task3/pages/login_page.pages.dart';
import 'package:shared_preference_task3/services/preferences.services.dart';
import 'package:shared_preference_task3/utilities/check_auth.utilities.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;

  try {
    PreferencesService.prefs = await SharedPreferences.getInstance();
    // await PreferencesService.init();
    if (PreferencesService.prefs != null) {
      print('Preferences init successfully');
    }
  } catch (e) {
    print('Error in init preferences ${e}');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // CheckAuth.id: (context) => CheckAuth(),
        LoginPage.id: (context) => const LoginPage(),
        HomePage.id: (context) => const HomePage(),
        CheckAuth.id: (context) => CheckAuth(),
      },
      initialRoute: CheckAuth.id,
    );
  }
}
