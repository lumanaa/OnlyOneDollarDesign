// import 'package:flutter/material.dart';
// import 'package:onedollar/Provider/DataProvider.dart';
// import 'package:onedollar/pages/Intropage.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(ChangeNotifierProvider(
//       create: (context) => DataProvider(), child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: IntroPage(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:onedollar/Provider/DataProvider.dart';
import 'package:onedollar/model/Cart.dart';
import 'package:onedollar/pages/Intropage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DataProvider()),
        ChangeNotifierProvider(create: (context) => Cart()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}
