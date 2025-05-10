import 'package:flutter/material.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:simrs_telmed/utils/constants/image_strings.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';
import 'package:simrs_telmed/utils/constants/text_strings.dart';
import 'package:simrs_telmed/utils/helpers/helper_functions.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          height: 160,
          image: AssetImage(
              dark ? TImages.appLogo : TImages.appLogo),
              
        ),
        const SizedBox(
          height: TSizes.sm + 10,
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: TColors.appAccent),
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
      ],
    );
  }
}