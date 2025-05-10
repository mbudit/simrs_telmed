import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:simrs_telmed/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:simrs_telmed/common/widgets/item/item_card/item_card_vertical.dart';
import 'package:simrs_telmed/common/widgets/layouts/grid_layout.dart';
import 'package:simrs_telmed/common/widgets/texts/section_heading.dart';
import 'package:simrs_telmed/features/lkm/screens/home/widgets/carousel_slider.dart';
import 'package:simrs_telmed/features/lkm/screens/home/widgets/home_app_bar.dart';
import 'package:simrs_telmed/features/lkm/screens/home/widgets/home_hospital_list.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:simrs_telmed/utils/constants/image_strings.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //// -- Header --
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- AppBar --
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceAntaraSection),

                  // -- Search Bar --
                  TSearchContainer(
                    text: 'Pencarian',
                    showBackground: true,
                    showBorder: true,
                  ),
                  SizedBox(height: TSizes.spaceAntaraSection),

                  // -- Categories --
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // -- Heading --
                        TSectionHeading(
                          title: 'Klinik dan Puskesmas',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceAntaraItem),

                        // -- Categories --
                        THomeHospitalList(),
                      ],
                    ),
                  ),

                  SizedBox(height: TSizes.spaceAntaraSection),
                ],
              ),
            ),

            //// -- Body --
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // --- Carousel ---
                  const TCarouselSlider(banners: [TImages.banner1, TImages.banner2, TImages.banner3]),
                  const SizedBox(height: TSizes.spaceAntaraSection),

                  TSectionHeading(
                    textAlign: TextAlign.center,
                    title: 'Message of the day',
                    textColor: TColors.black,
                    onPressed: () {},
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceAntaraItem),

                  // --- Item Card ---
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TItemCardVertical(itemTitle: 'Pesan hari ini', itemSubtitle: 'Lorem ipsum dolor amet', image: TImages.itemImage1,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
