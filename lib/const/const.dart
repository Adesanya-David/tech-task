import 'package:flutter/material.dart';

var backgroundColor = Colors.black;

var buttonColor = const Color.fromRGBO(18, 96, 204, 1);

var textButtonColor = Colors.white;

var containerColor = const Color.fromRGBO(20, 29, 56, 1);

var containerColor1 = const Color.fromRGBO(8, 39, 109, 1);

var containerColor2 = const Color.fromARGB(206, 214, 242, 246);

var containerColor3 = const Color.fromARGB(255, 23, 45, 74);

var containerColor4 = const Color.fromRGBO(232, 243, 255, 1);

var textFieldColor = const Color.fromRGBO(239, 244, 255, 1);

var headerTextColor = const Color.fromARGB(64, 123, 255, 1);

const defaultPadding = 16.0;

OutlineInputBorder textFieldBorder =
    const OutlineInputBorder(borderRadius: BorderRadius.zero);

class Styles {
  static Color buttonTextColor = Colors.white;

  static TextStyle buttonTextStyle = TextStyle(
      fontSize: 16,
      color: buttonTextColor,
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w500);

  // ignore: prefer_const_constructors
  static TextStyle headlineStyle = TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w600);

  static TextStyle headlineStyle1 = const TextStyle(
      fontSize: 16, fontFamily: 'Satoshi', fontWeight: FontWeight.w500);

  static TextStyle headlineStyle2 = TextStyle(
      fontSize: 24,
      color: buttonColor,
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w600);

  static TextStyle bodyText = const TextStyle(
      fontSize: 14, fontFamily: 'Satoshi', fontWeight: FontWeight.w400);

  static TextStyle bodyText1 = const TextStyle(
      fontSize: 18, fontFamily: 'Satoshi', fontWeight: FontWeight.w500);

  static TextStyle bodyText2 = const TextStyle(
      fontSize: 10,
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w600,
      color: Colors.white);

  static TextStyle bodyText3 = const TextStyle(
    fontSize: 12,
    fontFamily: 'Satoshi',
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyText4 = const TextStyle(
    fontSize: 8,
    fontFamily: 'Satoshi',
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodyText5 = const TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontFamily: 'Satoshi',
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyText6 = const TextStyle(
      fontSize: 18,
      fontFamily: 'Satoshi',
      color: Colors.white,
      fontWeight: FontWeight.w600);

  static TextStyle containerText = TextStyle(
    fontSize: 10,
    color: containerColor,
    fontFamily: 'Satoshi',
    fontWeight: FontWeight.w400,
  );

  static TextStyle containerText1 = const TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontFamily: 'Satoshi',
    fontWeight: FontWeight.w400,
  );

  static TextStyle tableText = const TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontFamily: 'Satoshi',
    fontWeight: FontWeight.w400,
  );

  static TextStyle tableHeaderText = const TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontFamily: 'Satoshi',
    fontWeight: FontWeight.w500,
  );
}
