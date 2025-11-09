import 'package:clothes_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:clothes_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:clothes_app/features/authentication/screens/onboarding/widgets/onboarding_page_navigator.dart';
import 'package:clothes_app/features/authentication/screens/onboarding/widgets/onboarding_pages.dart';
import 'package:clothes_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:clothes_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scroll pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: GImages.onboardingImage1,
                title: GTexts.onBoardingTitle1,
                subTitle: GTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: GImages.onboardingImage2,
                title: GTexts.onBoardingTitle2,
                subTitle: GTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: GImages.onboardingImage3,
                title: GTexts.onBoardingTitle3,
                subTitle: GTexts.onBoardingSubTitle3,
              ),
              OnBoardingPage(
                image: GImages.onboardingImage4,
                title: GTexts.onBoardingTitle3,
                subTitle: GTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip button
          const OnBoardingSkipButton(),

          /// dot navigation smoothPageIndicator
          const OnboardingPageNavigator(),

          /// Circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
