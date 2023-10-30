// import 'package:flutter/material.dart';
// import 'package:onedollar/model/Image.dart';
// import 'package:provider/provider.dart';
// import 'package:onedollar/model/Cart.dart';
// import 'package:onedollar/Provider/DataProvider.dart';

// class CartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Cart'),
//       ),
//       body: Consumer2<Cart, DataProvider>(
//         builder: (context, cart, dataProvider, child) {
//           if (cart.albumList.isEmpty) {
//             return Center(child: Text('Your cart is empty.'));
//           } else {
//             return ListView.builder(
//               itemCount: cart.albumList.length,
//               itemBuilder: (context, index) {
//                 Album cartItem = cart.albumList[index];

//                 String imageUrl = dataProvider.baseUrl + Uri.encodeFull(cartItem.renderedImageUrl);
//                 return ListTile(
//                   leading: Image.network(imageUrl),
//                   title: Text(cartItem.name),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:onedollar/model/Image.dart';
// import 'package:provider/provider.dart';
// import 'package:onedollar/model/Cart.dart';
// import 'package:onedollar/Provider/DataProvider.dart';

// class CartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         actionsIconTheme: IconThemeData(color: Colors.blueGrey),
//         elevation: 0,
//         title: Center(
//           child: Text(
//             'My Cart',
//             style: TextStyle(
//               color: Colors.grey[400],
//             ),
//           ),
//         ),
//       ),
//       body: Consumer2<Cart, DataProvider>(
//         builder: (context, cart, dataProvider, child) {
//           if (cart.albumList.isEmpty) {
//             return Center(child: Text('Your cart is empty.'));
//           } else {
//             return ListView.builder(
//               itemCount: cart.albumList.length,
//               itemBuilder: (context, index) {
//                 Album cartItem = cart.albumList[index];

//                 String imageUrl = dataProvider.baseUrl +
//                     Uri.encodeFull(cartItem.renderedImageUrl);

//                 return Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   margin: EdgeInsets.all(8),
//                   child: ListTile(
//                     leading: Image.network(imageUrl),
//                     title: Text(cartItem.name),
//                     trailing: IconButton(
//                       icon: Icon(Icons.cancel),
//                       onPressed: () {
//                         cart.removeItemFromCart(cartItem);
//                       },
//                     ),
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:onedollar/model/Image.dart';
import 'package:onedollar/model/Cart.dart';
import 'package:onedollar/Provider/DataProvider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text(
                'My Cart',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Consumer2<Cart, DataProvider>(
              builder: (context, cart, dataProvider, child) {
                if (cart.albumList.isEmpty) {
                  return Center(child: Text('Your cart is empty.'));
                } else {
                  return ListView.builder(
                    itemCount: cart.albumList.length,
                    itemBuilder: (context, index) {
                      Album cartItem = cart.albumList[index];

                      String imageUrl = dataProvider.baseUrl +
                          Uri.encodeFull(cartItem.renderedImageUrl);

                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        margin: EdgeInsets.all(8),
                        child: ListTile(
                          leading: Image.network(imageUrl),
                          title: Text(cartItem.name),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.amber,
                            ),
                            onPressed: () {
                              cart.removeItemFromCart(cartItem);
                            },
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${cart.calculateTotal()}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
