import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

void kSetStatusBarWhite() => SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: kWhiteColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
void kSetStatusBarRed() => SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: kPrimaryColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    );

Size mediaSize(BuildContext context) => MediaQuery.of(context).size;

EdgeInsets sidePadding(BuildContext context) =>
    EdgeInsets.symmetric(horizontal: mediaSize(context).width * 0.05);
