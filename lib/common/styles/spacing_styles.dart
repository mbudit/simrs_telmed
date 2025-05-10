import 'package:flutter/widgets.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(

    top: TSizes.appBarBodyHeight,
    left: TSizes.defaultSpace,

    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}