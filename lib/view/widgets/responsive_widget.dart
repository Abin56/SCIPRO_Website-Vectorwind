import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget(
      {super.key,
      required this.largeScreen,
      required this.mediumScreen,
      required this.smallScreen,
      required this.verySmallScreen,
      required this.tabScreen,
      required this.mobileScreen,
      required this.mScreen});

  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget verySmallScreen; //935 //682
  final Widget tabScreen;
  final Widget mobileScreen;
  final Widget mScreen;

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 1220;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1220;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1220 &&
        MediaQuery.of(context).size.width < 1335;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1335) {
        return largeScreen;
      } else if (constraints.maxWidth < 1335 && constraints.maxWidth >= 1220) {
        return mediumScreen ?? largeScreen;
      } else if (constraints.maxWidth < 1220 && constraints.maxWidth >= 1080) {
        return smallScreen ?? largeScreen;
      } else if (constraints.maxWidth <= 1080 && constraints.maxWidth >= 935) {
        return verySmallScreen ?? largeScreen;
      } else if (constraints.maxWidth < 935 && constraints.maxWidth >= 744) {
        return tabScreen ?? largeScreen;
      } else if (constraints.maxWidth < 744 && constraints.maxWidth > 682) {
        return mobileScreen ?? largeScreen;
      } else {
        return mScreen ?? largeScreen;
      }
    });
  }
}
