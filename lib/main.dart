import 'package:flutter/material.dart';
import 'package:flutter_application/loginpage.dart';
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
      home: LoginPage(),
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