import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:flutter_application/testh/simple_appbar_page.dart';
import 'package:flutter_application/testh/transparent_appbar_page.dart';



class MyApp1 extends StatelessWidget {
  static final String title = 'Wedding Planner';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: MainPage()
      );
}

class MainPage extends StatefulWidget {
      late final String title;

 // const MainPage({
  //  required this.title
  //});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 1;

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: buildBottomBar(),
        body: buildPages(),
      );

  Widget buildBottomBar() {
    final style = TextStyle(color: const Color.fromARGB(255, 176, 42, 42));

    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Text('Weeding Planner', style: style),
                // ignore: prefer_const_constructors
               // title: Text('Normal'),
        ),
        BottomNavigationBarItem(
          icon: Text('Weeding Planner', style: style),
         // title: Text('Transparent'),
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return SimpleAppBarPage();
      case 1:
        return TransparentAppBarPage();
      default:
        return Container();
    }
  }
}