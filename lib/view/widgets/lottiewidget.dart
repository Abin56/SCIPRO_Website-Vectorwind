import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../fonts/google_poppins.dart';

class LoadingLottieWidget extends StatelessWidget {
  final double height;
  final double width;
  const LoadingLottieWidget({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GooglePoppinsWidgets(
              text: 'Please Wait ...',
              fontsize: 16,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              width: 80,
              child: LottieBuilder.asset(
                'assets/png/Animation - 1702360112312.json',
              ),
            ),
          ],
        ));
  }
}