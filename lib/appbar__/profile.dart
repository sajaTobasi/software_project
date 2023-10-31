import 'package:flutter/material.dart';
import 'package:flutter_application/appbar__/favoret.dart';
import 'package:flutter_application/appbar__/profile_item.dart';
//import 'package:provider/provider.dart';
//import 'package:get/get.dart';

class profile_page extends StatefulWidget {
    const profile_page({super.key});
  @override
  State<profile_page> createState()=>_profile_pageState();

}
 class _profile_pageState extends State<profile_page>{
  int isSelected=0;
   @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(20.0),
    
    child:Column(
      children: [
        const Text('Our Servies',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
        
      Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
         _buildProductCategory(index: 0,name: "flower"),
         _buildProductCategory(index: 1,name: "Dress"),
         _buildProductCategory(index: 2,name: "cars"),
        _buildProductCategory(index: 3,name: "card"),
        
    ],
    
    
      ),
      const SizedBox(height: 20,),
      Expanded(child: isSelected==0?
      _buildAllProducts()
      :isSelected==1? _buildAllDress():isSelected==2? _buildAllcar():_buildAllcard(),
      
      )
      ],
    ),
    );
  }


              
_buildProductCategory({required int index,required String name})=>

GestureDetector(onTap: ()=>setState(()=>isSelected=index),


child:Container(

width: 80,
height: 40,
margin: const EdgeInsets.only(top:1,right: 1),
alignment: Alignment.center,
//scrollDirection:Axis.horizontal,
decoration: BoxDecoration( 
  color: isSelected==index? Colors.blueGrey:Colors.blueGrey.shade300,
  
  borderRadius: BorderRadius.circular(8)
),
child: Text(name,style: TextStyle(color: Colors.white,fontSize: 20),),
));

  _buildAllProducts()=>GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: (100/140),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      ), 
      scrollDirection: Axis.vertical,
      itemCount: myflower.allflowers.length,
      itemBuilder: (context ,index){
        final allflowers=myflower.allflowers[index];
        return GestureDetector(
          onTap: ()=>Navigator .push(
            context,
             MaterialPageRoute(builder: (context)=>
             Servies_itemPage( Flower: allflowers),
             ),
             ),
        child: flowerCard(Flower: allflowers),
        );
      },
    );
         _buildAllDress()=>GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: (100/140),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      ), 
      scrollDirection: Axis.vertical,
      itemCount: myDress.dressList.length,
      itemBuilder: (context ,index){
        final dressList=myDress.dressList[index];
        return GestureDetector(
          onTap: ()=>Navigator .push(
            context,
             MaterialPageRoute(builder: (context)=>
             Servies_itemPage( Flower: dressList),
             ),
             ),
        child: flowerCard(Flower: dressList),);
      },
    );

 _buildAllcar()=>GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: (100/140),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      ), 
      scrollDirection: Axis.vertical,
      itemCount: mycar.carList.length,
      itemBuilder: (context ,index){
        final carList=mycar.carList[index];
        return GestureDetector(
          onTap: ()=>Navigator .push(
            context,
             MaterialPageRoute(builder: (context)=>
             Servies_itemPage( Flower: carList),
             ),
             ),
        child: flowerCard(Flower: carList),);
      },
    );
_buildAllcard()=>GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: (100/140),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      ), 
      scrollDirection: Axis.vertical,
      itemCount: mycard.cardList.length,
      itemBuilder: (context ,index){
        final cardList=mycard.cardList[index];
        return GestureDetector(
          onTap: ()=>Navigator .push(
            context,
             MaterialPageRoute(builder: (context)=>
             Servies_itemPage( Flower: cardList),
             ),
             ),
        child: flowerCard(Flower: cardList),);
      },
    );

 }
 class flower{
    final int id;
    final String name;
    final String category;
    final String image;
    final String description;
    final double price;
    int quantity;
    flower({
    required this.id,
    required this. name,
    required this. category,
    required this. image,
    required this. description,
    required this. price,
    required this. quantity,
  } );
 }
 class myflower{
     static List<flower>allflowers=[
      
      flower(
             id:0,
             name:"Lavender flower",
             category:"jjjjjjjj",
             image:'lib/images/fff.jpg' ,
             description:"A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers produce gametophytes,",
             price:100.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/ff.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:200.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/f.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:300.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/1.png' ,
             description:"hhjjjbghfdghjgfdgh",
             price:400.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/m.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:500.00,
             quantity:1,
      ),
          flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/m1.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:100.00,
             quantity:1,
      ),           
      ];

 }
 class myDress{
     static List<flower>dressList=[
      
      flower(
             id:0,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/w.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:100.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/ff.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:200.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/f.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:300.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/1.png' ,
             description:"hhjjjbghfdghjgfdgh",
             price:400.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/m.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:500.00,
             quantity:1,
      ),
          flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/m1.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:100.00,
             quantity:1,
      ),           
      ];

 }
 class mycar{
     static List<flower>carList=[
      
      flower(
             id:0,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/w1.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:100.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/ff.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:200.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/f.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:300.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/1.png' ,
             description:"hhjjjbghfdghjgfdgh",
             price:400.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/m.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:500.00,
             quantity:1,
      ),
          flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/m1.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:100.00,
             quantity:1,
      ),           
      ];

 }
 class mycard{
     static List<flower>cardList=[
      
      flower(
             id:0,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/w2.jpeg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:100.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/ff.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:200.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/f.jpg' ,
             description:"hhjjjbghfdghjgfdgh",
             price:300.00,
             quantity:1,
      ),
      flower(
             id:1,
             name:"jjjj",
             category:"jjjjjjjj",
             image:'lib/images/1.png' ,
             description:"hhjjjbghfdghjgfdgh",
             price:400.00,
             quantity:1,
      ),
             
      ];

 }
      class flowerCard extends StatefulWidget{
        final  flower Flower;
          
       const flowerCard ({super.key,required this.Flower});
         @override
         State<flowerCard>createState()=>_flowerCardState();
      }
         class _flowerCardState extends State<flowerCard>{
               @override
               Widget build(BuildContext context) {
                final Provider = FavoriteProvider.of(context);
                return Container(
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(8.0),
                  color: Colors.blueGrey.withOpacity(0.1),
                  ),
                  child: Column(
                           children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: ()=>Provider.toggleFavorite(widget.Flower),
                                child:Icon(
                                  Provider.isExist(widget.Flower)
                                  ?Icons.favorite
                                  :Icons.favorite_border_outlined,
                                color:Colors.red ),)
                              ],
                            ),
                            SizedBox(height: 130,width: 130,child: Image.asset(widget.Flower.image,fit: BoxFit.cover,))
                            ,Text(widget.Flower.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text(widget.Flower.category,style: 
                          TextStyle(fontSize: 14,color: Colors.blue),),
                          Text('\$''${widget.Flower.price}',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                           ],

                  ),
                );
               } 

         }


    