// ignore_for_file: must_be_immutable

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
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GooglePoppinsWidgets(
                text: 'Pick Courses According to your convenience', fontsize: 18),
            GooglePoppinsWidgets(text: 'Industry Oriented Courses', fontsize: 30),
          ResponsiveWebSite.isMobile(context)?Column(children: [
             containerWidget[0],
             containerWidget[1],
             containerWidget[2]
          ],)  :Row(
              children: [
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,),
                    child: containerWidget[0],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,),
                    child: containerWidget[1],
                  )
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,),
                    child: containerWidget[2],
                  )
                ),
              ],
            )
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
List <Widget> containerWidget =[
  Container(
                  decoration: BoxDecoration(
                     border: Border.all(color: themeColorBlue),  borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                            height: 300,
                            width: 600,
                            child: Image.asset('images/main8sara.jpg')),
                      ),
                      GooglePoppinsWidgets(
                        text: 'Recorded Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      IndustryTextWidget(
                        secondText:
                            'Live Lecture with white board and classroom',
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
                ),////////////////////////////////////////////1


                Container(
                  decoration: BoxDecoration(border: Border.all(color: themeColorBlue),
                       borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                            height: 300,
                            width: 600,
                            child: Image.asset('images/main10vishnu.jpg')),
                      ),
                      GooglePoppinsWidgets(
                        text: 'Recorded Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      IndustryTextWidget(
                        secondText:
                            'Live Lecture with white board and classroom',
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
                ),//////////////////////////////////////2


                Container(
                  decoration: BoxDecoration(border: Border.all(color: themeColorBlue),
                       borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: 300,
                          width: 600,
                          child: Image.asset('images/main11archanashan.jpg')),
                      ),
                      GooglePoppinsWidgets(
                        text: 'Hybrid Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      IndustryTextWidget(
                        secondText:
                            'Live Lecture with white board and classroom',
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
                ),/////////////////////////////////////3
];
