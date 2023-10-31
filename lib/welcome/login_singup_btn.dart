import 'package:flutter/material.dart';
import 'package:flutter_application/welcome/constant.dart';
import 'package:flutter_application/login/loginpage.dart';
import 'package:flutter_application/singup/singup.dart';
//import '../../../constants.dart';
//import '../../Login/login_screen.dart';
//import '../../Signup/signup_screen.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: "login_btn",
          child: ElevatedButton( 
            
            
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
            child: Text(
              "Login".toUpperCase(),
               style: TextStyle(color: const Color.fromARGB(255, 16, 111, 190)),
              // style: ElevatedButton.styleFrom(shape: StadiumBorder(),
           // padding: EdgeInsets.symmetric(vertical: 16),
            ),
          
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpPage();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: kPrimaryLightColor, elevation: 0),
          child: Text(
            "Sign Up".toUpperCase(),
            style: TextStyle(color: const Color.fromARGB(255, 16, 111, 190)),
          ),
        ),
      ],
    );
  }
}