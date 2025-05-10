import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/widgets/appbar/appbar.dart';
import 'package:simrs_telmed/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:simrs_telmed/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:simrs_telmed/common/widgets/list_tile/user_profile_header.dart';
import 'package:simrs_telmed/common/widgets/texts/section_heading.dart';
import 'package:simrs_telmed/features/personalization/screens/profile/profile.dart';
import 'package:simrs_telmed/features/personalization/screens/settings/widgets/alamat_page.dart';
import 'package:simrs_telmed/features/personalization/screens/settings/widgets/nik_page.dart';
import 'package:simrs_telmed/features/personalization/screens/settings/widgets/nohp_page.dart';
import 'package:simrs_telmed/features/personalization/screens/settings/widgets/password_page.dart';
import 'package:simrs_telmed/features/personalization/screens/settings/widgets/riwayat_page.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // --- User Appbar ---
                  TAppBar(
                    title: Text('Akun', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: TColors.white)),
                  ),

                  // --- User Header ---
                  TUserProfileHeader(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: TSizes.spaceAntaraSection),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // --- Account Settings ---
                  const TSectionHeading(title: 'Pengaturan Akun', showActionButton: false),
                  const SizedBox(height: TSizes.spaceAntaraItem),

                  TSettingsMenuTile(icon: Iconsax.safe_home, title: 'Alamat', subtitle: 'Pengaturan alamat akun', onTap: () => Get.to(() => const AlamatScreen())),
                  TSettingsMenuTile(icon: Iconsax.mobile, title: 'Nomor handphone', subtitle: 'Pengaturan nomor telepon', onTap: () => Get.to(() => const HandphonePage())),
                  TSettingsMenuTile(icon: Iconsax.profile_tick, title: 'NIK', subtitle: 'Pengaturan Nomor Induk Kewarganegaaran', onTap: () => Get.to(() => const NikPage())),
                  TSettingsMenuTile(icon: Iconsax.health, title: 'Riwayat keluhan', subtitle: 'Riwayat dari seluruh keluhan anda', onTap: () => Get.to(() => const RiwayatPage())),
                  TSettingsMenuTile(icon: Iconsax.password_check, title: 'Kata sandi', subtitle: 'Pengaturan kata sandi untuk akun', onTap: () => Get.to(() => const PasswordPage())),

                  // -- App Settings --
                  const SizedBox(height: TSizes.spaceAntaraSection),
                  const TSectionHeading(title: 'Pengaturan Aplikasi', showActionButton: false),
                  const SizedBox(height: TSizes.spaceAntaraItem),
                  TSettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload datamu ke Firebase Cloud',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Menunjukkan layanan kesehatan terdekat anda',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  const SizedBox(height: TSizes.spaceAntaraSection),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceAntaraSection),
                ],
              ),
            ),

            /// --- Body
          ],
        ),
      ),
    );
  }
}
