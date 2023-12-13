import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/bold_text_widget.dart';
import 'package:scipro_website/view/widgets/course_container_widget.dart';
import 'package:scipro_website/view/widgets/google_montserrat_widget.dart';
import 'package:scipro_website/view/widgets/responsive_widget.dart';

class HomeTopCoursesWidget extends StatelessWidget {
  const HomeTopCoursesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mScreen: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GoogleMonstserratWidgets(
                text: 'Our Top Courses',
                fontsize: 20,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 20,
              ),
              BoldTextWidget(text: 'Learn Best Things'),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1200,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: 10, // Spacing between columns
                      mainAxisSpacing: 10, // Spacing between rows
                    ),
                    children: [
                      CourseContainerWidget(
                        imagePath: 'images/main2ancy.jpg',
                        caption: 'CSIR UGC LIFESCIENCES',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6akhilmon.jpg',
                        caption: 'ICAR NET',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6gopika.jpg',
                        caption: 'CUT PG LIFESCIENCE',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainexam1.jpg',
                        caption: 'GATE EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main8sara.jpg',
                        caption: 'ICMR-JRF EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainembeded1.jpg',
                        caption: 'SCIPRO SKILLS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main10vishnu.jpg',
                        caption: 'SET EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main11archanashan.jpg',
                        caption: 'KPSC EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main12nandhana.jpg',
                        caption: 'UPSC EXAMS',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GoogleMonstserratWidgets(
                text: 'Our Top Courses',
                fontsize: 20,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 20,
              ),
              BoldTextWidget(text: 'Learn Best Things'),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1200,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: 25, // Spacing between columns
                      mainAxisSpacing: 25, // Spacing between rows
                    ),
                    children: [
                      CourseContainerWidget(
                        imagePath: 'images/main2ancy.jpg',
                        caption: 'CSIR UGC LIFESCIENCES',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6akhilmon.jpg',
                        caption: 'ICAR NET',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6gopika.jpg',
                        caption: 'CUT PG LIFESCIENCE',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainexam1.jpg',
                        caption: 'GATE EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main8sara.jpg',
                        caption: 'ICMR-JRF EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainembeded1.jpg',
                        caption: 'SCIPRO SKILLS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main10vishnu.jpg',
                        caption: 'SET EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main11archanashan.jpg',
                        caption: 'KPSC EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main12nandhana.jpg',
                        caption: 'UPSC EXAMS',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      tabScreen: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GoogleMonstserratWidgets(
                text: 'Our Top Courses',
                fontsize: 20,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 20,
              ),
              BoldTextWidget(text: 'Learn Best Things'),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1200,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: 50, // Spacing between columns
                      mainAxisSpacing: 50, // Spacing between rows
                    ),
                    children: [
                      CourseContainerWidget(
                        imagePath: 'images/main2ancy.jpg',
                        caption: 'CSIR UGC LIFESCIENCES',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6akhilmon.jpg',
                        caption: 'ICAR NET',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6gopika.jpg',
                        caption: 'CUT PG LIFESCIENCE',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainexam1.jpg',
                        caption: 'GATE EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main8sara.jpg',
                        caption: 'ICMR-JRF EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainembeded1.jpg',
                        caption: 'SCIPRO SKILLS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main10vishnu.jpg',
                        caption: 'SET EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main11archanashan.jpg',
                        caption: 'KPSC EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main12nandhana.jpg',
                        caption: 'UPSC EXAMS',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      verySmallScreen: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GoogleMonstserratWidgets(
                text: 'Our Top Courses',
                fontsize: 20,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 20,
              ),
              BoldTextWidget(text: 'Learn Best Things'),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 50),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1200,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: 75, // Spacing between columns
                      mainAxisSpacing: 75, // Spacing between rows
                    ),
                    children: [
                      CourseContainerWidget(
                        imagePath: 'images/main2ancy.jpg',
                        caption: 'CSIR UGC LIFESCIENCES',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6akhilmon.jpg',
                        caption: 'ICAR NET',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6gopika.jpg',
                        caption: 'CUT PG LIFESCIENCE',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainexam1.jpg',
                        caption: 'GATE EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main8sara.jpg',
                        caption: 'ICMR-JRF EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainembeded1.jpg',
                        caption: 'SCIPRO SKILLS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main10vishnu.jpg',
                        caption: 'SET EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main11archanashan.jpg',
                        caption: 'KPSC EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main12nandhana.jpg',
                        caption: 'UPSC EXAMS',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      smallScreen: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GoogleMonstserratWidgets(
                text: 'Our Top Courses',
                fontsize: 20,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 20,
              ),
              BoldTextWidget(text: 'Learn Best Things'),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70, left: 70),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1200,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: 90, // Spacing between columns
                      mainAxisSpacing: 90, // Spacing between rows
                    ),
                    children: [
                      CourseContainerWidget(
                        imagePath: 'images/main2ancy.jpg',
                        caption: 'CSIR UGC LIFESCIENCES',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6akhilmon.jpg',
                        caption: 'ICAR NET',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6gopika.jpg',
                        caption: 'CUT PG LIFESCIENCE',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainexam1.jpg',
                        caption: 'GATE EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main8sara.jpg',
                        caption: 'ICMR-JRF EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainembeded1.jpg',
                        caption: 'SCIPRO SKILLS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main10vishnu.jpg',
                        caption: 'SET EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main11archanashan.jpg',
                        caption: 'KPSC EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main12nandhana.jpg',
                        caption: 'UPSC EXAMS',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      mediumScreen: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GoogleMonstserratWidgets(
                text: 'Our Top Courses',
                fontsize: 20,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 20,
              ),
              BoldTextWidget(text: 'Learn Best Things'),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100, left: 100),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1200,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: 100, // Spacing between columns
                      mainAxisSpacing: 100, // Spacing between rows
                    ),
                    children: [
                      CourseContainerWidget(
                        imagePath: 'images/main2ancy.jpg',
                        caption: 'CSIR UGC LIFESCIENCES',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6akhilmon.jpg',
                        caption: 'ICAR NET',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6gopika.jpg',
                        caption: 'CUT PG LIFESCIENCE',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainexam1.jpg',
                        caption: 'GATE EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main8sara.jpg',
                        caption: 'ICMR-JRF EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainembeded1.jpg',
                        caption: 'SCIPRO SKILLS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main10vishnu.jpg',
                        caption: 'SET EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main11archanashan.jpg',
                        caption: 'KPSC EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main12nandhana.jpg',
                        caption: 'UPSC EXAMS',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      largeScreen: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GoogleMonstserratWidgets(
                text: 'Our Top Courses',
                fontsize: 20,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 20,
              ),
              BoldTextWidget(text: 'Learn Best Things'),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, left: 200),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1200,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: 120, // Spacing between columns
                      mainAxisSpacing: 120, // Spacing between rows
                    ),
                    children: [
                      CourseContainerWidget(
                        imagePath: 'images/main2ancy.jpg',
                        caption: 'CSIR UGC LIFESCIENCES',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6akhilmon.jpg',
                        caption: 'ICAR NET',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main6gopika.jpg',
                        caption: 'CUT PG LIFESCIENCE',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainexam1.jpg',
                        caption: 'GATE EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main8sara.jpg',
                        caption: 'ICMR-JRF EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/mainembeded1.jpg',
                        caption: 'SCIPRO SKILLS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main10vishnu.jpg',
                        caption: 'SET EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main11archanashan.jpg',
                        caption: 'KPSC EXAMS',
                      ),
                      CourseContainerWidget(
                        imagePath: 'images/main12nandhana.jpg',
                        caption: 'UPSC EXAMS',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
