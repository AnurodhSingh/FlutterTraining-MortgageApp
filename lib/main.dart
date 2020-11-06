import 'package:flutter/material.dart';
import 'package:mortgage_app/ui/mortgage_app.dart';
import 'package:mortgage_app/util/colors.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
      accentColor: primaryIndigoDark,
      primaryColor: primaryIndigo200,
      scaffoldBackgroundColor: secondaryBackgroundWhite,
      hintColor: textOnPrimaryBlack,
      cardColor: secondaryPurpleLight,
      textTheme: _buildMortgageTextTheme(base.textTheme),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: primaryIndigoLight),
              borderRadius: BorderRadius.circular(12))),
      floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
          elevation: 7,
          splashColor: primaryIndigoLight,
          backgroundColor: secondaryDeepPurple));
}

_buildMortgageTextTheme(TextTheme base) {
  return base
      .copyWith(
        bodyText2: TextStyle(color: textOnPrimaryBlack, fontSize: 20),
      )
      .apply(
        fontFamily: "DancingScript",
      );
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MortgageApp(),
    theme: _appTheme,
  ));
}
