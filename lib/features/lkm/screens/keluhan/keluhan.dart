import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/widgets/appbar/appbar.dart';
import 'package:simrs_telmed/common/widgets/texts/section_heading.dart';
import 'package:simrs_telmed/features/lkm/screens/keluhan/widgets/pesan_layanan.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class KeluhanScreen extends StatelessWidget {
  const KeluhanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Keluhan',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// --- Header ---
              TSectionHeading(title: 'Apa keluhanmu hari ini?', showActionButton: false),
              SizedBox(height: TSizes.spaceAntaraItem),

              /// --- Kumpulan keluhan biasa
              CheckBoxGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckBoxGrid extends StatefulWidget {
  const CheckBoxGrid({super.key});

  @override
  CheckBoxGridState createState() => CheckBoxGridState();
}

class CheckBoxGridState extends State<CheckBoxGrid> {
  List<Map> keluhan = [
    {"name": "Pusing", "isChecked": false},
    {"name": "Suhu Panas", "isChecked": false},
    {"name": "Mual", "isChecked": false},
    {"name": "Nyeri otot", "isChecked": false},
    {"name": "Pilek", "isChecked": false},
    {"name": "Batuk", "isChecked": false}
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
            children: keluhan.map((favorite) {
          return CheckboxListTile(
              activeColor: TColors.appPrimary,
              checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              title: Text(favorite['name']),
              value: favorite['isChecked'],
              onChanged: (val) {
                setState(() {
                  favorite['isChecked'] = val;
                });
              });
        }).toList()),
        const SizedBox(height: TSizes.spaceAntaraItem / 2),
        const Divider(),
        const SizedBox(height: TSizes.spaceAntaraItem),
        Wrap(
          children: keluhan.map((favorite) {
            if (favorite['isChecked'] == true) {
              return Card(
                elevation: 3,
                color: TColors.appAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(favorite['name'], style: const TextStyle(color: TColors.white)),
                      const SizedBox(width: TSizes.spaceAntaraItem),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            favorite['isChecked'] = !favorite['isChecked'];
                          });
                        },
                        child: const Icon(
                          Iconsax.trash,
                          color: TColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return Container();
          }).toList(),
        ),
        const SizedBox(height: TSizes.defaultSpace),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: TColors.appSecondary,
              side: const BorderSide(color: TColors.appSecondary),
            ),
            onPressed: () => Get.to(() => const PesanLayananScreen()),
            child: const Text("Panggil Layanan Kesehatan"),
          ),
        ),
      ],
    );
  }
}
