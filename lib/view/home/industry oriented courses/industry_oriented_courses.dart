// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../colors/colors.dart';

class IndustryOrientedCourses extends StatelessWidget {
  const IndustryOrientedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GooglePoppinsWidgets(
            text: 'Pick Courses According to your convenience',
            fontsize: ResponsiveWebSite.isMobile(context) ? 15 : 18,
            fontWeight: FontWeight.bold,
            color: themeColorBlue,
          ),
          GooglePoppinsWidgets(
            text: 'Recorded Courses',
            fontsize: ResponsiveWebSite.isMobile(context) ? 18 : 20,
            fontWeight: FontWeight.bold,
          ),
          ResponsiveWebSite.isMobile(context)
              ? const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Rec_Courses_widget(),
                    ),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox(height: 400,child:   Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: SizedBox(
                          height:
                              ResponsiveWebSite.isMobile(context) ? 200 : 300,
                          width: 400,
                          child: Image.asset(
                            'images/mainsanush1.jpg',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),)),
                          Expanded(child: SizedBox(height: 400,width: 100,child: Column(
                        children: [
                          IndustryTextWidget(
                            secondText: 'Recorded Videos with Classroom tools',
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top :20),
                            child: IndustryTextWidget(
                              secondText: 'Teachers Support',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: IndustryTextWidget(
                              secondText: 'Malayalam and English',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: IndustryTextWidget(
                              secondText: 'Study Materials',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: IndustryTextWidget(
                              secondText: 'Duration and Fees',
                            ),
                          ),
                        ],
                      ),))
                    
                      
                    ],
                  ),
                )
        ],
      ),
    );
  }
}

class Rec_Courses_widget extends StatelessWidget {
  const Rec_Courses_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // border: Border.all(color: themeColorBlue),  borderRadius: BorderRadius.circular(10),
          // color: cGreen
          ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 125),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ResponsiveWebSite.isMobile(context) ? 200 : 300,
              width: 600,
              child: Image.asset(
                'images/mainsanush1.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
            GooglePoppinsWidgets(
              text: 'Recorded Courses',
              fontsize: ResponsiveWebSite.isMobile(context) ? 18 : 20,
              fontWeight: FontWeight.bold,
            ),
            IndustryTextWidget(
              secondText: 'Recorded Videos with Classroom tools',
            ),
            IndustryTextWidget(
              secondText: 'Teachers Support',
            ),
            IndustryTextWidget(
              secondText: 'Malayalam and English',
            ),
            IndustryTextWidget(
              secondText: 'Study Materials',
            ),
            IndustryTextWidget(
              secondText: 'Duration Fees',
            ),
          ],
        ),
      ),
    );
  }
}

class IndustryTextWidget extends StatelessWidget {
  String secondText;
  IndustryTextWidget({
    super.key,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ListTile(
          leading: const Icon(Icons.arrow_circle_right_outlined),
          title: GooglePoppinsWidgets(
            text: secondText,
            fontsize: 15,
            fontWeight: FontWeight.w600,
            color: cGrey,
          ),
        ))
      ],
    );
  }
}

List<Widget> containerWidget = [
  IndustryContainerWidget(
    imagePath: 'images/main8sara.jpg',
    mainText: 'Live Courses',
  ),
  ////////////////////////////////////////////1
  ///
  IndustryContainerWidget(
    imagePath: 'images/main10vishnu.jpg',
    mainText: 'Recorded Courses',
  ),
  IndustryContainerWidget(
    imagePath: 'images/main11archanashan.jpg',
    mainText: 'Hybrid Courses',
  ),
];

class IndustryContainerWidget extends StatelessWidget {
  String mainText;
  // String secondText;
  String imagePath;

  IndustryContainerWidget({
    super.key,
    required this.imagePath,
    // required this.secondText,
    required this.mainText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // border: Border.all(color: themeColorBlue),  borderRadius: BorderRadius.circular(10),
          // color: cGreen
          ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            SizedBox(
              height: ResponsiveWebSite.isMobile(context) ? 200 : 300,
              width: 600,
              child: Image.asset(
                imagePath,
                fit: BoxFit.fitHeight,
              ),
            ),
            GooglePoppinsWidgets(
              text: mainText,
              fontsize: ResponsiveWebSite.isMobile(context) ? 18 : 20,
              fontWeight: FontWeight.bold,
            ),
            IndustryTextWidget(
              secondText: 'Live Lecture with white board and classroom',
            ),
            IndustryTextWidget(
              secondText: '3 Months Duration',
            ),
            IndustryTextWidget(
              secondText: 'Interactive Session',
            ),
            IndustryTextWidget(
              secondText: 'Teachers Support',
            ),
            IndustryTextWidget(
              secondText: 'Live Doubt Session',
            ),
            IndustryTextWidget(
              secondText: 'Malayalam and English',
            ),
            IndustryTextWidget(
              secondText: 'Study Materials',
            ),
            IndustryTextWidget(
              secondText: 'Fee ₹3999 (Including GST)',
            ),
          ],
        ),
      ),
    );
  }
}
