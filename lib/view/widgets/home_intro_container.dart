import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/resources/assets_manager.dart';
import 'package:scipro_website/resources/color_manager.dart';
import 'package:scipro_website/view/widgets/common_button_widget.dart';
import 'package:scipro_website/view/widgets/primary_font_widget.dart';
import 'package:scipro_website/view/widgets/responsive_widget.dart';

class HomeIntroContainer extends StatelessWidget {
  const HomeIntroContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mScreen: Container(
        height: 800,
        color: ColorManager.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Container(
                width: 500,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryFontWidget(
                        text: 'Your Dream Job is\ncloser than you Think',
                        fontSize: 35,
                        fontweight: FontWeight.bold,
                        color: Colors.white),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.6)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: CommonButtonWidget(
                                  onPressFunction: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             SignInPage()));
                                  },
                                  color: Colors.green,
                                  text: 'Login',
                                  textColor: Colors.white),
                            ),
                          ),
                          // TextButton(
                          //     onPressed: () {},
                          //     child: GoogleMonstserratWidgets(
                          //       text: 'Login',
                          //       fontsize: 20,
                          //       fontWeight: FontWeight.bold,
                          //     ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Stack(
            //   children: [
            //     Image.asset(
            //       ImageAssets.homePageModel,
            //     ),
            //     // Positioned(
            //     //   bottom: 0,
            //     //   right: 0,
            //     //   child: Container(
            //     //     width: 200,
            //     //     height: 100,
            //     //     child: CustomPaint(
            //     //       painter: SemiCirclePainter(),
            //     //     ),
            //     //   ),
            //     // )
            //   ],
            // )
          ],
        ),
      ),
      mobileScreen: Container(
        height: 800,
        color: ColorManager.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Container(
                width: 500,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryFontWidget(
                        text: 'Your Dream Job is\ncloser than you Think',
                        fontSize: 40,
                        fontweight: FontWeight.bold,
                        color: Colors.white),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students',
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
            ),
            // Stack(
            //   children: [
            //     Image.asset(
            //       ImageAssets.homePageModel,
            //     ),
            //     // Positioned(
            //     //   bottom: 0,
            //     //   right: 0,
            //     //   child: Container(
            //     //     width: 200,
            //     //     height: 100,
            //     //     child: CustomPaint(
            //     //       painter: SemiCirclePainter(),
            //     //     ),
            //     //   ),
            //     // )
            //   ],
            // )
          ],
        ),
      ),
      tabScreen: Container(
        height: 800,
        color: ColorManager.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 180,
              height: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryFontWidget(
                      text: 'Your Dream Job is\ncloser than you Think',
                      fontSize: 30,
                      fontweight: FontWeight.bold,
                      color: Colors.white),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students',
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  ImageAssets.homePageModel,
                  height: 550,
                  width: 550,
                ),
                // Positioned(
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: 200,
                //     height: 100,
                //     child: CustomPaint(
                //       painter: SemiCirclePainter(),
                //     ),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
      verySmallScreen: Container(
        height: 800,
        color: ColorManager.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 250,
              height: 550,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryFontWidget(
                      text: 'Your Dream Job is\ncloser than you Think',
                      fontSize: 40,
                      fontweight: FontWeight.bold,
                      color: Colors.white),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students',
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset(
                    ImageAssets.homePageModel,
                    width: 700,
                    height: 700,
                  ),
                ),
                // Positioned(
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: 200,
                //     height: 100,
                //     child: CustomPaint(
                //       painter: SemiCirclePainter(),
                //     ),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
      smallScreen: Container(
        height: 800,
        color: ColorManager.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 500,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryFontWidget(
                      text: 'Your Dream Job is\ncloser than you Think',
                      fontSize: 40,
                      fontweight: FontWeight.bold,
                      color: Colors.white),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students',
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  ImageAssets.homePageModel,
                ),
                // Positioned(
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: 200,
                //     height: 100,
                //     child: CustomPaint(
                //       painter: SemiCirclePainter(),
                //     ),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
      mediumScreen: Container(
        height: 800,
        color: ColorManager.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 500,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryFontWidget(
                      text: 'Your Dream Job is\ncloser than you Think',
                      fontSize: 40,
                      fontweight: FontWeight.bold,
                      color: Colors.white),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students',
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  ImageAssets.homePageModel,
                ),
                // Positioned(
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: 200,
                //     height: 100,
                //     child: CustomPaint(
                //       painter: SemiCirclePainter(),
                //     ),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
      largeScreen: Container(
        height: 800,
        color: ColorManager.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 500,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryFontWidget(
                      text: 'Your Dream Job is\ncloser than you Think',
                      fontSize: 40,
                      fontweight: FontWeight.bold,
                      color: Colors.white),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students',
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  ImageAssets.homePageModel,
                ),
                // Positioned(
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: 200,
                //     height: 100,
                //     child: CustomPaint(
                //       painter: SemiCirclePainter(),
                //     ),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
