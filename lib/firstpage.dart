//import 'dart:io';

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return SafeArea( 
        child: Scaffold(
          backgroundColor:Colors.white,
        
       
      body: Image(image: AssetImage('lib/images/1.png') ,height: 5000,)
    
    
    
      //body: Container(  
       

      //  margin: EdgeInsets.all(24),
       // child:
                  
        
            //Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
               
          //_header(context),
          //_inputFields(context),

        //  _loginInfo(context),
      

      //  ]),
    //  ),
    )
    );
  }

  _header(context) {
    return Column( 
      children: [
        Text(
          "Wedding Info",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 16, 111, 190)) ,
        ),
     
      ],
    );
  }

  _inputFields(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Username",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            //prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Email ",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
           // prefixIcon: Icon(Icons.email_outlined),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
           // prefixIcon: Icon(Icons.password_outlined),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
          ),
          obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Config Password",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
           // prefixIcon: Icon(Icons.password_outlined),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
          ),
          obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Phone",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
          //  prefixIcon: Icon(Icons.phone),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Save", style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 246, 247, 247)), ),
            
          style: ElevatedButton.styleFrom(shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
        backgroundColor: const Color.fromARGB(255, 16, 111, 190)  ),
        )
      ],
    );
  }

  _loginInfo(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
     // children: [
        //Text("Already have an account?"),
       // TextButton(onPressed: () {}, child: Text("Login",style: TextStyle(color: const Color.fromARGB(255, 16, 111, 190)),))
     // ],
    );
  }
}
