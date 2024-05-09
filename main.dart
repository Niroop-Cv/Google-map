import 'package:api_play/homeScreen..dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myTest());
}

class myTest extends StatelessWidget {
  const myTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
