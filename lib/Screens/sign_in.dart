import 'package:commune/Screens/Widgets/widgets.dart';
import 'package:flutter/material.dart';

int sigining(String username, String password) {
  int a = 0;
  String user = "viqtoh";
  String pass = "Grandfather";
  if (username == user && password == pass) {
    a = 1;
  } else {
    print("incorrect Username or Password");
  }
  return a;
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController userNameCon = new TextEditingController();
  TextEditingController passWordCon = new TextEditingController();

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
                height: 8,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'Forgotten Password?',
                    style: mySimpleTextStyle(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  if (sigining(userNameCon.text.toString(),
                          passWordCon.text.toString()) ==
                      1) {
                    Navigator.of(context).pushNamed("mainScreen");
                    print(userNameCon.text + " Logged in");
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                  ),
                  child: Text(
                    'Sign In',
                    style: myButtonTextStyle(),
                  ),
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
                  'Sign In With Google',
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
                    'Don\'t have an account? ',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  OutlineButton(
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onPressed: () =>
                          Navigator.of(context).pushNamed("SignUp"))
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
