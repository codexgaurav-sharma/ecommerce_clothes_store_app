import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class GCircularImage extends StatelessWidget {
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor, backgroundColor;
  final double width, height, padding;

  const GCircularImage({super.key, this.fit = BoxFit.cover, required this.image, this.isNetworkImage = false, this.overlayColor, this.backgroundColor, this.width = 56, this.height = 56, this.padding = GSize.sm});


  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);

    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: dark ? GColors.black : GColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
        color: overlayColor != null ? overlayColor! : dark ? GColors.white : GColors.black,
      ),
    );
  }
}
