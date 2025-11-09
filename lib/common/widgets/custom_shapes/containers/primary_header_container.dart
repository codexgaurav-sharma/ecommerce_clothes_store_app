import 'package:flutter/material.dart';

import 'circular_container.dart';
import '../curved_edges/curved_edge_widget.dart';
import '../../../../utils/constants/colors.dart';

class GPrimaryHeaderContainer extends StatelessWidget {
  const GPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GCurvedEdgeWidget(
      child: Container(
        color: GColors.primary,
        padding: const EdgeInsets.all(0.0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: GCircularContainer(
                  backgroundColor: GColors.white.withValues(alpha: 0.1),
                ),
              ),
              Positioned(top: 100, right: -300, child: GCircularContainer(backgroundColor: GColors.white.withValues(alpha: 0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
