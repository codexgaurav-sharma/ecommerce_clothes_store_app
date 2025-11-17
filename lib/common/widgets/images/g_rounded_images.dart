import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class GRoundedImage extends StatelessWidget {
  final double? height, width;
  final double borderRadius;
  final String imageUrl;
  final BoxFit? fit;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;

  const GRoundedImage({
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
    this.applyImageRadius = false,
    this.border,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.backgroundColor,
    this.borderRadius = GSize.md,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor != null
              ? backgroundColor!
              : dark
              ? GColors.dark
              : GColors.light,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
