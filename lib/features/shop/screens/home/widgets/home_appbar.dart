import 'package:flutter/material.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good day for shopping",
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: GColors.grey),
          ),
          Text(
            "Gaurav Sharma",
            style: Theme.of(context).textTheme.headlineSmall!
                .apply(color: GColors.white),
          ),
        ],
      ),
      actions: [GCartCounterWidget(onPressed: (){}, iconColor: GColors.white,)],
    );
  }
}
