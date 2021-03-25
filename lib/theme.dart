// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:shop_app/constants.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Nunito",
      appBarTheme: appBarTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme());
}

TextTheme textTheme() {
  return const TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor));
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme:
        TextTheme(headline6: TextStyle(color: Color(0xFF888888), fontSize: 18)),
  );
}

InputDecorationTheme inputDecorationTheme() {
  final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(color: kTextColor),
      gapPadding: 10);

  return InputDecorationTheme(
      // floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
}
