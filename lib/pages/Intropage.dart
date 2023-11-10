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
      backgroundColor: Colors.white10,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Image.asset(
                  'lib/images/logo_app.png',
                  height: 200,
                ),
              ),
              const SizedBox(height: 50),
               Text(
                'Only One Dollar Design',
                textAlign: TextAlign.center,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Choose from the wide range of collection',
                textAlign: TextAlign.center,
                style: GoogleFonts.slabo13px(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 130),

              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[500],
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
