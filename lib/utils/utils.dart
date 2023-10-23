import 'package:flutter/material.dart';

class utils {
  Size getscreensize() {
    return MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size;


  }
  showSnackbar( BuildContext context, String content){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(content),));



  }
}
