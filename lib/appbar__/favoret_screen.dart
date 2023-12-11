/*import 'package:flutter/material.dart';
import 'package:flutter_application/appbar__/favoret.dart';
//import 'package:provider/provider.dart';
//import 'package:flutter_application/appbar__/profile.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

class favoriteScreen extends StatefulWidget {
  const favoriteScreen({super.key});
  @override
  State<favoriteScreen> createState()=>_favoriteScreen();

}
 class _favoriteScreen extends State<favoriteScreen>{
 @override
  Widget build(BuildContext context){
 final provider = FavoriteProvider.of(context);
    final finalList = provider.favorites;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Text(
                  "Favorite",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slidable(
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            finalList.removeAt(index);
                            setState(() {});
                          },
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(
                        finalList[index].name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text(
                        finalList[index].description,
                        overflow: TextOverflow.ellipsis,
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(finalList[index].image),
                        backgroundColor: Colors.blueGrey.shade100,
                      ),
                      trailing: Text(
                        '\$${finalList[index].price}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      tileColor: const Color.fromARGB(255, 174, 203, 226),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}*/