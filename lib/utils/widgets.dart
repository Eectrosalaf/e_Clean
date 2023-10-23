// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:e_clean/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Botton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  Botton(
      {this.colour,
      required this.title,
      required this.onPressed,
      this.width,
      this.height,
      this.icon,
      this.colors,
      });
  final Color? colour;
  final Color? colors;
  final String? title;
  final double? height;
  final double? width;
  final IconData? icon;
  final Function() onPressed;
  //final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Material(
        elevation: 1.5,
        color: colour,
        borderRadius: BorderRadius.circular(6.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width,
          height: height,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title!,
                  style: GoogleFonts.poppins(
                      color: colors, fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Icon(
                  icon,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}

