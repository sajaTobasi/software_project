import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application/welcome/constant.dart';
//import '../../../constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "WELCOME ",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Color.fromARGB(255, 16, 111, 190)),
        ),
        SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
                     child: Image(image: AssetImage('lib/images/logo1.gif')
              // SvgPicture.asset("lib/images/chat.svg", 
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 2),
        
      ],
    );
  }
}

