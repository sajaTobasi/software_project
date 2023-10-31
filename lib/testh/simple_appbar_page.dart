//import 'package:appbar_example/main.dart';
//import 'dart:html';
 import 'package:flutter_application/userpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/testh/myapp.dart';
import 'package:flutter_application/appbar__/Chat.dart';
import 'package:flutter_application/appbar__/Budget.dart';
import 'package:flutter_application/appbar__/Home.dart';
import 'package:flutter_application/appbar__/profile.dart';
import 'package:flutter_application/appbar__/favoret.dart';
import 'package:flutter_application/appbar__/favoret_screen.dart';
import 'package:flutter_application/appbar__/cart_shopping.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/testh/transparent_appbar_page.dart';
//import 'package:flutter_application/testh/menu.dart';
import 'package:flutter_application/welcome/welcome_screen.dart';
class SimpleAppBarPage extends StatefulWidget {
  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
}

class _SimpleAppBarPageState extends State<SimpleAppBarPage> {

    int currentIndex=0;
       final screens=[
        Home111_page(),
        budget_page(),
        profile_page(),
        Chat_page()
       ];

  @override
  Widget build(BuildContext context) => MultiProvider(
       providers: [
        ChangeNotifierProvider(create:(_)=>FavoriteProvider()),
       ],
        child: Scaffold(
         // drawer: const NavigationDrawer(),
          appBar: AppBar(
            title: Text(MyApp1.title),
            //centerTitle: true,
            /*leading: IconButton(
              icon: Icon(Icons.menu),
              
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return menu_page();
                  //  Drawer:const NavigationDrawer();
                  },
                ),
              );
                
              },
              
            ),*/

            
            actions: [
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return cart_page();
                  },
                ),
              );},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () { 
                       showSearch(context: context,
                        delegate:MySearchDelegate()
                         );
                },
              )
            ],
            backgroundColor: Colors.blueGrey,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [const Color.fromARGB(255, 79, 163, 232), Colors.blueGrey],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
             
               /*bottom: TabBar(
              //isScrollable: true,
              indicatorColor: Color.fromARGB(255, 250, 246, 246),
              labelColor: const Color.fromARGB(255, 231, 92, 138),
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home' ),
                Tab(icon: Icon(Icons.money_sharp), text: 'BUDGET'),
                Tab(icon: Icon(Icons.face), text: 'Profile'),
                Tab(icon: Icon(Icons.settings), text: 'Settings'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,*/
          ),

drawer: const NavigationDrawer(),

body:IndexedStack(
    index: currentIndex,
    children: screens,
), //screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.white,
          //unselectedItemColor: Colors.white70,
         iconSize: 30,
         selectedFontSize: 15,
         unselectedFontSize: 13,
           currentIndex: currentIndex,
           onTap: (index)=>setState(() => currentIndex=index),
        items: [
             BottomNavigationBarItem(
              icon: Icon(Icons.home),label: 'Home',
             // backgroundColor: Colors.blueGrey,
             ),
               BottomNavigationBarItem(
              icon: Icon(Icons.money_sharp),label: 'BUDGET',
                  
             // backgroundColor: Colors.blue,
             ),
             BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),label: 'sarvies',
             // backgroundColor: Colors.pink,
             ),
             BottomNavigationBarItem(
              icon: Icon(Icons.chat),label: 'Chat',
             // backgroundColor: Colors.blueGrey,
             ),





        ],),


        /*  body: TabBarView(
            children: [
              
              buildPage1(),
              buildPage('money Page'),
              buildPage('Profile Page'),
              buildPage('Settings Page'),
            ],
         ),*/
        // drawer: const NavigationDrawer()
  ));
        
    //  );

  Widget buildPage(String text) => Center(
        child: 
         Text(
          text,
         style: TextStyle(fontSize: 28),
        // image: AssetImage('lib/images/logo1.gif')
  )
      );
       Widget buildPage1() => Center(
        child: Image(image: AssetImage('lib/images/f.jpg'),width: 5000,height:50000000 ,
              
              ), 

        
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
        onTap: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return favoriteScreen();
                  },
                ),
              );},

      ),
        ListTile(
        leading: const Icon(Icons.notifications),
        title: const Text('Notifications'),
        onTap: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TransparentAppBarPage();
                  },
                ),
              );},

      ),
      ListTile(
        leading: const Icon(Icons.person),
        title: const Text('Profile'),
        onTap: (){ Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return USER_P();
                  },
                ),
              );},

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
}
class MySearchDelegate extends SearchDelegate{
  List<String>searchResults=[
         'Wedding',
         'flower',
         'car',
         'dress',

    ];
  @override
  Widget? buildLeading(BuildContext context) =>IconButton(
    onPressed: ()=>close(context, null),
   icon: const Icon(Icons.arrow_back)
   );
   @override
  List<Widget>? buildActions(BuildContext context) =>[

IconButton(
    onPressed: (){
      if(query.isEmpty){
        close(context, null);
      }else{
      query='';}
    },
   icon: const Icon(Icons.clear)
   ),


  ];
   @override
  Widget buildResults(BuildContext context) =>Center(
child: Text(query,style: const TextStyle(fontSize: 64),),


  );
   @override
  Widget buildSuggestions(BuildContext context) {
   
    List<String>suggestions= searchResults.where((searchResults){
               final result=searchResults.toLowerCase();
               final input=query.toLowerCase();
               return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context , index){
        final suggestion =suggestions[index];
           return ListTile(
                  title: Text(suggestion),
                  onTap: () {
                    query=suggestion;
                    showResults(context);
                  },
           );
      },
      );
  }
}