import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../../colors/colors.dart';
import '../../../widgets/primary_font_widget.dart';

class CopyRightContainerWidget extends StatelessWidget {
  const CopyRightContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: cBlack,
        child: ResponsiveWebSite.isMobile(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Expanded(
                                child: PrimaryFontWidget(
                              text: "Copyright",
                              fontSize: 9,
                              fontweight: FontWeight.bold,
                              color: cWhite,
                            )),
                            Expanded(
                                child: Image.asset(
                              "assets/images/cpright1.png",
                              height: 25,
                              width: 25,
                            )),
                            Expanded(
                              child: PrimaryFontWidget(
                                text:
                                    "All Rights Reserved | by Vectorwind-Tech Systems Pvt.Ltd ",
                                fontSize: 8,
                                fontweight: FontWeight.bold,
                                color: cWhite,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                                child: PrimaryFontWidget(
                              text: "Developed by",
                              fontSize: 9,
                              fontweight: FontWeight.bold,
                              color: cWhite,
                            )),
                            ResponsiveWebSite.isMobile(context)
                                ? Expanded(
                                    child: copyrightContents[4],
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: copyrightContents[4],
                                  )
                          ],
                        ),
                      )),
                ],
              )
            : Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: cBlack,
                        height: 50,
                        child: Row(
                          children: [
                            copyrightContents[0],
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: copyrightContents[1],
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: copyrightContents[2]),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: cBlack,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: copyrightContents[3]),
                            ResponsiveWebSite.isMobile(context)
                                ? Expanded(
                                    child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: copyrightContents[4]),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: copyrightContents[4])
                          ],
                        ),
                      )),
                ],
              ));
  }
}

List<Widget> copyrightContents = [
  PrimaryFontWidget(
    text: "Copyright",
    fontSize: 12,
    fontweight: FontWeight.bold,
    color: cWhite,
  ),
  Image.asset(
    "assets/images/cpright1.png",
    height: 30,
    width: 30,
  ),
  PrimaryFontWidget(
    text: "All Rights Reserved | by Vectorwind-Tech Systems Pvt.Ltd ",
    fontSize: 12,
    fontweight: FontWeight.bold,
    color: cWhite,
  ),
  PrimaryFontWidget(
    text: "Developed by",
    fontSize: 12,
    fontweight: FontWeight.bold,
    color: cWhite,
  ),
  Image.asset(
    'assets/images/Lepton.png',
    width: 50,
    height: 50,
  ),
];
