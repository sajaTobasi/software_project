/*import 'package:flutter/material.dart';
 import 'package:flutter_application/testh/simple_appbar_page.dart';
 import 'package:flutter_application/welcome/welcome_screen.dart';
 import 'package:flutter_application/userpage.dart';
class menu_page extends StatelessWidget {
  const menu_page({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) =>Scaffold(
appBar: AppBar(
title: const Text('HOME'),
backgroundColor: Colors.blueGrey,
),
drawer: const NavigationDrawer(),

  );
}
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) =>Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
                    buildHeader(context), 
                    buildMenuItems(context),   
        ],
      ),
    ),
  );
  Widget buildHeader(BuildContext context) =>Material( 
           color: Colors.blueGrey,
           child:InkWell(
            onTap: (){
                   Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return USER_P();
                  },
                ),
              );

            },
  child: Container(
    
    padding:EdgeInsets.only(
      top: 24+MediaQuery.of(context).padding.top,
         bottom: 24,
    ),
    child: Column(
      children: const [
           CircleAvatar(
            radius: 52,
            backgroundImage:  AssetImage('lib/images/saja.jpg'),
          
           ),
           SizedBox(height: 12,),
           Text('Saja Tobasi',style:TextStyle(fontSize: 30,color: Colors.white) ,),
          Text('s11923586@stu.najah.edu',style:TextStyle(fontSize: 15,color: Colors.white) )
      ],
    ),
  )));
   Widget buildMenuItems(BuildContext context) => Container(
    padding:const EdgeInsets.all(24),
  child: Wrap(
       runSpacing: 16,//spase between list 
    children: [
      /*ListTile(
        leading: const Icon(Icons.menu),
        title: const Text('Menu',style: TextStyle(fontWeight: FontWeight.bold),),
        onTap: (){},

      ),*/
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        onTap: ()/*{Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SimpleAppBarPage();
                  //  Drawer:const NavigationDrawer();
                  },
                ),
              );
                }*/=>Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>  SimpleAppBarPage(),
        )),

      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('Favorite'),
        onTap: (){},

      ),
        ListTile(
        leading: const Icon(Icons.notifications),
        title: const Text('Notifications'),
        onTap: (){},

      ),
      ListTile(
        leading: const Icon(Icons.person),
        title: const Text('Profile'),
        onTap: (){},

      ),
      const Divider(color: Colors.blueGrey,),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('Settings'),
        onTap: (){},

      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('Logout'),
        onTap: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomeScreen();
                  },
                ),
              );},

      ),
    ],
   )
   );
}*/