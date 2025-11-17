import 'package:clothes_app/common/widgets/appbar/appbar.dart';
import 'package:clothes_app/common/widgets/icons/g_circular_icons.dart';
import 'package:clothes_app/common/widgets/layouts/grid_layout.dart';
import 'package:clothes_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:clothes_app/features/shop/screens/home/home.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          GCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(GSize.defaultSpace), child: Column(
          children: [
            GGridLayout(itemBuilder: (_, index) => const GProductCardVertical(), itemCount: 4)
          ],
        ),),
      ),
    );
  }
}
