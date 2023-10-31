// import 'package:flutter/material.dart';
// import 'package:onedollar/model/Image.dart';

// class Cart extends ChangeNotifier {
//   List<Album> albumList = [];

//   void addAlbums(List<Album> albums) {
//     albumList.addAll(albums);
//     notifyListeners();
//   }

//   List<Album> getUserCart() {
//     return albumList;
//   }

//   void addItemToCart(Album album) {
//     albumList.add(album);
//     notifyListeners();
//   }

//   void removeItemFromCart(Album album) {
//     albumList.remove(album);
//     notifyListeners();
//   }

//   // Check if the cart contains a specific album
//   bool containsItem(Album album) {
//     return albumList.contains(album);
//   }

// //calculate total price
//   double calculateTotal() {
//     double totalPrice = 0.0;
//     for (var cartItem in albumList) {
//       double itemPrice = double.parse(cartItem.price) ?? 0;
//       totalPrice += itemPrice * cartItem.quantity;
//     }
//     return totalPrice;
//   }
// }

import 'package:flutter/material.dart';
import 'package:onedollar/model/Image.dart';

class Cart extends ChangeNotifier {
  List<Album> albumList = [];

  // void addAlbums(List<Album> albums) {
  //   albumList.addAll(albums);
  //   notifyListeners();
  // }

  List<Album> getUserCart() {
    return albumList;
  }

  void addItemToCart(Album album) {
    if (!containsItem(album)) {
      albumList.add(album);
      notifyListeners();
    }
  }

  void removeItemFromCart(Album album) {
    albumList.remove(album);
    notifyListeners();
  }

  // Check if the cart contains a specific album based on name and price
  bool containsItem(Album album) {
    return albumList.any((cartItem) =>
        cartItem.name == album.name && cartItem.price == album.price);
  }

  // Calculate the total price
  double calculateTotal() {
    double totalPrice = 0.0;
    for (var cartItem in albumList) {
      double itemPrice = double.parse(cartItem.price) ?? 0;
      totalPrice += itemPrice * cartItem.quantity;
    }
    return totalPrice;
  }
}
