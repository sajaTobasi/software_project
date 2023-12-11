import 'package:flutter/material.dart';
import 'package:flutter_application/appbar__/cart_shopping.dart';
import 'package:flutter_application/appbar__/profile.dart';
import 'package:flutter_application/appbar__/cartProvider.dart';
//import 'package:provider/provider.dart';
//import 'package:flutter_application/testh/simple_appbar_page.dart';
class Servies_itemPage extends StatelessWidget {
   final  flower Flower; 
 const Servies_itemPage({super.key,required this.Flower});
       
        
  @override
  Widget build(BuildContext context) {
  //  final provider= CartProvider.of(context);
       return Scaffold(
                
                appBar: AppBar(
                  backgroundColor: Colors.blueGrey,
                  title: const Text("Detailes",style: TextStyle(fontWeight: FontWeight.bold),),
                  centerTitle: true,
                ),
          body: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  
                Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                        color :Colors.blueGrey.shade100,
                  ),
                  child: Image.asset(Flower.image,fit: BoxFit.cover,),
                )
                ]
              ),
                      const SizedBox(height: 40,),
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        height: 400,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 215, 233, 242),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),

                          )
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children:[
                                 Text(Flower.name.toUpperCase(),
                                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                                 ),
                                 Text ('\$''${Flower.price}',
                                 style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                 ),
                                 ] 
                                 ),  
                                 Text(Flower.description,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 14),
                                 )
                                 ],
                        ),
                      )

          ]),

     bottomSheet: BottomAppBar(
                 child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height/10,
                    decoration: const BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),

                    ),
                        child: Row(
                          children: [
                             Text('\$''${Flower.price}',
                             style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                             ),
                            const SizedBox(width: 70),
                             ElevatedButton.icon(
                              onPressed: (){
                                
                             

                              }, 
                              icon: const Icon(Icons.send ,color: Colors.blueGrey,),
                               label: const Text("Add TO Cart",style:TextStyle(color: Colors.blueGrey) ,),
                              
                              
                              )
                              
                          ],
                        ),
                 ),

     ),
       );




  }
}
 /*provider.toggleProduct(Flower);
                               Navigator.push(context, 
                               MaterialPageRoute(builder: (context)=> cart_page()
                               ));*/