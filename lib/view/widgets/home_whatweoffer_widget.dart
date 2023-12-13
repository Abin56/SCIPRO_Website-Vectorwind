import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/view/widgets/google_montserrat_widget.dart';
import 'package:scipro_website/view/widgets/responsive_widget.dart';

class WhatWeOfferWidget extends StatelessWidget {
  const WhatWeOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mediumScreen: Container(
        height: 500,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 400,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/knowledge-transfer.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'High Quality Teaching',
                      fontsize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Our teachers are well experienced professionals in research as well as education in various domain.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/24-hours-support.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: '24/7 Support Available',
                      fontsize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SciPro team is dedicated to providing not only teaching but also deliver seamless support to overcome difficulties and ensures safe landing in dream runway',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/consulting.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Interactive eLearning',
                      fontsize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'To provide a best virtual class room learning experience we utilize the latest technology and tools that makes sure the students are 100% satisfied with the learning and produce fruitful results.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      mScreen: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, bottom: 50),
          child: Column(
            children: [
              Image.asset(
                'images/knowledge-transfer.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              GoogleMonstserratWidgets(
                text: 'High Quality Teaching',
                fontsize: 15,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Our teachers are well experienced professionals in research as well as education in various domain.',
                softWrap: true,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'images/24-hours-support.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              GoogleMonstserratWidgets(
                text: '24/7 Support Available',
                fontsize: 15,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'SciPro team is dedicated to providing not only teaching but also deliver seamless support to overcome difficulties and ensures safe landing in dream runway',
                softWrap: true,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'images/consulting.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              GoogleMonstserratWidgets(
                text: 'Interactive eLearning',
                fontsize: 15,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'To provide a best virtual class room learning experience we utilize the latest technology and tools that makes sure the students are 100% satisfied with the learning and produce fruitful results.',
                softWrap: true,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
      // mScreen: Container(
      //   height: 500,
      //   color: Colors.white,
      //   width: MediaQuery.of(context).size.width,
      //   child: Center(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Container(
      //           width: 400,
      //           height: 300,
      //           child: Column(
      //             children: [
      //               Image.asset(
      //                 'images/knowledge-transfer.png',
      //                 width: 25,
      //                 height: 25,
      //               ),
      //               SizedBox(
      //                 height: 20,
      //               ),
      //               GoogleMonstserratWidgets(
      //                 text: 'Face-to-Face Teaching',
      //                 fontsize: 15,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //               SizedBox(
      //                 height: 20,
      //               ),
      //               Text(
      //                 'Dictum varius duis at consectetur lorem donec massa sapien faucibus morbi tempus.',
      //                 softWrap: true,
      //                 textAlign: TextAlign.center,
      //                 style: GoogleFonts.montserrat(
      //                   letterSpacing: 1,
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.w500,
      //                   color: Colors.black,
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         Container(
      //           width: 400,
      //           height: 300,
      //           child: Column(
      //             children: [
      //               Image.asset(
      //                 'images/24-hours-support.png',
      //                 width: 25,
      //                 height: 25,
      //               ),
      //               SizedBox(
      //                 height: 20,
      //               ),
      //               GoogleMonstserratWidgets(
      //                 text: '24/7 Support Available',
      //                 fontsize: 15,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //               SizedBox(
      //                 height: 20,
      //               ),
      //               Text(
      //                 'Ante metus dictum at lorem tempor commodo ullamcorper lacus cos imperdieteuis.',
      //                 softWrap: true,
      //                 textAlign: TextAlign.center,
      //                 style: GoogleFonts.montserrat(
      //                   letterSpacing: 1,
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.w500,
      //                   color: Colors.black,
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         Container(
      //           width: 400,
      //           height: 300,
      //           child: Column(
      //             children: [
      //               Image.asset(
      //                 'images/consulting.png',
      //                 width: 25,
      //                 height: 25,
      //               ),
      //               SizedBox(
      //                 height: 20,
      //               ),
      //               GoogleMonstserratWidgets(
      //                 text: 'Interactive eLearning',
      //                 fontsize: 15,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //               SizedBox(
      //                 height: 20,
      //               ),
      //               Text(
      //                 'Mattis ullamcorper velit ullamcorper morbi tincidunt ornar lacus viera eget gravida.',
      //                 softWrap: true,
      //                 textAlign: TextAlign.center,
      //                 style: GoogleFonts.montserrat(
      //                   letterSpacing: 1,
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.w500,
      //                   color: Colors.black,
      //                 ),
      //               )
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      mobileScreen: Container(
        height: 500,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 200,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/knowledge-transfer.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'High Quality Teaching',
                      fontsize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Our teachers are well experienced professionals in research as well as education in various domain.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/24-hours-support.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: '24/7 Support Available',
                      fontsize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SciPro team is dedicated to providing not only teaching but also deliver seamless support to overcome difficulties and ensures safe landing in dream runway',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/consulting.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Interactive eLearning',
                      fontsize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'To provide a best virtual class room learning experience we utilize the latest technology and tools that makes sure the students are 100% satisfied with the learning and produce fruitful results.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      tabScreen: Container(
        height: 550,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 200,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/knowledge-transfer.png',
                      width: 16,
                      height: 16,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'High Quality Teaching',
                      fontsize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Our teachers are well experienced professionals in research as well as education in various domain.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/24-hours-support.png',
                      width: 16,
                      height: 16,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: '24/7 Support Available',
                      fontsize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SciPro team is dedicated to providing not only teaching but also deliver seamless support to overcome difficulties and ensures safe landing in dream runway',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/consulting.png',
                      width: 16,
                      height: 16,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Interactive eLearning',
                      fontsize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'To provide a best virtual class room learning experience we utilize the latest technology and tools that makes sure the students are 100% satisfied with the learning and produce fruitful results.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      verySmallScreen: Container(
        height: 500,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 250,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/knowledge-transfer.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'High Quality Teaching',
                      fontsize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Our teachers are well experienced professionals in research as well as education in various domain.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/24-hours-support.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: '24/7 Support Available',
                      fontsize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SciPro team is dedicated to providing not only teaching but also deliver seamless support to overcome difficulties and ensures safe landing in dream runway',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/consulting.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Interactive eLearning',
                      fontsize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'To provide a best virtual class room learning experience we utilize the latest technology and tools that makes sure the students are 100% satisfied with the learning and produce fruitful results.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      smallScreen: Container(
        height: 500,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 300,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/knowledge-transfer.png',
                      width: 47,
                      height: 47,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'High Quality Teaching',
                      fontsize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Our teachers are well experienced professionals in research as well as education in various domain.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/24-hours-support.png',
                      width: 47,
                      height: 47,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: '24/7 Support Available',
                      fontsize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SciPro team is dedicated to providing not only teaching but also deliver seamless support to overcome difficulties and ensures safe landing in dream runway',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/consulting.png',
                      width: 47,
                      height: 47,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Interactive eLearning',
                      fontsize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'To provide a best virtual class room learning experience we utilize the latest technology and tools that makes sure the students are 100% satisfied with the learning and produce fruitful results.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      largeScreen: Container(
        height: 500,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 400,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/knowledge-transfer.png',
                      width: 70,
                      height: 70,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'High Quality Teaching',
                      fontsize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Our teachers are well experienced professionals in research as well as education in various domain.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/24-hours-support.png',
                      width: 70,
                      height: 70,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: '24/7 Support Available',
                      fontsize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SciPro team is dedicated to providing not only teaching but also deliver seamless support to overcome difficulties and ensures safe landing in dream runway',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'images/consulting.png',
                      width: 70,
                      height: 70,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleMonstserratWidgets(
                      text: 'Interactive eLearning',
                      fontsize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'To provide a best virtual class room learning experience we utilize the latest technology and tools that makes sure the students are 100% satisfied with the learning and produce fruitful results.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
