import 'package:flutter/material.dart';
import 'package:flutter_application/welcome/welcome_screen.dart';
import 'package:flutter_application/testh/simple_appbar_page.dart';
User_Page createState() =>User_Page();
@override
class User_Page extends StatelessWidget {
  DateTime date =DateTime(2023,10,9);
  @override
  
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _header(context),
          _inputFields(context),
          _loginInfo(context),
        ]),
      ),
    ));
  }

  _header(context) {
    return Column(
      children: [
        
      ElevatedButton(
          onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomeScreen();
                  },
                ),
              );
          },
          child:
           Image(image: AssetImage('lib/images/u.png'),width: 40,height: 40,alignment: Alignment.topLeft, )  
           
         // style: ElevatedButton.styleFrom(shape: StadiumBorder(), padding: EdgeInsets.symmetric(vertical: 16), ),
        )
       //Text("Enter details to get started"),
     ],
   );
  }

  _inputFields(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "partner one name" ,// style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            //filled: true,
            prefixIcon: Icon(Icons.person),
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
            hintText: "partner tow name",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            //filled: true,
            prefixIcon: Icon(Icons.person_2),
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
            hintText: "Budget" ,// style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            //filled: true,
            prefixIcon: Icon(Icons.money),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
          ),
        ),
       
        SizedBox(
          height: 30,
        ),
       Text( 
         
                '${date.year}/${date.month}/${date.day}',textAlign: TextAlign.center,
                style:  const TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),
            
       ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: () async{
            // ignore: unused_local_variable
            DateTime? newDate = (await showDateRangePicker(
              context: context,
             firstDate: DateTime(2023), lastDate: DateTime(2030))) as DateTime?;
                 if(newDate == null) return;//cancel
                 setState(() =>date =newDate);
        }, child: Text('Select Date',style: 
        TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),))

        ,SizedBox(
          height: 20,
        ),
        Text( 
         
                '${date.hour}:${date.minute}',textAlign: TextAlign.center,
                style:  const TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),
            
       ),
ElevatedButton(onPressed: () async{
            // ignore: unused_local_variable
           
        }, child: Text('Select Time',style: 
        TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),)),
         
        
        SizedBox(
          height: 80,
        ),
        ElevatedButton(
          onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SimpleAppBarPage();
                  },
                ),
              );},
          child: Text(
            "Save", style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 252, 252, 252)), ),
          style: ElevatedButton.styleFrom(shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),backgroundColor: const Color.fromARGB(255, 16, 111, 190)
          ),
        )
      ],
    );
  }

  _loginInfo(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     //   Text("Already have an account?"),
      //  TextButton(onPressed: () {}, child: Text("Login",style: TextStyle(color: const Color.fromARGB(255, 16, 111, 190)),))
      ],
    );
  }
  
  void setState(DateTime Function() param0) {}
}