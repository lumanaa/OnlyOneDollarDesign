import 'package:flutter/material.dart';
import 'package:onedollar/model/Image.dart';

class ImageSlider extends StatelessWidget {
  List<Album> album;
  int selectedIndex;
  ImageSlider({super.key, required this.album, required this.selectedIndex});

  // int selectedAlbumIndex = 0;

  @override
  Widget build(BuildContext context) {
    print(album[selectedIndex]);
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Column(
        children: [
          Container(
            child: Text(''),
          )
        ],
      ),
    );
  }
}
