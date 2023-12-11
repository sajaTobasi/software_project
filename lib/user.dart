import 'package:flutter/material.dart';
import 'package:flutter_application/welcome/welcome_screen.dart';
import 'package:flutter_application/testh/simple_appbar_page.dart';
//User_Page createState() =>User_Page();
//@override
class User_Page extends StatefulWidget {
  @override
  _User_Page createState()=>_User_Page();
}
class _User_Page extends State <User_Page>{
  DateTime date =DateTime(2023,11,2,5,30,8,0);
    
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
     final hours =date.hour.toString().padLeft(2,'0');
    final minutes =date.minute.toString().padLeft(2,'0');
     final hours1 =date.hour.toString().padLeft(2,'0');
     final minutes1 =date.minute.toString().padLeft(2,'0');
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
            final datee=await pickDate();
            if(datee==null)return;//press cancel
               //press ok

           final newDateTime=DateTime(
            datee.year,
             datee.month,
            datee.day,
            date.hour,
            date.minute,
            date.hour,
            date.minute,
           );
              setState(()=>date=newDateTime);
        }, 
        
        
        child: Text('Select Date',style: 
        TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),))

        ,SizedBox(
          height: 20,
        ),
    Row(
          children:[
            SizedBox(
          width: 40,
        ),
        Text( 
         
                '$hours:$minutes'
                ,textAlign: TextAlign.center,
                style:  const TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),
            
       ),
       SizedBox(
          width: 160,
        ),
       Text( 
         
                '$hours1:$minutes1'
                ,textAlign: TextAlign.center,
                style:  const TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),
            
       ),
]
        ),  
        Row(
          children:[
            
        
ElevatedButton(onPressed: () async{
            // ignore: unused_local_variable
           final time=await pickTime();
           if(time==null)return;
           final newDateTime =DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
            date.hour,
            date.minute,
            );
            setState(()=>date=newDateTime);
        }, 
        child: Text('start Time',style: 
        TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),)),
        SizedBox(
          width: 60,
        ),
         ElevatedButton(onPressed: () async{
            // ignore: unused_local_variable
           final timee=await pickTime1();
           if(timee==null)return;
           final newDateTime =DateTime(
            date.year,
            date.month,
            date.day,
            date.hour,
            date.minute,
            timee.hour,
            timee.minute,
            );
            setState(()=>date=newDateTime);
        }, 
        child: Text('end Time',style: 
        TextStyle(fontSize: 20,color: const Color.fromARGB(255, 16, 111, 190)),)),
          
          ]
        ),
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
  
  Future<DateTime?>pickDate()=>showDatePicker(
  context: context, 
  initialDate: date,
  firstDate: DateTime(2020),
  lastDate: DateTime(2050),
  );
 // void setState(DateTime Function() param0) {}

Future<TimeOfDay?>pickTime()=>showTimePicker(
  context: context, 
  initialTime: TimeOfDay(hour: date.hour, minute:date.minute)
  );
  Future<TimeOfDay?>pickTime1()=>showTimePicker(
  context: context, 
  initialTime: TimeOfDay(hour: date.hour, minute:date.minute)
  );

}
