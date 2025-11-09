import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/widgets.dart';

class GSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: GSize.appBarHeight,
    bottom: GSize.defaultSpace,
    left: GSize.defaultSpace,
    right: GSize.defaultSpace,
  );
}
