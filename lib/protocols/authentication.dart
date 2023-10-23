import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationMethods {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String> signupUser({
    required String username,
    required String password,
    required String address,
    required String email,
  }) async {
    username.trim();
    password.trim();
    address.trim();
    email.trim();
    String output = 'wrong input';
    if (username != '' && password != '' && address != '' && email != '') {

      try {
        await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);
        output = 'success';
      } catch (e) {}

      //return
    } else {
      output= 'fill up all';

    }
    return output;
  }
}
