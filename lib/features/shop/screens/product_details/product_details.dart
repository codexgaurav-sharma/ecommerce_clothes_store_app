import 'package:clothes_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:clothes_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:clothes_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 - Product Image Slider
            GProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                right: GSize.defaultSpace,
                left: GSize.defaultSpace,
                bottom: GSize.defaultSpace,
              ),
              child: Column(
                children: [
                  GRatingAndShare(),
                  ProductMetaData()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
