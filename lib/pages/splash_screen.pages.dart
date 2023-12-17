import 'package:flutter/material.dart';
import 'package:shared_preference_task3/pages/login_page.pages.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.purple,
            ),
            Container(
              child: Text('WELCOME'),
            ),
          ],
        ),
      ),
    );
  }
}
