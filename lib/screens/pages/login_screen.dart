import 'package:boatapp/screens/pages/signin_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/widgets.dart';
import 'homepage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailcontrol = TextEditingController();
  final passcontrol = TextEditingController();
  bool obs = true ;
  void toggle() {
    setState(() {
      obs = !obs;
    });
  }

  void func() {
    setState(() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 160,
              ),
              Text(
                "Welcome back !",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    letterSpacing: 1,
                    color: Colors.blue.shade900),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Please enter your account here",
                style: TextStyle(
                    fontSize: 17, color: Colors.grey, letterSpacing: 1),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: textFormField('Email or Phone number', obs, toggle,
                          Icons.email_outlined, emailcontrol, false),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: textFormField('Password', obs, toggle,
                          Icons.lock_outline_rounded, passcontrol, true),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Forgot Password ?",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600],
                          letterSpacing: 1),
                    ),
                  ),
                ],
              ),
              Button("Login", "", Colors.blue.shade900, false, func),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Or continue with",
                  style: TextStyle(color: Colors.grey[500], fontSize: 17),
                ),
              ),
              Button(
                  "Google", 'assets/google.png', Colors.redAccent, true, func),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have any account?",
                    style: TextStyle(fontSize: 17),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.blue.shade900, fontSize: 18),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
