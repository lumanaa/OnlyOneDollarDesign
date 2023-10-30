import 'package:flutter/material.dart';
import 'package:onedollar/model/Image.dart';

class Cart extends ChangeNotifier {
  List<Album> albumList = [];

  void addAlbums(List<Album> albums) {
    albumList.addAll(albums);
    notifyListeners();
  }

  List<Album> getUserCart() {
    return albumList;
  }

  void addItemToCart(Album album) {
    albumList.add(album);
    notifyListeners();
  }

  void removeItemFromCart(Album album) {
    albumList.remove(album);
    notifyListeners();
  }

//calculate total price
  String calculateTotal() {
    double totalPrice = 1.0 * albumList.length;
    return "Total Price: \$$totalPrice";
  }
}
