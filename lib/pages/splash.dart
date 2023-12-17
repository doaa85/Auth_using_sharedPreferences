// ignore_for_file: body_might_complete_normally_nullable

// import 'package:flutter/material.dart';
// import 'package:shared_preference_task3/pages/home_page.pages.dart';
// import 'package:shared_preference_task3/pages/login_page.pages.dart';
// import 'package:shared_preference_task3/utilities/auth_controler.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
//   static String id = 'Splash Scrseen';
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     loginControl();
//   }

//   // ignore: missing_return
//   Future<bool?> loginControl() async {
//     bool status = AuthController.isLoginUser() as bool;
//     print(status);
//     if (status) {
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (BuildContext context) => HomePage()));
//     } else {
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text('welcome my app'),
//       ),
//     );
//   }
// }
