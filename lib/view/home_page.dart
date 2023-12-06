import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/resources/assets_manager.dart';
import 'package:scipro_website/resources/color_manager.dart';
import 'package:scipro_website/view/widgets/common_button_widget.dart';
import 'package:scipro_website/view/widgets/google_montserrat_widget.dart';
import 'package:scipro_website/view/widgets/home_aboutus_widget.dart';
import 'package:scipro_website/view/widgets/home_industry_oriented_widget.dart';
import 'package:scipro_website/view/widgets/home_intro_container.dart';
import 'package:scipro_website/view/widgets/home_top_courses_widget.dart';
import 'package:scipro_website/view/widgets/home_whatweoffer_widget.dart';
import 'package:scipro_website/view/widgets/responsive_widget.dart';
import 'package:scipro_website/view/widgets/semi_circle_painter.dart';

class Scipro extends StatelessWidget {
  const Scipro({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // ResponsiveWidget(
        //   verySmallScreen: VerySmallScreen(),
        //   smallScreen: SmallScreen(),
        //   mediumScreen: MediumScreen(),
        //   largeScreen:
        Scaffold(
            backgroundColor: ColorManager.primary,
            //  backgroundColor: ColorManager.primary, // ba,ckgroundColor: Colors.black,
            // appBar: AppBar(
            //   toolbarHeight: 100,
            //   automaticallyImplyLeading: false,
            //   elevation: 0,
            //   title: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         width: MediaQuery.of(context).size.width / 3,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Image.asset(
            //               'assests/images/fg.png',
            //               height: 100,
            //               width: 100,
            //               // color: socilMediIconColor,
            //               //Color(0xFF17BDB5),
            //             ),
            //             Row(
            //               children: [
            //                 Icon(Icons.phone),
            //                 SizedBox(
            //                   width: 10,
            //                 ),
            //                 GoogleMonstserratWidgets(
            //                   text: '+91 9048900024',
            //                   fontsize: 15,
            //                 ),
            //               ],
            //             ),
            //             Row(
            //               children: [
            //                 Icon(Icons.mail),
            //                 SizedBox(
            //                   width: 10,
            //                 ),
            //                 GoogleMonstserratWidgets(
            //                   text: 'info@scipro.in',
            //                   fontsize: 15,
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //       Row(
            //         children: [
            //           TextButton(
            //               onPressed: () {},
            //               child: GoogleMonstserratWidgets(
            //                 text: 'Login',
            //                 fontsize: 20,
            //                 fontWeight: FontWeight.bold,
            //               ))
            //         ],
            //       )
            //     ],
            //   ),
            //   backgroundColor: const Color.fromARGB(255, 255, 64, 0),
            // ),
            body:
                //  CustomScrollView(slivers: <Widget>[
                //   SliverAppBar(
                //     expandedHeight: 200.0,
                //     pinned: true,
                //     flexibleSpace: FlexibleSpaceBar(
                //       title: Text('Scrollable Dropdown App Bar'),
                //       background: Image.network(
                //         'https://example.com/your_image.jpg', // Replace with your image URL
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //     actions: [
                //       IconButton(
                //         icon: Icon(Icons.arrow_drop_down),
                //         onPressed: () {
                //           // Add your dropdown menu logic here
                //           // For example, you can show a BottomSheet or a PopupMenuButton.
                //         },
                //       ),
                //     ],
                //   ),]),
                ListView(children: [
              ResponsiveWidget(
                mScreen: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                ImageAssets.scipro,
                                height: 100,
                                width: 100,
                                // color: socilMediIconColor,
                                //Color(0xFF17BDB5),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GoogleMonstserratWidgets(
                                    text: '+91 9048900024',
                                    fontsize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  // MyHoverText(
                                  //   text: 'Hover me!',
                                  //   defaultColor: Colors.black,
                                  //   hoverColor: Colors.blue,
                                  // ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GoogleMonstserratWidgets(
                                    text: 'info@scipro.in',
                                    fontWeight: FontWeight.bold,
                                    fontsize: 15,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                mobileScreen: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50, left: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                ImageAssets.scipro,
                                height: 100,
                                width: 100,
                                // color: socilMediIconColor,
                                //Color(0xFF17BDB5),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GoogleMonstserratWidgets(
                                    text: '+91 9048900024',
                                    fontsize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  // MyHoverText(
                                  //   text: 'Hover me!',
                                  //   defaultColor: Colors.black,
                                  //   hoverColor: Colors.blue,
                                  // ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GoogleMonstserratWidgets(
                                    text: 'info@scipro.in',
                                    fontWeight: FontWeight.bold,
                                    fontsize: 15,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                                      onPressFunction: () {},
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
                      ]),
                ),
                tabScreen: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50, left: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                ImageAssets.scipro,
                                height: 100,
                                width: 100,
                                // color: socilMediIconColor,
                                //Color(0xFF17BDB5),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GoogleMonstserratWidgets(
                                    text: '+91 9048900024',
                                    fontsize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  // MyHoverText(
                                  //   text: 'Hover me!',
                                  //   defaultColor: Colors.black,
                                  //   hoverColor: Colors.blue,
                                  // ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GoogleMonstserratWidgets(
                                    text: 'info@scipro.in',
                                    fontWeight: FontWeight.bold,
                                    fontsize: 15,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                      ]),
                ),
                verySmallScreen: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50, left: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                ImageAssets.scipro,
                                height: 100,
                                width: 100,
                                // color: socilMediIconColor,
                                //Color(0xFF17BDB5),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GoogleMonstserratWidgets(
                                    text: '+91 9048900024',
                                    fontsize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  // MyHoverText(
                                  //   text: 'Hover me!',
                                  //   defaultColor: Colors.black,
                                  //   hoverColor: Colors.blue,
                                  // ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GoogleMonstserratWidgets(
                                    text: 'info@scipro.in',
                                    fontWeight: FontWeight.bold,
                                    fontsize: 15,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                      ]),
                ),
                smallScreen: Container(
                  color: ColorManager.primary,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50, left: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                ImageAssets.scipro,
                                height: 80,
                                width: 80,
                                // color: socilMediIconColor,
                                //Color(0xFF17BDB5),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GoogleMonstserratWidgets(
                                    text: '+91 9048900024',
                                    fontsize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  // MyHoverText(
                                  //   text: 'Hover me!',
                                  //   defaultColor: Colors.black,
                                  //   hoverColor: Colors.blue,
                                  // ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GoogleMonstserratWidgets(
                                    text: 'info@scipro.in',
                                    fontWeight: FontWeight.bold,
                                    fontsize: 15,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                                      onPressFunction: () {},
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
                      ]),
                ),
                mediumScreen: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50, left: 50),
                          child: Container(
                            color: ColorManager.primary,
                            width: MediaQuery.of(context).size.width / 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  ImageAssets.scipro,
                                  height: 80,
                                  width: 80,
                                  // color: socilMediIconColor,
                                  //Color(0xFF17BDB5),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GoogleMonstserratWidgets(
                                      text: '+91 9048900024',
                                      fontsize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    // MyHoverText(
                                    //   text: 'Hover me!',
                                    //   defaultColor: Colors.black,
                                    //   hoverColor: Colors.blue,
                                    // ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.mail,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GoogleMonstserratWidgets(
                                      text: 'info@scipro.in',
                                      fontWeight: FontWeight.bold,
                                      fontsize: 15,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
                                      onPressFunction: () {},
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
                      ]),
                ),
                largeScreen: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50, left: 50),
                          child: Container(
                            color: ColorManager.primary,
                            width: MediaQuery.of(context).size.width / 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  ImageAssets.scipro,
                                  height: 100,
                                  width: 100,
                                  // color: socilMediIconColor,
                                  //Color(0xFF17BDB5),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GoogleMonstserratWidgets(
                                      text: '+91 9048900024',
                                      fontsize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    // MyHoverText(
                                    //   text: 'Hover me!',
                                    //   defaultColor: Colors.black,
                                    //   hoverColor: Colors.blue,
                                    // ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.mail,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GoogleMonstserratWidgets(
                                      text: 'info@scipro.in',
                                      fontWeight: FontWeight.bold,
                                      fontsize: 15,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
                      ]),
                ),
              ),
              Stack(
                children: [
                  HomeIntroContainer(),
                  Positioned(
                    bottom: -200,
                    right: -200,
                    child: Container(
                      width: 200,
                      height: 100,
                      child: CustomPaint(
                        painter: SemiCirclePainter(),
                      ),
                    ),
                  )
                ],
              ),
              WhatWeOfferWidget(),
              HomeAboutUsWidget(),
              HomeTopCoursesWidget(),
              HomeIndustryOrientedCoursesWidget()
            ]));
  }
}






// ignore_for_file: must_be_immutable
