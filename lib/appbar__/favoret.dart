/*import 'package:flutter/material.dart';
import 'package:flutter_application/appbar__/profile.dart';
import 'package:provider/provider.dart';
class FavoriteProvider extends ChangeNotifier{
  final List<flower> _favorites=[];
  List<flower> get favorites => _favorites;
  void toggleFavorite(flower Flower){
    if (_favorites.contains(Flower)){
      _favorites.remove(Flower);}
       else {
      _favorites.add(Flower);
    }
    notifyListeners();
  }
  bool isExist(flower Flower) {
    final isExist= _favorites.contains(Flower);
    return isExist;
  }
  static FavoriteProvider of(
    BuildContext context, {
    bool listen = false,
  }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen);
  }
}*/