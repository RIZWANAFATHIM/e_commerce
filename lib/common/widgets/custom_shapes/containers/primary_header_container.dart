import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';


class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
    //  child: SizedBox(
     //   height: 400,
      child: Container(
        color: TColors.primary,

        /// -- if [size.isfinite': is not true.in Stack] error occured -> read readme.md file at [DESIGN ERRORS] # 1
          child: Stack(
            children: [
              ///--background custom shapes
              Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
   //   ),
    ),
    );
  }
}
