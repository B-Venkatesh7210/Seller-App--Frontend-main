import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';
import 'colors.dart';

ThemeData kTheme = ThemeData(
  primarySwatch: kPrimaryColor,
  scaffoldBackgroundColor: kWhiteColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: kPrimaryColor,
    centerTitle: true,
    iconTheme: IconThemeData(color: kWhiteColor),
    actionsIconTheme: IconThemeData(color: kWhiteColor),
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: kPrimaryColor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(borderRadius: kCardRadius)),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.all(kInputFieldContentPadding),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: kTextFieldColor, width: 1),
      borderRadius: BorderRadius.circular(kInputFieldRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: kTextFieldFocusedColor, width: 2),
      borderRadius: BorderRadius.circular(kInputFieldRadius),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: kPrimaryColor, width: 2),
      borderRadius: BorderRadius.circular(kInputFieldRadius),
    ),
    hintStyle: Get.textTheme.caption!.copyWith(color: kTextColor[100]),
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.roboto(
        fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.roboto(
        fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.roboto(
        fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.roboto(
        fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.roboto(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.roboto(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  ),
);
