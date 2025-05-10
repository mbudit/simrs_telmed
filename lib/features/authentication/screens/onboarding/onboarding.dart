import 'package:flutter/material.dart';
import 'package:simrs_telmed/features/authentication/controllers/onboarding/onboarding_controller.dart';

import 'package:simrs_telmed/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:simrs_telmed/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:simrs_telmed/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:simrs_telmed/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

import 'package:simrs_telmed/utils/constants/image_strings.dart';
import 'package:simrs_telmed/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              // OnBoarding Page Halaman 1
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),

              // OnBoarding Page Halaman 2
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),

              // OnBoarding Page Halaman 3
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // Button Circle
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
