import 'package:boatapp/Allcolor.dart';
import 'package:boatapp/screens/pages/homepage.dart';
import 'package:boatapp/screens/pages/login_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailcontrol = TextEditingController();
  final passcontrol = TextEditingController();
  final Cpasscontrol = TextEditingController();
  bool obs = true;

  void funcobs() {
    setState(() {
      if (obs) {
        obs = false;
      } else {
        obs = true;
      }
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                "Registration",
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
                  fontSize: 17,
                  color: Colors.grey,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: textFormField('Email or Phone number', obs,
                          funcobs, Icons.email_outlined, emailcontrol, false),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: textFormField('Password', obs, funcobs,
                          Icons.lock_outline_rounded, passcontrol, true),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: textFormField('Confirm Password', obs, funcobs,
                          Icons.lock_outline_rounded, Cpasscontrol, true),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Button("Login", "", primary, false, func),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Or continue with",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 17,
                      letterSpacing: 0.2),
                ),
              ),
              Button("Google", 'assets/google.png', Colors.redAccent, true,
                  func),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text(
                        "Login",
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
