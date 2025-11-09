import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  final String title;
  final TextAlign? align;
  final bool smallSize;
  final int maxLines; 
  const ProductTitleText({super.key, required this.title, this.align = TextAlign.left, this.smallSize = false, this.maxLines = 2});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: align,
    );
  }
}
