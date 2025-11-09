import 'package:clothes_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GShadows {
  static final verticalProductShadow = BoxShadow(
    color: GColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2), // changes position of shadow
  );
  static final horizontalProductShadow = BoxShadow(
    color: GColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2), // changes position of shadow
  );
}