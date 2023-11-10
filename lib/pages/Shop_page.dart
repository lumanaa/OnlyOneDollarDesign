// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:onedollar/Provider/DataProvider.dart';
// import 'package:onedollar/model/Cart.dart';
// import 'package:onedollar/model/Image.dart';
// import 'package:provider/provider.dart';

// class ShopPage extends StatefulWidget {
//   const ShopPage({Key? key}) : super(key: key);

//   @override
//   _ShopPageState createState() => _ShopPageState();
// }

// class _ShopPageState extends State<ShopPage> {
//   int selectedAlbumIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final dataProvider = Provider.of<DataProvider>(context);
//     dataProvider.fetchAlbum();

//     double screenHeight = MediaQuery.of(context).size.height;
//     double sliderHeight = screenHeight * 0.5;

//     return Consumer<DataProvider>(
//       builder: (context, dataProvider, child) {
//         if (dataProvider.album.isEmpty) {
//           return Center(child: CircularProgressIndicator());
//         } else {
//           return Column(
//             children: [
//               Text(
//                 '\$1',
//                 style: GoogleFonts.notoSerif(
//                   fontSize: 45,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.amber,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   dataProvider.album[selectedAlbumIndex].name,
//                   style: GoogleFonts.spaceGrotesk(
//                     fontSize: 25,
//                     color: Colors.deepPurple,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               CarouselSlider(
//                 options: CarouselOptions(
//                   height: sliderHeight,
//                   onPageChanged: (index, reason) {
//                     setState(() {
//                       selectedAlbumIndex = index;
//                     });
//                   },
//                   viewportFraction: 1.0,
//                   aspectRatio: 2.0,
//                 ),
//                 items: dataProvider.imageUrls.map((imageUrl) {
//                   return Image.network(
//                     imageUrl,
//                     fit: BoxFit.cover,
//                     errorBuilder: (context, error, stackTrace) {
//                       return Text('Image not found');
//                     },
//                   );
//                 }).toList(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10.0),
//                 child: Text(
//                   'Size: ${dataProvider.album[selectedAlbumIndex].physicalWidth.toString()} x ${dataProvider.album[selectedAlbumIndex].physicalHeight.toString()} (inch)',
//                   style: GoogleFonts.slabo13px(
//                     color: Colors.amber,
//                     fontSize: 18,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: GestureDetector(
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Album selectedAlbum =
//                           dataProvider.album[selectedAlbumIndex];
//                       Cart cart = context.read<Cart>();

//                       if (cart.containsItem(selectedAlbum)) {
//                         // Item is already in the cart
//                         showDialog(
//                           context: context,
//                           builder: (context) => AlertDialog(
//                             backgroundColor: Colors.deepPurple[200],
//                             title: Text(
//                               "Already exits in your cart.",
//                               style: GoogleFonts.notoSerif(
//                                 color: Colors.white,
//                               ),
//                             ),
//                             content: Text(
//                               'Check your cart.',
//                               style: GoogleFonts.notoSerif(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         );
//                       } else {
//                         cart.addItemToCart(selectedAlbum);
//                         showDialog(
//                           context: context,
//                           builder: (context) => AlertDialog(
//                             backgroundColor: Colors.deepPurple[200],
//                             title: Text(
//                               "Added Successfully!",
//                               style: GoogleFonts.notoSerif(
//                                 color: Colors.white,
//                               ),
//                             ),
//                             content: Text(
//                               'Check your cart.',
//                               style: GoogleFonts.notoSerif(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                     child: Text(
//                       "Add to Cart",
//                       style: GoogleFonts.notoSerif(
//                         fontSize: 15,
//                       ),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.deepPurple.shade300,
//                       elevation: 0,
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           );
//         }
//       },
//     );
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onedollar/Provider/DataProvider.dart';
import 'package:onedollar/model/Cart.dart';
import 'package:onedollar/model/Image.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  int selectedAlbumIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    dataProvider.fetchAlbum();

    double screenHeight = MediaQuery.of(context).size.height;
    double sliderHeight = screenHeight * 0.5;

    return Consumer<DataProvider>(
      builder: (context, dataProvider, child) {
        if (dataProvider.album.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Column(
            children: [
              Text(
                '\$1',
                style: GoogleFonts.notoSerif(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  dataProvider.album[selectedAlbumIndex].Name,
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      _carouselController.previousPage();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Expanded(
                    child: CarouselSlider(
                      carouselController: _carouselController,
                      options: CarouselOptions(
                        height: sliderHeight,
                        onPageChanged: (index, reason) {
                          setState(() {
                            selectedAlbumIndex = index;
                          });
                        },
                        viewportFraction: 1.0,
                        aspectRatio: 2.0,
                      ),
                      items: dataProvider.imageUrls.map((imageUrl) {
                        return Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Text('Image not found');
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _carouselController.nextPage();
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Size: ${dataProvider.album[selectedAlbumIndex].PhysicalWidth.toString()} x ${dataProvider.album[selectedAlbumIndex].PhysicalHeight.toString()} (inch)',
                  style: GoogleFonts.slabo13px(
                    color: Colors.amber,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  child: ElevatedButton(
                    onPressed: () {
                      Album selectedAlbum =
                          dataProvider.album[selectedAlbumIndex];
                      Cart cart = context.read<Cart>();

                      if (cart.containsItem(selectedAlbum)) {
                        // Item is already in the cart
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: Colors.deepPurple[200],
                            title: Text(
                              "Already exists in your cart.",
                              style: GoogleFonts.notoSerif(
                                color: Colors.white,
                              ),
                            ),
                            content: Text(
                              'Check your cart.',
                              style: GoogleFonts.notoSerif(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      } else {
                        cart.addItemToCart(selectedAlbum);
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: Colors.deepPurple[200],
                            title: Text(
                              "Added Successfully!",
                              style: GoogleFonts.notoSerif(
                                color: Colors.white,
                              ),
                            ),
                            content: Text(
                              'Check your cart.',
                              style: GoogleFonts.notoSerif(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    child: Text(
                      "Add to Cart",
                      style: GoogleFonts.notoSerif(
                        fontSize: 15,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade300,
                      elevation: 0,
                    ),
                  ),
                ),
              )
            ],
          );
        }
      },
    );
  }
}
