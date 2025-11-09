import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothes_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:clothes_app/common/widgets/images/g_rounded_images.dart';
import 'package:clothes_app/features/shop/controllers/home_controller.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GPromoSlider extends StatelessWidget {
  final List<String> banners;

  const GPromoSlider({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (url) => GRoundedImage(imageUrl: url, applyImageRadius: true),
              )
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            onPageChanged: (index, _) =>
                controller.updateCarouselPageIndicator(index),
            viewportFraction: 1,
          ),
        ),
        const SizedBox(height: GSize.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                GCircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? GColors.primary
                      : GColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
