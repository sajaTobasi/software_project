import 'package:flutter/material.dart';
import 'package:flutter_application/appbar__/profile.dart';
class Home111_page extends StatefulWidget {
  @override
  _Home111_pageState createState() => _Home111_pageState();
}

class _Home111_pageState extends State<Home111_page> {
  int counter = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color.fromARGB(255, 213, 233, 242),
        body:SafeArea(child: Column(
children: [
  
  const SizedBox(height: 40,),


               CircleAvatar(
            radius: 200,
            backgroundImage:  AssetImage('lib/images/f.jpg'),
          
           ),
const SizedBox(height: 5,),
Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),

                          )
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children:[
                                 Text("Explore your wedding journey \n only with us,You can choose\n your wedding order with all \n comfort meaning",
                                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                                 ),
                                
                                 ] 
                                 ),  
                                 
                                 ],
                        ),
                      ),
  //const Text("Explore your wedding journey \n only with us",textAlign: TextAlign.center,
 // style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
  
           // const SizedBox(height: 20,),

],
        ))
  );
}
