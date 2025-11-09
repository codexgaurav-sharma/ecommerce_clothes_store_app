import 'package:clothes_app/common/widgets/image_text_scrollbar/vertical_image_text_scrollbar.dart';
import 'package:clothes_app/common/widgets/texts/section_heading.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: GSize.defaultSpace),
      child: Column(
        children: [
          SectionHeading(
            title: "Popular Categories",
            textColor: GColors.white,
            showActionButton: false,
          ),
          const SizedBox(height: GSize.spaceBtwItems),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return const GVerticalImageText(
                  image: GImages.categoryMensShirt,
                  title: "Mens shirt",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
