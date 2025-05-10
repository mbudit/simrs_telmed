import 'package:flutter/material.dart';

import 'package:simrs_telmed/common/styles/spacing_styles.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';
import 'package:simrs_telmed/utils/constants/text_strings.dart';
import 'package:simrs_telmed/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              const SizedBox(height: TSizes.appBarHeight),

              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.7,
              ),
              const SizedBox(height: TSizes.spaceAntaraSection),

              // Title dan Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 22),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceAntaraItem),

              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceAntaraSection),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: TColors.appSecondary,
                    side: const BorderSide(color: TColors.appSecondary),
                  ),
                  onPressed: onPressed,
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(height: TSizes.spaceAntaraItem),
            ],
          ),
        ),
      ),
    );
  }
}
