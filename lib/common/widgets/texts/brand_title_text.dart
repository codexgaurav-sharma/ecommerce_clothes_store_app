
import 'package:clothes_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class GBrandTitltText extends StatelessWidget {
  const GBrandTitltText({
    super.key,
    required this.title,
    this.textColor,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,    
  });


  final String title;
  final int maxLines;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: brandTextSizes == TextSizes.small ?
      Theme.of(context).textTheme.labelMedium!.apply(color: textColor) 
      : brandTextSizes == TextSizes.medium ?
      Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
      : brandTextSizes == TextSizes.large ? 
      Theme.of(context).textTheme.titleLarge!.apply(color: textColor) :
      Theme.of(context).textTheme.bodyMedium!.apply(color: textColor) ,
    );
  }
}
