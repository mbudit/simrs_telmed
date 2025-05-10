import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/widgets/images/circular_image.dart';
import 'package:simrs_telmed/common/widgets/images/rounded_container.dart';
import 'package:simrs_telmed/common/widgets/texts/subitem_title_text_with_icon.dart';
import 'package:simrs_telmed/utils/constants/enums.dart';
import 'package:simrs_telmed/utils/constants/image_strings.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';

class TSubItemCard extends StatelessWidget {
  const TSubItemCard({
    super.key,
    required this.showBorder,
    this.onTap,
    required this.title,
    this.subtitle = 'Lorem ipsum',
  });

  final bool showBorder;
  final void Function()? onTap;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // -- Gambar Brand
            const Flexible(
              child: TCircularImage(
                image: TImages.hospitalIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
              ),
            ),

            const SizedBox(height: TSizes.spaceAntaraItem / 2),

            /// -- Text Brand
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TSubItemTitleTextWithIcon(title: title, subItemTextSize: TextSizes.large),
                  Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
