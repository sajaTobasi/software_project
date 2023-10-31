//import 'dart:html';
import 'package:flutter_application/singup/singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/user.dart';
import 'package:flutter_application/welcome/welcome_screen.dart';
import 'package:quickalert/quickalert.dart';

import 'dart:convert';
//import 'package:flutter/material.dart';
//import 'package:flutter2/pages/admin.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class LoginPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  get isNotValidate => null;
void loginUser() async {
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {

     // setState(() {
       // isNotValidate = false;
     // });
     

        // Check the status code and handle accordingly
      
    }
  
    
  }

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
          controller: usernameController,
          keyboardType: TextInputType.text,
          
          decoration: InputDecoration(
          //  errorText: isNotValidate ? "Username":null,
              hintText: "Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
             // filled: true,
              prefixIcon: Icon(Icons.person),
             
              ),
             // validator:(value){if(value !.is)}
              
            // validator: (value) {
                //    if (value == null || value.isEmpty) {
                 //     return 'Please enter username';
                //    } else if (value.length < 4) {
                //      return 'at least enter 4 characters';
                //    } else if (value.length > 13) {
                //      return 'maximum character is 13';
                 //  }
                 //   return null;
                 // },
        ),
          
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            //errorText: isNotValidate ? "Password":null,
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
          
          onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return User_Page();
                  },
                ),
              );},
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
        TextButton(onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpPage();
                  },
                ),
              );}, child: Text("Sign Up",style: TextStyle(color: const Color.fromARGB(255, 16, 111, 190)),))
     
      ],
    );
  }

}
