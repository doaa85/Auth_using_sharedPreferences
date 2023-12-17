import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preference_task3/pages/home_page.pages.dart';
import 'package:shared_preference_task3/pages/login_page.pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckAuth extends StatefulWidget {
  static String id = 'CheckAuth page';
  @override
  _CheckAuthState createState() => _CheckAuthState();

  static void checkIfLoggedIn() {}
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;
  late bool loginCheck;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      try {
        loginCheck = await checkIfLoggedIn();
      } catch (e) {
        print(e.toString());
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  Future<bool> checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : AnimatedSplashScreen(
            duration: 5000,
            splash: Icons.task,
            splashTransition: SplashTransition.rotationTransition,
            backgroundColor: Colors.purpleAccent,
            nextScreen: loginCheck ? HomePage() : LoginPage());
  }
}
