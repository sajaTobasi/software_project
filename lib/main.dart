import 'package:flutter/material.dart';
import 'package:flutter_application/loginpage.dart';
import 'package:flutter_application/singup.dart';
import 'package:flutter_application/firstpage.dart';
import 'package:flutter_application/notes.dart';
import 'package:flutter_application/notes_page.dart';
//import 'dart:math';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: SignUpPage(),
    );
  }
}
class WeddingPlanner extends StatelessWidget {
  const WeddingPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}