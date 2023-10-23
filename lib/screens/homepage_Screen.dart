// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_clean/screens/signup_page.dart';
import 'package:e_clean/screens/splashScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:e_clean/utils/constants.dart';
import 'package:e_clean/utils/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginpage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black26,
        extendBody: true,

        // appBar: AppBar(title:Text("Splash Screen Example")),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'images/img.png',
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: stacolor,
                  width: 500,
                  height: 360,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 25, 80, 25),
                        child: Center(
                          child: Text(
                            'Relax,We would get your laundry done',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                wordSpacing: 1),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 3, 40, 10),
                        child: Botton(
                          title: 'Get Started',
                          colors: stacolor,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder:
                                    (context) => SignupPage()
                                )
                            );
                          },
                          height: 40,
                          width: 200,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 3, 40, 3),
                        child: Botton(
                          title: 'Sign In',
                          colors: Colors.white,
                          colour: stacolor,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          height: 40,
                          width: 200,
                        ),
                      ),
                      GestureDetector(
                        child: RichText(
                          text: TextSpan(
                            text: 'Contact Us ',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                wordSpacing: 1),
                          ),
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
