import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:simrs_telmed/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:simrs_telmed/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.appPrimary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withAlpha(25))),
            Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withAlpha(25))),
            child,
          ],
        ),
      ),
    );
  }
}
