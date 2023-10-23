// ignore_for_file: prefer_const_constructors

import 'package:e_clean/utils/constants.dart';
import 'package:e_clean/screens/signup_page.dart';
import 'package:e_clean/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

//  final VoidCallback showRegisterPage;

 // const LoginPage({Key? key, required this.showRegisterPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
 // final usernameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
   // usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/img_2.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Log in',
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    wordSpacing: 1),
              ),
            ),
            SizedBox(
              height: 70.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                controller: emailController,
                cursorColor: Colors.black,
                obscureText: false,
                style: TextStyle(
                  color: Colors.black,
                ),
                // cursorColor: Colors.cyan,
                // onChanged: (value) {
                // password = value;
                // },
                decoration: ktextfieldDeco.copyWith(
                    // label: Icon(Icons.alternate_email_outlined),
                    // labelText:'Enter mail',
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                controller: passwordController,
                cursorColor: Colors.black,
                obscureText: true,
                style: TextStyle(
                  color: Colors.black,
                ),
                // cursorColor: Colors.cyan,
                // onChanged: (value) {
                // password = value;
                // },
                decoration: ktextfieldDeco.copyWith(
                    hintText: 'Password',
                    //  label: Icon(Icons.enhanced_encryption),
                    //  labelText: 'Enter password',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            // SizedBox(width: 10,)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Forgot password?',
                style: GoogleFonts.montserrat(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    wordSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 3, 50, 3),
              child: Botton(
                title: 'Log in',
                colors: Colors.white,
                colour: Colors.blueAccent.shade700,
                onPressed: login,
                height: 40,
                width: 200,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                  text: 'New here?',
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      wordSpacing: 1),
                )),
                GestureDetector(
                  onTap: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignupPage()),
                    );
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                    },
                  child: RichText(
                    text: TextSpan(
                      text: 'Sign Up',
                      style: GoogleFonts.montserrat(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          wordSpacing: 1),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        // username:usernameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }
}

// (){
// Navigator.pushReplacement(context,
// MaterialPageRoute(builder:
// (context) => SignupPage(),)
