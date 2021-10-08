import 'package:flutter/material.dart';

const double kInputFieldRadius = 8;

const double kInputFieldContentPadding = 12;

const double kIconsPadding = 16;

const double kSmallBorderWidth = 0.5;
const double kMediumBorderWidth = 1;
const double kLargeBorderWidth = 2;

const BorderRadius kSmallRadius = BorderRadius.all(Radius.circular(6));
const BorderRadius kMediumRadius = BorderRadius.all(Radius.circular(10));
const BorderRadius kLargeRadius = BorderRadius.all(Radius.circular(14));
const BorderRadius kCardRadius = BorderRadius.all(Radius.circular(12));
const BorderRadius kChipRadius = BorderRadius.all(Radius.circular(50));

const OutlinedBorder kSmallButtonShape =
    RoundedRectangleBorder(borderRadius: kSmallRadius);
const OutlinedBorder kMediumButtonShape =
    RoundedRectangleBorder(borderRadius: kMediumRadius);
const OutlinedBorder kLargeButtonShape =
    RoundedRectangleBorder(borderRadius: kLargeRadius);
const OutlinedBorder kRoundedButtonShape =
    RoundedRectangleBorder(borderRadius: kChipRadius);

const Duration kAnimationDuration = Duration(milliseconds: 300);
