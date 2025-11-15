import 'package:clothes_app/common/widgets/appbar/appbar.dart';
import 'package:clothes_app/common/widgets/appbar/tabbar.dart';
import 'package:clothes_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:clothes_app/common/widgets/layouts/grid_layout.dart';
import 'package:clothes_app/common/widgets/products/brands/brand_card.dart';
import 'package:clothes_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:clothes_app/common/widgets/texts/section_heading.dart';
import 'package:clothes_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: GAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [GCartCounterWidget(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? GColors.black : GColors.white,
                expandedHeight: 440,

                flexibleSpace: Padding(
                  padding: EdgeInsets.all(GSize.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: GSize.spaceBtwItems),
                      GSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: GSize.spaceBtwSections),

                      SectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),

                      GGridLayout(
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GBrandCard(showBorder: true);
                        },
                        itemCount: 4,
                      ),
                    ],
                  ),
                ),
                bottom: GTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Party')),
                    Tab(child: Text('Formal')),
                    Tab(child: Text('Casual')),
                    Tab(child: Text('Premium')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab()
              
            ],
          ),
        ),
      ),
    );
  }
}
