import 'package:flutter/material.dart';

Widget appBarMain(BuildContext) {
  return AppBar(
    title: Text('Commune'),
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
  );
}

TextStyle mySimpleTextStyle() {
  return TextStyle(color: Colors.white, fontSize: 16);
}

TextStyle myButtonTextStyle() {
  return TextStyle(color: Colors.white, fontSize: 18);
}

TextStyle myButtonTextStyle2() {
  return TextStyle(color: Colors.black, fontSize: 18);
}
