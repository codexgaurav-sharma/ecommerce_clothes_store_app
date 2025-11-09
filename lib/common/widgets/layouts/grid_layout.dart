import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class GGridLayout extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final double? mainAxisExtent;
  final int itemCount;
  const GGridLayout({super.key, required this.itemBuilder, this.mainAxisExtent = 280, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: GSize.gridViewSpacing,
        crossAxisSpacing: GSize.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
