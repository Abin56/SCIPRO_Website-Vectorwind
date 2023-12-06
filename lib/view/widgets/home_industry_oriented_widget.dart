import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/bold_text_widget.dart';
import 'package:scipro_website/view/widgets/course_container_widget.dart';
import 'package:scipro_website/view/widgets/google_montserrat_widget.dart';
import 'package:scipro_website/view/widgets/responsive_widget.dart';

class HomeIndustryOrientedCoursesWidget extends StatelessWidget {
  const HomeIndustryOrientedCoursesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mScreen: Container(
        width: MediaQuery.of(context).size.width, color: Colors.white,
        // color: const Color.fromARGB(255, 79, 78, 78).withOpacity(0.1),
        height: 3100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleMonstserratWidgets(
              text: 'Pick Course According To Your Convenience',
              fontsize: 20,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 20,
            ),
            BoldTextWidget(text: 'Industry Oriented Courses'),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 1000,
              child: CourseShowcaseContainer(
                points: [
                  Image.asset('images/mainarchanaartist1.jpg'),
                  SizedBox(
                    height: 30,
                  ),
                  GoogleMonstserratWidgets(
                    text: 'Live Courses',
                    fontsize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Live lecture with White Board & Classroom Tools',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: '3 Months Duration',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                          text: 'Interactive Session',
                          fontWeight: FontWeight.w500,
                          fontsize: 16),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Teachers Support',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Live Doubt Session',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Malayalam and English',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Study Materials',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Fee ₹3999 (Including GST)',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1000,
              child: CourseShowcaseContainer(
                points: [
                  Image.asset('images/mainsanush1.jpg'),
                  SizedBox(
                    height: 30,
                  ),
                  GoogleMonstserratWidgets(
                    text: 'Recorded Courses',
                    fontsize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Recorded Videos with Classroom Tools',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: '3 Months Duration',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Teachers Support',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Malayalam and English',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Study Materials',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Fee ₹3999 (Including GST)',
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                      ),
                    ],
                  )
                ],
              ),
            ),
            CourseShowcaseContainer(
              points: [
                Image.asset('images/main15archana.jpg'),
                SizedBox(
                  height: 30,
                ),
                GoogleMonstserratWidgets(
                  text: 'Hybrid Courses',
                  fontsize: 25,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(
                      width: 8,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Live Lecture with White Board & Classroom Tools',
                      fontWeight: FontWeight.w500,
                      fontsize: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GoogleMonstserratWidgets(
                      text: '3 Months Duration',
                      fontWeight: FontWeight.w500,
                      fontsize: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(
                      width: 10,
                    ),
                    GoogleMonstserratWidgets(
                        text: 'Interactive Session',
                        fontWeight: FontWeight.w500,
                        fontsize: 16),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(
                      width: 10,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Teachers Support',
                      fontWeight: FontWeight.w500,
                      fontsize: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(
                      width: 10,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Recorded Videos with Classroom Tools',
                      fontWeight: FontWeight.w500,
                      fontsize: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(
                      width: 10,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Live Doubt Session',
                      fontWeight: FontWeight.w500,
                      fontsize: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(
                      width: 10,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Malayalam and English',
                      fontWeight: FontWeight.w500,
                      fontsize: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(
                      width: 10,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Study Materials',
                      fontWeight: FontWeight.w500,
                      fontsize: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(
                      width: 10,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Fee ₹3999 (Including GST)',
                      fontWeight: FontWeight.w500,
                      fontsize: 16,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      mobileScreen: Container(
        width: MediaQuery.of(context).size.width, color: Colors.white,
        // color: const Color.fromARGB(255, 79, 78, 78).withOpacity(0.1),
        height: 1500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleMonstserratWidgets(
              text: 'Pick Course According To Your Convenience',
              fontsize: 20,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 20,
            ),
            BoldTextWidget(text: 'Industry Oriented Courses'),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainarchanaartist1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Live Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text:
                                  'Live lecture with White Board & Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: '3 Months Duration',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                                text: 'Interactive Session',
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                fontsize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Teachers Support',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Live Doubt Session',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Malayalam and English',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Study Materials',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Fee ₹3999 (Including GST)',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainsanush1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Recorded Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Recorded Videos with Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: '3 Months Duration',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Teachers Support',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Malayalam and English',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Study Materials',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Fee ₹3999 (Including GST)',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/main15archana.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Hybrid Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text:
                                  'Live Lecture with White Board & Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: '3 Months Duration',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                                text: 'Interactive Session',
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                fontsize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Teachers Support',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Recorded Videos with Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Live Doubt Session',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Malayalam and English',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Study Materials',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Fee ₹3999 (Including GST)',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      tabScreen: Container(
        width: MediaQuery.of(context).size.width, color: Colors.white,
        // color: const Color.fromARGB(255, 79, 78, 78).withOpacity(0.1),
        height: 1500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleMonstserratWidgets(
              text: 'Pick Course According To Your Convenience',
              fontsize: 20,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 20,
            ),
            BoldTextWidget(text: 'Industry Oriented Courses'),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainarchanaartist1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Live Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text:
                                  'Live lecture with White Board & Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: '3 Months Duration',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                                text: 'Interactive Session',
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                fontsize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Teachers Support',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Live Doubt Session',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Malayalam and English',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Study Materials',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Fee ₹3999 (Including GST)',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainsanush1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Recorded Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Recorded Videos with Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: '3 Months Duration',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Teachers Support',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Malayalam and English',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Study Materials',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Fee ₹3999 (Including GST)',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/main15archana.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Hybrid Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text:
                                  'Live Lecture with White Board & Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: '3 Months Duration',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                                text: 'Interactive Session',
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                fontsize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Teachers Support',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Recorded Videos with Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Live Doubt Session',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Malayalam and English',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Study Materials',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: GoogleMonstserratWidgets(
                              text: 'Fee ₹3999 (Including GST)',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      verySmallScreen: Container(
        width: MediaQuery.of(context).size.width, color: Colors.white,
        // color: const Color.fromARGB(255, 79, 78, 78).withOpacity(0.1),
        height: 1000,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleMonstserratWidgets(
              text: 'Pick Course According To Your Convenience',
              fontsize: 20,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 20,
            ),
            BoldTextWidget(text: 'Industry Oriented Courses'),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainarchanaartist1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Live Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 6,
                            child: GoogleMonstserratWidgets(
                              text:
                                  'Live lecture with White Board & Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                              text: 'Interactive Session',
                              fontWeight: FontWeight.w500,
                              fontsize: 16),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Live Doubt Session',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 6,
                            child: GoogleMonstserratWidgets(
                              text: 'Fee ₹3999 (Including GST)',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainsanush1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Recorded Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 6,
                            child: GoogleMonstserratWidgets(
                              text: 'Recorded Videos with Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 6,
                            child: GoogleMonstserratWidgets(
                              text: 'Fee ₹3999 (Including GST)',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/main15archana.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Hybrid Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 6,
                            child: GoogleMonstserratWidgets(
                              text:
                                  'Live Lecture with White Board & Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                              text: 'Interactive Session',
                              fontWeight: FontWeight.w500,
                              fontsize: 16),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 6,
                            child: GoogleMonstserratWidgets(
                              text: 'Recorded Videos with Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Live Doubt Session',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 6,
                            child: GoogleMonstserratWidgets(
                              text: 'Fee ₹3999 (Including GST)',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      smallScreen: Container(
        width: MediaQuery.of(context).size.width, color: Colors.white,
        // color: const Color.fromARGB(255, 79, 78, 78).withOpacity(0.1),
        height: 1000,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleMonstserratWidgets(
              text: 'Pick Course According To Your Convenience',
              fontsize: 20,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 20,
            ),
            BoldTextWidget(text: 'Industry Oriented Courses'),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainarchanaartist1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Live Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 5,
                            child: GoogleMonstserratWidgets(
                              text:
                                  'Live lecture with White Board & Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                              text: 'Interactive Session',
                              fontWeight: FontWeight.w500,
                              fontsize: 16),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Live Doubt Session',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Fee ₹3999 (Including GST)',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainsanush1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Recorded Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 5,
                            child: GoogleMonstserratWidgets(
                              text: 'Recorded Videos with Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Fee ₹3999 (Including GST)',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/main15archana.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Hybrid Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 5,
                            child: GoogleMonstserratWidgets(
                              text:
                                  'Live Lecture with White Board & Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                              text: 'Interactive Session',
                              fontWeight: FontWeight.w500,
                              fontsize: 16),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 5,
                            child: GoogleMonstserratWidgets(
                              text: 'Recorded Videos with Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Live Doubt Session',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Fee ₹3999 (Including GST)',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      mediumScreen: Container(
        width: MediaQuery.of(context).size.width, color: Colors.white,
        // color: const Color.fromARGB(255, 79, 78, 78).withOpacity(0.1),
        height: 1200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleMonstserratWidgets(
              text: 'Pick Course According To Your Convenience',
              fontsize: 20,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 20,
            ),
            BoldTextWidget(text: 'Industry Oriented Courses'),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainarchanaartist1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Live Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          // Text(
                          //   'Live lecture with White Board & Classroom Tools',
                          //   softWrap: true,
                          //   style: GoogleFonts.montserrat(
                          //     fontSize: 16,
                          //     fontWeight: FontWeight.w500,
                          //   ),
                          // ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            child: GoogleMonstserratWidgets(
                              text:
                                  'Live lecture with White Board & Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                              text: 'Interactive Session',
                              fontWeight: FontWeight.w500,
                              fontsize: 16),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Live Doubt Session',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Fee ₹3999 (Including GST)',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainsanush1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Recorded Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            child: GoogleMonstserratWidgets(
                              text: 'Recorded Videos with Classroom Tools',
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Fee ₹3999 (Including GST)',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/main15archana.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Hybrid Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            child: GoogleMonstserratWidgets(
                              text:
                                  'Live Lecture with White Board & Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                              text: 'Interactive Session',
                              fontWeight: FontWeight.w500,
                              fontsize: 16),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            child: GoogleMonstserratWidgets(
                              text: 'Recorded Videos with Classroom Tools',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Live Doubt Session',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Fee ₹3999 (Including GST)',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      largeScreen: Container(
        width: MediaQuery.of(context).size.width, color: Colors.white,
        // color: const Color.fromARGB(255, 79, 78, 78).withOpacity(0.1),
        height: 1500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleMonstserratWidgets(
              text: 'Pick Course According To Your Convenience',
              fontsize: 20,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 20,
            ),
            BoldTextWidget(text: 'Industry Oriented Courses'),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainarchanaartist1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Live Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            child: GoogleMonstserratWidgets(
                              overflow: TextOverflow.ellipsis,
                              text:
                                  'Live lecture with White Board & Classroom Tools',
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                              text: 'Interactive Session',
                              fontWeight: FontWeight.w500,
                              fontsize: 16),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Live Doubt Session',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Fee ₹3999 (Including GST)',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/mainsanush1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Recorded Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Recorded Videos with Classroom Tools',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: '3 Months Duration',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Teachers Support',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Fee ₹3999 (Including GST)',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                  CourseShowcaseContainer(
                    points: [
                      Image.asset('images/main15archana.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'Hybrid Courses',
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            child: GoogleMonstserratWidgets(
                              overflow: TextOverflow.ellipsis,
                              text:
                                  'Live lecture with White Board & Classroom Tools',
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            child: GoogleMonstserratWidgets(
                              text: '3 Months Duration',
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            child: GoogleMonstserratWidgets(
                                text: 'Interactive Session',
                                fontWeight: FontWeight.w500,
                                fontsize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            child: GoogleMonstserratWidgets(
                              text: 'Teachers Support',
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Recorded Videos with Classroom Tools',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Live Doubt Session',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Malayalam and English',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Study Materials',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          GoogleMonstserratWidgets(
                            text: 'Fee ₹3999 (Including GST)',
                            fontWeight: FontWeight.w500,
                            fontsize: 16,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
