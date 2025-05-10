import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/widgets/appbar/appbar.dart';
import 'package:simrs_telmed/common/widgets/appbar/tabbar.dart';
import 'package:simrs_telmed/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:simrs_telmed/common/widgets/subitem/subitem_card/subitem_card.dart';
import 'package:simrs_telmed/common/widgets/layouts/grid_layout.dart';
import 'package:simrs_telmed/common/widgets/notification/icon/notif_menu_icon.dart';
import 'package:simrs_telmed/common/widgets/texts/section_heading.dart';
import 'package:simrs_telmed/features/lkm/screens/store/widgets/category_tab.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';
import 'package:simrs_telmed/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Keluhan', style: Theme.of(context).textTheme.headlineMedium),
          actions: [TNotifCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search Bar
                      const SizedBox(height: TSizes.spaceAntaraItem),
                      const TSearchContainer(text: 'Pencarian', showBackground: false, showBorder: true, padding: EdgeInsets.zero),
                      const SizedBox(height: TSizes.spaceAntaraSection),

                      /// -- Featured Brands Heading
                      TSectionHeading(
                        title: 'Featured Brands',
                        textColor: TColors.black,
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceAntaraItem / 1.5),

                      /// -- Brands
                      /// Memakai grid layout
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const TSubItemCard(
                            showBorder: true, title: 'Keluhan',
                          );
                        },
                      ),
                    ],
                  ),
                ),

                /// --- Tab Bar ----
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab()],
          ),
        ),
      ),
    );
  }
}
