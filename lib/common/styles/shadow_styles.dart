import 'package:flutter/material.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';

class TShadowStyle {

  static final verticalItemShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha(25),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalItemShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha(25),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

}