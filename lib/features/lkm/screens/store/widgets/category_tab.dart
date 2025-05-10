import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/widgets/item/item_card/item_card_vertical.dart';
import 'package:simrs_telmed/common/widgets/layouts/grid_layout.dart';
import 'package:simrs_telmed/common/widgets/subitem/subitem_card/subitem_showcase.dart';
import 'package:simrs_telmed/common/widgets/texts/section_heading.dart';
import 'package:simrs_telmed/utils/constants/image_strings.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// --- Sub-Items
              const TSubItemShowcase(
                images: [
                  TImages.itemImage1,
                  TImages.itemImage1,
                  TImages.itemImage1,
                ],
              ),
              const TSubItemShowcase(
                images: [
                  TImages.itemImage1,
                  TImages.itemImage1,
                  TImages.itemImage1,
                ],
              ),
              const SizedBox(height: TSizes.spaceAntaraItem),

              /// --- Items
              TSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: TSizes.spaceAntaraItem),

              TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TItemCardVertical(itemTitle: 'Test', itemSubtitle: 'Test', image: TImages.itemImage1,))
            ],
          ),
        ),
      ],
    );
  }
}
