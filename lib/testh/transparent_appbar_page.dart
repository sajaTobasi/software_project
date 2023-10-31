import 'package:flutter/material.dart';
import 'package:flutter_application/testh/simple_appbar_page.dart';
class TransparentAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Wedding Planner'),
          centerTitle: true,
          leading: BackButton(onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SimpleAppBarPage();
                  },
                ),
              );},) ,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
          backgroundColor: Colors.transparent, // Colors.white.withOpacity(0.1),
          elevation: 0,
        ),
        body: Image(image: AssetImage('lib/images/w1.jpg'),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
}//Image(image: AssetImage('lib/images/u.png'),width: 40,height: 40,alignment: Alignment.topLeft, ) 