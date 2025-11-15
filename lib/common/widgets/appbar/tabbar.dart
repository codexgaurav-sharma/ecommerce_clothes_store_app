import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/devices/device_utility.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class GTabBar extends StatelessWidget implements PreferredSizeWidget {
  const GTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);

    return Material(
      child: Container(
        color: dark ? GColors.black : GColors.white,
        child: TabBar(
          isScrollable: true,
          indicatorColor: GColors.primary,
          unselectedLabelColor: GColors.darkGrey,
          labelColor: dark ? GColors.white : GColors.primary,
          tabs: tabs,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(GDeviceUtility.getAppBarHeight());
}
