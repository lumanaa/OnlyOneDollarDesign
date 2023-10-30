import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  void Function(int)? onTap;
  BottomNav({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0),
      child: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.deepPurple.shade200,
        animationDuration: Duration(milliseconds: 300),
        onTap: (value) => {
         onTap!(value),
        },
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          // Icon(
          //   Icons.favorite,
          //   size: 30,
          //   color: Colors.white,
          // ),
          Icon(
            Icons.shopping_bag,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
