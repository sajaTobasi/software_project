import 'package:flutter/material.dart';
class cart_page extends StatefulWidget {
 
  @override
  _cart_page createState()=>_cart_page();

}
 class _cart_page extends State<cart_page>{
  @override
  Widget build(BuildContext context) {
         
         return Scaffold(

          appBar: AppBar(
            title: Text("My Cart" ,style:TextStyle(fontWeight: FontWeight.bold) ,),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
         );





  }
  
  
  
  }
