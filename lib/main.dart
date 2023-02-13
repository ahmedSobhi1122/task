import 'package:flutter/material.dart';
import 'package:task/screens/intro.dart';

void main() {
  runApp(const WhatsApp());
}
class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Intro(),
    );
  }
}
