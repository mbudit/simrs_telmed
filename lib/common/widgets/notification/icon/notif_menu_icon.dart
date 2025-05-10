import 'package:flutter/material.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TNotifCounterIcon extends StatelessWidget {
  const TNotifCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
        onPressed: onPressed,
        icon:  Icon(
          Iconsax.notification,
          color: iconColor,
        ),
      ),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: TColors.black.withAlpha(128),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text(
              "2",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.white, fontSize: 10),
            ),
          ),
        ),
      )
    ]);
  }
}