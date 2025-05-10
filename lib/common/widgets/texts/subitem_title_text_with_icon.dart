import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/widgets/texts/subitem_title_text.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:simrs_telmed/utils/constants/enums.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';

class TSubItemTitleTextWithIcon extends StatelessWidget {
  const TSubItemTitleTextWithIcon({
    super.key,
    this.maxLines = 1,
    required this.title,
    this.textColor,
    this.iconColor = TColors.appPrimary,
    this.textAlign = TextAlign.center,
    this.subItemTextSize = TextSizes.small,
  });

  final int maxLines;
  final String title;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes subItemTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// --- Subjudul Item ---
        Flexible(
            child: TSubItemTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          subItemTextSize: subItemTextSize,
        )),
        const SizedBox(width: TSizes.xs),

        /// --- Icon samping subjudul ---
        // Icon(
        //   Iconsax.verify5,
        //   color: iconColor,
        //   size: TSizes.iconXs,
        // )
      ],
    );
  }
}
