import 'package:flutter/material.dart';

TextStyle mTextstyle11() {
  var bold = FontWeight.bold;
  return TextStyle(fontSize: 21, fontWeight: bold);
}

TextStyle mTextstyle2(
    {Color tc = Colors.black, FontWeight fw = FontWeight.normal}) {
  return TextStyle(fontSize: 41, color: tc, fontWeight: fw);
}
