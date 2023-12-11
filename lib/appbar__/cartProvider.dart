import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/appbar__/profile.dart';
 class CartProvider extends ChangeNotifier {
      final List<flower> _cart = [];
       List<flower> get cart1 => _cart;
       
      void toggleProduct(flower Flower){
         if(_cart.contains(Flower)){
          for(flower element in _cart){
            element.quantity++;
          }
         }
         else{
          _cart.add(Flower);
         }
          notifyListeners();
      }
static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(
      context,
      listen: listen);}
 /* static of(BuildContext context) {

  }*/
     }