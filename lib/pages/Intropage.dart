import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onedollar/pages/Homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(children: [
            //logo
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('lib/images/logo_onlyonedollar.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Only \$ Design',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 48),

            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 129, 91, 194),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Text(
                    'Shop',
                    style: GoogleFonts.notoSerif(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ]),
        ),
      ),
    );
  }
}
