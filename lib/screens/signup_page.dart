// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:e_clean/utils/constants.dart';
import 'package:e_clean/protocols/authentication.dart';
import 'package:e_clean/screens/loginpage.dart';
import 'package:e_clean/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_clean/utils/utils.dart';
import 'loginpage.dart';
import 'package:e_clean/protocols/authentication.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final addressController = TextEditingController();

  AuthenticationMethods authenticationMethods = AuthenticationMethods();


  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    addressController.dispose();
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
          children: [
            Text(
              'Sign Up',
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  wordSpacing: 1),
            ),
            SizedBox(
              height: 70.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(

                 controller: usernameController,
                obscureText: false,
                cursorColor: Colors.black,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.black,
                ),
                // cursorColor: Colors.brown,
                // onChanged: (value) {
                // email = value;
                // },
                decoration: ktextfieldDeco.copyWith(
                  hintText: 'Username',
                  // label: Icon(Icons.account_circle_outlined),
                  // labelText:'Enter your username',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
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
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                controller: addressController,
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
                    // label: Icon(Icons.alte rnate_email_outlined),
                    // labelText:'Enter mail',
                    hintText: 'Address',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 3, 50, 3),
              child: Botton(
                title: 'Register',
                colors: Colors.white,
                colour: Colors.blueAccent.shade700,
                onPressed: () async {
                  String output =
                 await authenticationMethods.signupUser(
                      username: usernameController.text,
                      password: passwordController.text,
                      address: addressController.text,
                      email: emailController.text);
                // String output = 'went wrong';
                 if( output =='success'){

                   log('next step');
                 }
                 else{
                   utils().showSnackbar(context, output);
                 }
                },
                height: 40,
                width: 200 ,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(120, 3, 120, 3),
              child: Botton(
                title: 'Back',
                colors: Colors.white,
                colour: Colors.blueAccent.shade700,
                onPressed: () {
                  Navigator.pop(context);
                },
                height: 40,
                width: 150,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                  text: 'Already a member?',
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      wordSpacing: 1),
                )),
                GestureDetector(
                  onTap: () {},
                  child: RichText(
                      text: TextSpan(
                    text: 'Login',
                    style: GoogleFonts.montserrat(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        wordSpacing: 1),
                  )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
