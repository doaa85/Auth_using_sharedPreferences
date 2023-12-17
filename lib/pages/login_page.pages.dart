import 'package:flutter/material.dart';
import 'package:shared_preference_task3/pages/home_page.pages.dart';
import 'package:shared_preference_task3/services/preferences.services.dart';
import 'package:shared_preference_task3/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String id = 'login page';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  String? email = '', password = '';

  @override
  void initState() {
    super.initState();
    email = PreferencesService.getEmail() ?? '';
    password = PreferencesService.getPassword() ?? '';
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formKey,
            child: ListView(children: [
              const SizedBox(
                height: 75,
              ),
              Image.asset(
                'assets/images/Blue-lotus-png.png',
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'my App ',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontFamily: 'pacifico',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 65,
              ),
              const Row(
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFormTextField(
                onChanged: (data) => setState(() {
                  email = data;
                  this.email = email;
                }),
                hintText: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomFormTextField(
                obscureText: true,
                onChanged: (data) => setState(() {
                  password = data;
                  this.password = password;
                }),
                hintText: 'Password',
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () async {
                  await PreferencesService.setEmail('');
                  await PreferencesService.setPassword('');
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome....',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: const Text(
                      '  home Page',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
