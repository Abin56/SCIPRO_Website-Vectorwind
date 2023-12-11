import 'package:flutter/material.dart';

import '../../../resources/assets_manager.dart';
import '../../colors/colors.dart';
import '../../fonts/google_poppins.dart';
import '../../widgets/responsive/responsive.dart';

class homeScreenPictureWidget extends StatelessWidget {
  const homeScreenPictureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ResponsiveWebSite.isMobile(context)
            ? Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GooglePoppinsWidgets(
    text: 'Your Dream Job is\ncloser than you Think',
    fontsize: 25,
     color:themeColorBlue,
    fontWeight: FontWeight.bold,
  )),
                      ResponsiveWebSite.isMobile(context)
                          ? Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child:  GooglePoppinsWidgets(
                                text:
                                    "The Industry Oriented Concept Being Unique, Focuses Onprofile Mapping, Skill Gap Analysis, Industry Analysis and Training the Students",
                                fontsize: 16,
                                 color:cGrey,
                                fontWeight: FontWeight.w600,textAlign: TextAlign.center,
                              ),
                            ),
                          )
                          : Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child:  GooglePoppinsWidgets(
    text:
        "The Industry Oriented Concept Being Unique, Focuses Onprofile Mapping, Skill Gap Analysis, Industry Analysis and Training the Students",
    fontsize: 16,
     color:cGrey,
    fontWeight: FontWeight.w600,
  ),
                            ),
                      ResponsiveWebSite.isMobile(context)
                          ? Image.asset(
    ImageAssets.homePageModel,
    height: 300,
    width: 300,
  )
                          : Image.asset(
    ImageAssets.homePageModel,
    height: 300,
    width: 300,
  ),
                    ],
                  ),
                ],
              )
           
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ResponsiveWebSite.isMobile(context)?
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child:  GooglePoppinsWidgets(
    text: 'Your Dream Job is\ncloser than you Think',
    fontsize: 30,
     color:themeColorBlue,
    fontWeight: FontWeight.bold,
  )
                      )
                    :ResponsiveWebSite.isTablet(context)? 
                      GooglePoppinsWidgets(
    text: 'Your Dream Job is\ncloser than you Think',
    fontsize: 30,
     color:themeColorBlue,
    fontWeight: FontWeight.bold,
  ):
                     Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: homePageIntroContent[0]
                      ),
                      ResponsiveWebSite.isMobile(context)
                          ? homePageIntroContent[1]

                          :ResponsiveWebSite.isTablet(context)?Padding(
                              padding:
                                  const EdgeInsets.only(top: 20,),
                              child: GooglePoppinsWidgets(
                                text:
                                    "The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students",
                                fontsize: 14,
                                color: cGrey,
                              // color: themeColorBlue,
                               
                              ),
                            ):
                          Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, left: 90),
                              child: GooglePoppinsWidgets(
                                text:
                                    "The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students",
                                fontsize: 16,
                                color: cGrey,
          // color:themeColorBlue

                               
                              ),
                            )
                    ],
                  ),
                  ResponsiveWebSite.isMobile(context)
                      ? Container(
                          
                          child: Image.asset(
                            ImageAssets.homePageModel,
                            height: 300,
                            width: 300,
                          ),
                        )
                      :ResponsiveWebSite.isTablet(context)?
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150),
                          child: SizedBox(height: 700,width: 700,
                            child: Image.asset(
                              ImageAssets.homePageModel,
                              height: 700,
                              width: 700,
                            ),
                          ),
                        ),
                      ):
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left:150,top: 150),
                          child: SizedBox(
                            height: 700,width: 700,
                            child: Image.asset(
                              ImageAssets.homePageModel,
                              height: 700,
                              width: 700,
                            ),
                          ),
                        ),
                      ),
                        
                ],
              ),
          //  ResponsiveWebSite.isMobile(context)?   Positioned(
                              
          //        bottom: -200,
          //        right: -200,
          //              child: SizedBox(
          //                width: 130,
          //                height: 100,
          //                child: CustomPaint(
          //                  painter: SemiCirclePainter(),
          //                )),
          //            ):ResponsiveWebSite.isTablet(context)?Positioned(
                                   
          //             bottom: -200,
          //             right: -200,
          //                   child: SizedBox(
          //                     width: 170,
          //                     height: 100,
          //                     child: CustomPaint(
          //                       painter: SemiCirclePainter(),
          //                     )),
          //                 ):
          //            Expanded(
          //       child: Positioned(
                                   
          //             bottom: -200,
          //             right: -200,
          //                   child: SizedBox(
          //                     width: 200,
          //                     height: 100,
          //                     child: CustomPaint(
          //                       painter: SemiCirclePainter(),
          //                     )),
          //                 ),
          //     )
      ],
    );
  }
}

List<Widget> homePageIntroContent = [
  GooglePoppinsWidgets(
    text: 'Your Dream Job is\ncloser than you Think',
    fontsize: 30,
     color:themeColorBlue,
    fontWeight: FontWeight.bold,
  ), //////////////////////////////////////////////0

  GooglePoppinsWidgets(
    text:
        "The Industry Oriented Concept Being Unique, Focuses Onprofile Mapping, Skill Gap Analysis, Industry Analysis and Training the Students",
    fontsize: 16,
     color:cGrey,
    fontWeight: FontWeight.w600,
  ), ////////////////////////////////////////////////////1

  Image.asset(
    ImageAssets.homePageModel,
    height: 650,
    width: 650,
  ), /////////////////////////////////////////////////////////////////////////2

  Image.asset(
    ImageAssets.homePageModel,
    height: 300,
    width: 300,
  ),
  GooglePoppinsWidgets(
    text: 'Your Dream Job is\ncloser than you Think',
    fontsize: 25,
     color:themeColorBlue,
    fontWeight: FontWeight.bold,
  ), ///////////////////////////////////////////////////////////////////////////////4

   GooglePoppinsWidgets(
    text: 'Your Dream Job is\ncloser than you Think',
    fontsize: 28,
    // color: cWhite,
     color:themeColorBlue,
    fontWeight: FontWeight.bold,//////////////////////////////////////////////////////////////5
  ),
    GooglePoppinsWidgets(
    text:
        "The Industry Oriented Concept Being\nUnique, Focuses Onprofile Mapping, Skill\nGap Analysis, Industry Analysis and\nTraining the Students",
    fontsize: 15,
     color:themeColorBlue,
     //color: cWhite,
    fontWeight: FontWeight.w600,
  ), ////////////////////////////////////////////////////1
];
