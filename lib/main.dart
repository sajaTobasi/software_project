import 'package:flutter/material.dart';
import 'package:flutter_application/login/loginpage.dart';
import 'package:flutter_application/singup/singup.dart';
import 'package:flutter_application/firstpage.dart';
import 'package:flutter_application/note/notes.dart';
import 'package:flutter_application/note/notes_page.dart';
import 'package:flutter_application/user.dart';
import 'package:flutter_application/welcome/welcome_screen.dart';
import 'package:flutter_application/testh/myapp.dart';
import 'package:flutter_application/apply.dart';
import 'package:flutter_application/testh/simple_appbar_page.dart';
import 'package:flutter_application/testh/transparent_appbar_page.dart';
import 'package:flutter_application/testh/menu.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/appbar__/bag.dart';
import 'package:flutter_application/appbar__/favoret_screen.dart';
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
      home://favoriteScreen(),
      WelcomeScreen(),
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