import 'package:flutter/material.dart';
class USER_P extends StatelessWidget {
  const USER_P({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) =>Scaffold(
appBar: AppBar(
title: const Text('Saja Tobasi'),

),
body: Image(image: AssetImage('lib/images/saja.jpg')),
  );
}