
import 'package:clothes_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/cupertino.dart';

class GCurvedEdgeWidget extends StatelessWidget {
  final Widget? child;
  const GCurvedEdgeWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: GCustomCurvedEdges(), child: child);
  }
}