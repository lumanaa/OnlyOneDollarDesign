import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onedollar/components/BottomNav.dart';
import 'package:onedollar/pages/Cart_page.dart';
import 'package:onedollar/pages/Shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _SelectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

//pages to display
  final List<Widget> _pages = [
    ShopPage(),
    // DesignScreen(),
    //Container(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        onTap: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple.shade200,
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('lib/images/logo_onlyonedollar.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: GoogleFonts.notoSerif(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_SelectedIndex],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:onedollar/components/BottomNav.dart';
// import 'package:onedollar/pages/Cart_page.dart';
// import 'package:onedollar/pages/Shop_page.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _SelectedIndex = 0;

//   void navigateBottomBar(int index) {
//     setState(() {
//       _SelectedIndex = index;
//     });
//   }

//   // Pages to display
//   final List<Widget> _pages = [
//     ShopPage(),
//     CartPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNav(
//         onTap: (index) => navigateBottomBar(index),
//       ),
//       body: Scaffold(
//         appBar: _SelectedIndex == 0 ? _buildAppBar() : null,
//         drawer: Drawer(
//           backgroundColor: Colors.deepPurple.shade200,
//           child: Column(
//             children: [
//               DrawerHeader(
//                 child: Image.asset('lib/images/logo_onlyonedollar.png'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 25.0),
//                 child: ListTile(
//                   leading: Icon(
//                     Icons.home,
//                     color: Colors.white,
//                   ),
//                   title: Text(
//                     'Home',
//                     style: GoogleFonts.notoSerif(
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//         body: _pages[_SelectedIndex],
//       ),
//     );
//   }

//   AppBar _buildAppBar() {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       leading: Builder(
//         builder: (context) => IconButton(
//           icon: Icon(
//             Icons.menu,
//             color: Colors.black,
//           ),
//           onPressed: () {
//             Scaffold.of(context).openDrawer();
//           },
//         ),
//       ),
//     );
//   }
// }
