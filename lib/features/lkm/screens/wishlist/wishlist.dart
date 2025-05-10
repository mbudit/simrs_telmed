import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/widgets/appbar/appbar.dart';
import 'package:simrs_telmed/common/widgets/icons/circular_icon.dart';
import 'package:simrs_telmed/common/widgets/item/item_card/item_card_vertical.dart';
import 'package:simrs_telmed/common/widgets/layouts/grid_layout.dart';
import 'package:simrs_telmed/features/lkm/screens/home/home.dart';
import 'package:simrs_telmed/utils/constants/image_strings.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Pesan',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(
              const HomeScreen(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [TGridLayout(itemCount: 6, itemBuilder: (_, index) => const TItemCardVertical(itemTitle: 'Dokter', itemSubtitle: 'Rumah Sakit', image: TImages.itemImage3,))],
          ),
        ),
      ),
    );
  }
}
