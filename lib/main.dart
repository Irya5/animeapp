import 'package:flutter/material.dart';
import 'package:shows_app/Homescreen.dart';

void main() {
  runApp(const shows());
}

class shows extends StatelessWidget {
  const shows({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homescreen(),
    );
  }
}
