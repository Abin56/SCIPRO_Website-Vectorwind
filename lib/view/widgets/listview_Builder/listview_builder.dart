import 'package:flutter/material.dart';

class ListviewBuilderWidget extends StatelessWidget {
  int cindex = 0;
  final double height;
  final double width;
  final int itemCount;
  final Widget returnWidget;
  final Widget returnSeparator;
  final Color? containerColor;
  final Decoration? decoration;

  ListviewBuilderWidget({
    required this.height,
    required this.width,
    required this.itemCount,
    required this.returnWidget,
    required this.returnSeparator,
    this.containerColor,
    this.decoration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      height: height,
      width: width,
      decoration: decoration,
      child: ListView.separated(
          itemBuilder: (context, index) {
            cindex = index;
            return returnWidget;
          },
          separatorBuilder: (context, index) {
            return returnSeparator;
          },
          itemCount: itemCount),
    );
  }
}
