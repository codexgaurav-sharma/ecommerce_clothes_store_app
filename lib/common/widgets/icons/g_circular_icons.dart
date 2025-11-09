import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class GCircularIcon extends StatelessWidget {
  final IconData icon;
  final double? height, width;
  final double? size;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  const GCircularIcon({
    super.key,
    required this.icon,
    this.height = 40.0,
    this.width = 40.0,
    this.size = GSize.iconMd,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor != null
            ? backgroundColor!
            : dark
            ? GColors.black.withValues(alpha: 0.9)
            : GColors.white.withValues(alpha: 0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
