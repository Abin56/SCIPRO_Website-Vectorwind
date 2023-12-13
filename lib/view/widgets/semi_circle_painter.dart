import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scipro_website/resources/color_manager.dart';

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = ColorManager.homePageSecondary
      ..style = PaintingStyle.fill;

    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width * 3),
      -pi, // Starting angle (negative pi to start from the left side)
      pi / 2,
      true, // Clockwise
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
