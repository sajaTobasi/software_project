//import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        
        const TextField(
              decoration: InputDecoration(
                //mainAxisAlignment: MainAxisAlignment.center
                   // icon: AssetImage('lib/images/1.png'),
                      icon: Image(image: AssetImage('lib/images/logo1.gif'),width: 400,height: 120,alignment: Alignment.center, )   )
        ),
        
        SizedBox(height: 30),
        Text("Weeding Planner",style: TextStyle(
          fontSize: 40, 
          fontWeight: FontWeight.bold , color: const Color.fromARGB(255, 16, 111, 190) , ) )
      ],
    );
  }

  _inputField(context) {
    return Column( //Image(image: AssetImage('lib/images/1.png'))
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       
        TextField(
          
          decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
             // filled: true,
              prefixIcon: Icon(Icons.person),
             
              ),
             // validator:(value){if(value !.is)}
        ),
          
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            //filled: true,
            prefixIcon: Icon(Icons.password),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          
          onPressed: () {},
          child: Text( "Login", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190) ,),  ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        )
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(onPressed: () {}, child: Text("Forgot password?",style: TextStyle(color: const Color.fromARGB(255, 16, 111, 190) ,),));
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Dont have an account? "),
        TextButton(onPressed: () {}, child: Text("Sign Up",style: TextStyle(color: const Color.fromARGB(255, 16, 111, 190)),))
     
      ],
    );
  }

}