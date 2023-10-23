import 'package:flutter/material.dart';

const stacolor = Color(0xff3EB489);

const cardColor = Color(0xffC3DFC8);
const pricingcardColor = Color(0xff6B7280);
const kSendButtonTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
  hintText: 'Type your message here...',
  hintStyle: TextStyle(color: Colors.black),
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.black, width: 2.0),
  ),
);
const ktextfieldDeco = InputDecoration(
  hoverColor:  Colors.black,

 // icon: Icon(Icons.account_circle_outlined),
  hintText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
