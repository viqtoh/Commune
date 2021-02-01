import 'package:flutter/material.dart';
import 'Screens/sign_in.dart';
import 'Screens/Sign_up.dart';
import 'Screens/main_screen.dart';

void main() {
  runApp(Commune());
}

class Commune extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CrypTion',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: Color(0xff1F1F1F),
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "Login": (context) => SignIn(),
        "SignUp": (context) => SignUp(),
        "mainScreen": (context) => mainScreen(),
      },
      home: SignIn(),
    );
  }
}
