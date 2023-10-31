import 'package:flutter/material.dart';
class Home111_page extends StatefulWidget {
 
  @override
  _Home111_pageState createState()=>_Home111_pageState();

}
 class _Home111_pageState extends State<Home111_page>{
  int counter=0;
  Widget build(BuildContext context) =>Scaffold(
/*appBar: AppBar(
title:  Text('Manage My Wedding'),
         
backgroundColor: Colors.blueGrey,

//backgroundColor: Colors.blueGrey,
),*/
body: Center(child: Image(image: AssetImage('lib/images/f.jpg'),
 fit: BoxFit.cover,
              width: double.infinity,
          height: double.infinity,
              ), ),
             backgroundColor:Colors.blueGrey,
              //backgroundImage: Icon(Image:const AssetImage('lib/images/f.jpg')),
              //const AssetImage('lib/images/f.jpg'),
              
              

  );
 }