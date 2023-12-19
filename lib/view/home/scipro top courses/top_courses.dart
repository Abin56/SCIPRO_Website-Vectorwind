import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
// ignore: unused_import

class TopCourses extends StatelessWidget {
  const TopCourses({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      height:ResponsiveWebSite.isMobile(context)?500:ResponsiveWebSite.isTablet(context)?500: 700,
      color: cWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GooglePoppinsWidgets(text: 'Our Top Course', fontsize: 18,fontWeight: FontWeight.bold,color: themeColorBlue,),
          GooglePoppinsWidgets(text: 'Learn Best Things', fontsize: 25,fontWeight: FontWeight.bold,),
          Expanded(
            child: GridView.count(
              shrinkWrap: false,
            crossAxisCount: 3,
            children: List.generate(9, (index) {
              return Container(width: 300,
                
                decoration: BoxDecoration(borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight:
                                          Radius.circular(10)),
                  image: DecorationImage(fit: BoxFit.cover,image: AssetImage(topCourses[index],),
                ),),
               
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10,top: 10),
                  child: GooglePoppinsWidgets(
                                      text: topCoursesText[index],
                                      fontsize: 13,
                                      color: cWhite,
                                      textAlign: TextAlign.end,
                                      fontWeight: FontWeight.w500,
                                      
                                    ),
                ),
              );
            },
                      )),
          )
        ],
      ),
    );
  }
}

List<String> topCourses = [
  'images/mainsara1.jpg',
  'images/main6akhilmon.jpg',
  'images/main6gopika.jpg',
  'images/mainexam1.jpg',
  'images/examwriting.jpg',
  'images/main15archana.jpg',
  'images/main10vishnu.jpg',
  'images/exam.jpg',
  'images/main12nandhana.jpg',
];

List<String> topCoursesText = [
  'CSIR UGC LIFESCIENCES',
  'ICAR NET',
  'CUET PG LIFESCIENCE',
  'GATE EXAMS',
  'ICMR-JRF EXAMS',
  'SCIPRO SKILLS',
  'SET EXAMS',
  'KPSC EXAMS',
  'UPSC EXAMS',
];
