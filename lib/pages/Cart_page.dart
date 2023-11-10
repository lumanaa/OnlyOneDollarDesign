// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:onedollar/model/Image.dart';
// import 'package:onedollar/model/Cart.dart';
// import 'package:onedollar/Provider/DataProvider.dart';
// import 'package:provider/provider.dart';

// class CartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<Cart>(context);

//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             child: Center(
//               child: Text(
//                 'My Cart',
//                 style: TextStyle(
//                   color: Colors.deepPurple,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Consumer2<Cart, DataProvider>(
//               builder: (context, cart, dataProvider, child) {
//                 if (cart.albumList.isEmpty) {
//                   return Padding(
//                     padding: const EdgeInsets.only(top: 80.0),
//                     child: Column(children: [
//                       Image.asset(
//                         'lib/images/empty.png',
//                         height: 150,
//                       ),
//                       Text(
//                         'Your cart is empty.',
//                         style: GoogleFonts.notoSerif(
//                           fontSize: 20,
//                         ),
//                       )
//                     ]),
//                   );
//                 } else {
//                   return ListView.builder(
//                     itemCount: cart.albumList.length,
//                     itemBuilder: (context, index) {
//                       Album cartItem = cart.albumList[index];

//                       String imageUrl = dataProvider.baseUrl +
//                           Uri.encodeFull(cartItem.renderedImageUrl);

//                       return Container(
//                         decoration: BoxDecoration(
//                           color: Colors.grey[200],
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         margin: EdgeInsets.all(8),
//                         child: ListTile(
//                           leading: Image.network(imageUrl),
//                           title: Text(cartItem.name),
//                           trailing: IconButton(
//                             icon: Icon(
//                               Icons.delete,
//                               color: Colors.amber,
//                             ),
//                             onPressed: () {
//                               cart.removeItemFromCart(cartItem);
//                             },
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 }
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(36.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.amber[400],
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               padding: EdgeInsets.all(24),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     '${cart.calculateTotal()}',
//                     style: GoogleFonts.notoSerif(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.amber.shade400,
//                       elevation: 0,
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       'Checkout',
//                       style: GoogleFonts.notoSerif(
//                         fontSize: 20,
//                         color: Colors.white,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  return Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'lib/images/empty.png',
                            height: 150,
                          ),
                          Text(
                            'Your cart is empty.',
                            style: GoogleFonts.notoSerif(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ));
                } else {
                  return ListView.builder(
                    itemCount: cart.albumList.length,
                    itemBuilder: (context, index) {
                      Album cartItem = cart.albumList[index];

                      String imageUrl = dataProvider.baseUrl +
                          Uri.encodeFull(cartItem.RenderedImageUrl.substring(
                              cartItem.RenderedImageUrl.indexOf("/Assets") +
                                  "/Assets".length));

                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        margin: EdgeInsets.all(8),
                        child: ListTile(
                          leading: Image.network(imageUrl),
                          title: Text(
                            cartItem.Name,
                            style: GoogleFonts.notoSerif(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Price: \$${cartItem.Price}',
                            style: GoogleFonts.notoSerif(
                                // color: Colors.amber,
                                ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.amber,
                                ),
                                onPressed: () {
                                  if (cartItem.quantity > 1) {
                                    cartItem
                                        .quantity--; // Decrease the quantity by 1.
                                    cart.notifyListeners();
                                  }
                                },
                              ),
                              Text(
                                '${cartItem.quantity}',
                                style: GoogleFonts.notoSerif(
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.amber,
                                ),
                                onPressed: () {
                                  cartItem
                                      .quantity++; // Increase the quantity by 1.
                                  cart.notifyListeners();
                                },
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.amber,
                                ),
                                onPressed: () {
                                  // Remove the item from the cart.
                                  cart.removeItemFromCart(cartItem);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
          Text(
            'Total Price: \$${cart.calculateTotal()}',
            style: GoogleFonts.notoSerif(
              color: Colors.deepPurple,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber.shade400,
                elevation: 0,
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Checkout',
                  style: GoogleFonts.notoSerif(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
