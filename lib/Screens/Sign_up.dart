import 'package:flutter/material.dart';

import 'Widgets/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController eMailCon = new TextEditingController();
  TextEditingController userNameCon = new TextEditingController();
  TextEditingController passWordCon = new TextEditingController();
  TextEditingController conPasswordCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 70,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: eMailCon,
                style: mySimpleTextStyle(),
                decoration: textFieldInputDecoration('Email'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: userNameCon,
                style: mySimpleTextStyle(),
                decoration: textFieldInputDecoration('Username'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passWordCon,
                style: mySimpleTextStyle(),
                obscureText: true,
                decoration: textFieldInputDecoration('Password'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: conPasswordCon,
                style: mySimpleTextStyle(),
                obscureText: true,
                decoration: textFieldInputDecoration('Confirm Password'),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey,
                ),
                child: Text(
                  'Sign Up',
                  style: myButtonTextStyle(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Text(
                  'Sign Up With Google',
                  style: myButtonTextStyle2(),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  OutlineButton(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pushNamed("Login"),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
