import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/widgets/appbar/appbar.dart';
import 'package:simrs_telmed/common/widgets/notification/icon/notif_menu_icon.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:simrs_telmed/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.copyWith(color: TColors.grey, fontSize: 14)),
          Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
        ],
      ),
      actions: [TNotifCounterIcon(onPressed: () {}, iconColor: TColors.white,)],
    );
  }
}