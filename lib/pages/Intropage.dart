// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:onedollar/pages/Homepage.dart';

// class IntroPage extends StatelessWidget {
//   const IntroPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25.0),
//           child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//             //logo
//             Padding(
//               padding: const EdgeInsets.only(top: 150),
//               child: Image.asset('lib/images/logo_onlyonedollar.png'),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Text(
//                 'Only \$ Design',
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.notoSerif(
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 48),

//             GestureDetector(
//               onTap: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const HomePage()),
//               ),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 129, 91, 194),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 padding: EdgeInsets.all(25),
//                 child: Center(
//                   child: Text(
//                     'Shop',
//                     style: GoogleFonts.notoSerif(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const Spacer(),
//           ]),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:onedollar/pages/Homepage.dart';

// class IntroPage extends StatelessWidget {
//   const IntroPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[100],
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Logo
//               Padding(
//                 padding: const EdgeInsets.only(top: 150),
//                 child: Image.asset(
//                   'lib/images/logo_onlyonedollar.png',
//                 ),
//               ),
//               const SizedBox(height: 150),
//                Text(
//                 'Only 1 Dollar Design',
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.roboto(
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[700],
//                 ),
//                  subtitle: Text('Choose from the wide range of collection'),
//               ),
              
//               const SizedBox(height: 150),

//               GestureDetector(
//                 onTap: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const HomePage()),
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[900],
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   padding: EdgeInsets.all(25),
//                   child: Text(
//                     'Get Started',
//                     style: GoogleFonts.notoSerif(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               const Spacer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onedollar/pages/Homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Image.asset(
                  'lib/images/logo_onlyonedollar.png',
                ),
              ),
              const SizedBox(height: 90),
              Text(
                'Choose from the wide range of collection',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 50),

              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.notoSerif(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
