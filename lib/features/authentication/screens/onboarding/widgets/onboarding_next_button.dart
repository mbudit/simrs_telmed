import 'package:flutter/material.dart';
import 'package:simrs_telmed/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';
import 'package:simrs_telmed/utils/device/device_utility.dart';
import 'package:simrs_telmed/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.appPrimary : TColors.appPrimary,
            side: const BorderSide(color: TColors.appPrimary),
          ),
          child: const Icon(Iconsax.arrow_right_1),
        ));
  }
}
