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
//                 padding: const EdgeInsets.all(12.0),
//                 child: Text(
//                   dataProvider.album[selectedAlbumIndex].name,
//                   style: GoogleFonts.poppins(
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
//               GestureDetector(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Album selectedAlbum = dataProvider.album[selectedAlbumIndex];
//                     Cart().addItemToCart(selectedAlbum); // Use addItemToCart
//                     showDialog(
//                       context: context,
//                       builder: (context) => AlertDialog(
//                         backgroundColor: Colors.white,
//                         title: Text("Added Successfully!"),
//                         content: Text('Check your cart'),
//                       ),
//                     );
//                   },
//                   child: Text("Add to Cart"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blueGrey.shade300,
//                     elevation: 0,
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
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  dataProvider.album[selectedAlbumIndex].name,
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CarouselSlider(
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
              GestureDetector(
                child: ElevatedButton(
                  onPressed: () {
                    Album selectedAlbum =
                        dataProvider.album[selectedAlbumIndex];
                    context.read<Cart>().addItemToCart(selectedAlbum);
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
                          'Check your cart',
                          style: GoogleFonts.notoSerif(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Add to Cart",
                    style: GoogleFonts.notoSerif(
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple.shade300,
                    elevation: 0,
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