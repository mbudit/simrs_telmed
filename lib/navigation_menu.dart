import 'package:flutter/material.dart';
import 'package:simrs_telmed/features/lkm/screens/home/home.dart';
import 'package:simrs_telmed/features/lkm/screens/keluhan/keluhan.dart';
import 'package:simrs_telmed/features/lkm/screens/wishlist/wishlist.dart';
import 'package:simrs_telmed/features/personalization/screens/settings/settings.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:simrs_telmed/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode ? TColors.white.withAlpha(25) : TColors.black.withAlpha(25),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(fontSize: 14),  // Adjust the font size here
          ),
        ),
        child: Obx(
          () =>  NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) => controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.health), label: 'Keluhan'),
              NavigationDestination(icon: Icon(Iconsax.message), label: 'Pesan'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Pengguna'),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const KeluhanScreen(),
    const WishlistScreen(),
    const SettingsScreen(),
  ];
}
