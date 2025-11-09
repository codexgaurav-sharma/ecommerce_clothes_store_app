import 'package:clothes_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/devices/device_utility.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageNavigator extends StatelessWidget {
  const OnboardingPageNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = GHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: GDeviceUtility.getBottomNavigationBarHeight() + 25,
      left: GSize.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? GColors.primary : GColors.dark,
          dotHeight: 6,
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 4,
      ),
    );
  }
}
