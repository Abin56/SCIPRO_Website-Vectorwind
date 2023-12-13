import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';

class TopCourses extends StatelessWidget {
  const TopCourses({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      height: 500,
      color: cWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GooglePoppinsWidgets(text: 'Our Top Courses', fontsize: 18),
          GooglePoppinsWidgets(text: 'Learn Best Things', fontsize: 25),
          Expanded(
            child: SizedBox(
              child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(9, (index) {
                return Container(height: 400,width: 400,
                  
                  decoration: BoxDecoration(borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight:
                                            Radius.circular(10)),
                    image: DecorationImage(fit: BoxFit.cover,image: AssetImage(topCourses[index],),
                  ),),
                 
                  margin: const EdgeInsets.all(10),
                  child: GooglePoppinsWidgets(
                                      text: topCoursesText[index],
                                      fontsize: 13,
                                      color: cWhite,
                                      textAlign: TextAlign.right,
                                      fontWeight: FontWeight.w500,
                                      
                                    ),
                );
              },
            ))
            ),
          )
        ],
      ),
    );
  }
}

List<String> topCourses = [
  'images/main2ancy.jpg',
  'images/main6akhilmon.jpg',
  'images/main6akhilmon.jpg',
  'images/mainexam1.jpg',
  'images/main8sara.jpg',
  'images/mainembeded1.jpg',
  'images/main10vishnu.jpg',
  'images/main11archanashan.jpg',
  'images/main12nandhana.jpg',
];

List<String> topCoursesText = [
  'CSIR UGC LIFESCIENCES',
  'ICAR NET',
  'CUT PG LIFESCIENCE',
  'GATE EXAMS',
  'ICMR-JRF EXAMS',
  'SCIPRO SKILLS',
  'SET EXAMS',
  'KPSC EXAMS',
  'UPSC EXAMS',
];
// //  Column(
// //                     children: [
// //                       Container(
// //                             decoration: BoxDecoration(
// //                               color: cWhite,
// //                               borderRadius: BorderRadius.circular(20),
// //                             ),
// //                             child: Column(
// //                               children: [
// //                                 SizedBox(
// //                                   width: 250,
// //                                   height: 250,
// //                                   child: ClipRRect(
// //                                     borderRadius: const BorderRadius.only(
// //                                         topLeft: Radius.circular(10),
// //                                         topRight:
// //                                             Radius.circular(10)), // Image border
// //                                     child: Column(
// //                                       children: [
// //                                         SizedBox.fromSize(
// //                                           size:
// //                                               const Size.fromRadius(48), // Image radius
// //                                           child: Image.asset(topCourses[index],
// //                                               fit: BoxFit.cover),
// //                                         ),

// //                                       ],
// //                                     ),
// //                                   ),
// //                                 ),
// //                                 // Padding(
// //                                 //   padding: const EdgeInsets.only(top: 6),
// //                                 //   child: Row(
// //                                 //     mainAxisAlignment: MainAxisAlignment.start,
// //                                 //     children: [
// //                                 //       Expanded(
// //                                 //           child: GooglePoppinsWidgets(
// //                                 //         text: topCoursesText[index],
// //                                 //         fontsize: 13,
// //                                 //         color: cBlack,
// //                                 //         textAlign: TextAlign.center,
// //                                 //         fontWeight: FontWeight.w500,
// //                                 //       ))
// //                                 //     ],
// //                                 //   ),
// //                                 // )
// //                               ],
// //                             ),
// //                           ),
// //                     ],
// //                    )