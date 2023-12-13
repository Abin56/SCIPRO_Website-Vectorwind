import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/resources/assets_manager.dart';
import 'package:scipro_website/view/fonts/google_monstre.dart';
import 'package:scipro_website/view/widgets/bold_text_widget.dart';
import 'package:scipro_website/view/widgets/responsive_widget.dart';

class HomeAboutUsWidget extends StatelessWidget {
  const HomeAboutUsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mScreen: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GoogleMonstserratWidgets(
              text: 'About Us',
              fontsize: 18,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                //width: MediaQuery.of(context).size.width / 2,
                child: Text(
              'Qualified And Highly Equipped Tutors',
              softWrap: true,
              style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Container(
              // width: MediaQuery.of(context).size.width / 2.5,
              child: Text(
                ImageAssets.sciproDesription,
                softWrap: true,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  height: 2,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('images/mainarchanaartist1.jpg'),
                      fit: BoxFit.cover),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      mobileScreen: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        height: 800,
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GoogleMonstserratWidgets(
                      text: 'About Us',
                      fontsize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          'Qualified And Highly Equipped Tutors',
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 600,
                      child: Text(
                        ImageAssets.sciproDesription,
                        softWrap: true,
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          height: 2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/mainarchanaartist1.jpg'),
                        fit: BoxFit.cover),
                    color: Colors.blue,
                  ),
                ),
              ),
              //  Positioned(
              //   left: -100,
              //   bottom: -100,
              //   child: Container(
              //     height: 400,
              //     width: 400,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       image: DecorationImage(
              //           image:
              //               AssetImage('images/mainarchanaartist1.jpg'),
              //           fit: BoxFit.cover),
              //       color: Colors.blue,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
      tabScreen: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        height: 800,
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GoogleMonstserratWidgets(
                      text: 'About Us',
                      fontsize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          'Qualified And Highly Equipped Tutors',
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 600,
                      child: Text(
                        ImageAssets.sciproDesription,
                        softWrap: true,
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          height: 2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/mainarchanaartist1.jpg'),
                        fit: BoxFit.cover),
                    color: Colors.blue,
                  ),
                ),
              ),
              //  Positioned(
              //   left: -100,
              //   bottom: -100,
              //   child: Container(
              //     height: 400,
              //     width: 400,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       image: DecorationImage(
              //           image:
              //               AssetImage('images/mainarchanaartist1.jpg'),
              //           fit: BoxFit.cover),
              //       color: Colors.blue,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
      verySmallScreen: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        height: 800,
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GoogleMonstserratWidgets(
                      text: 'About Us',
                      fontsize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          'Qualified And Highly Equipped Tutors',
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 600,
                      child: Text(
                        ImageAssets.sciproDesription,
                        softWrap: true,
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          height: 2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/mainarchanaartist1.jpg'),
                        fit: BoxFit.cover),
                    color: Colors.blue,
                  ),
                ),
              ),
              //  Positioned(
              //   left: -100,
              //   bottom: -100,
              //   child: Container(
              //     height: 400,
              //     width: 400,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       image: DecorationImage(
              //           image:
              //               AssetImage('images/mainarchanaartist1.jpg'),
              //           fit: BoxFit.cover),
              //       color: Colors.blue,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
      smallScreen: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        height: 800,
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GoogleMonstserratWidgets(
                      text: 'About Us',
                      fontsize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          'Qualified And Highly Equipped Tutors',
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 600,
                      child: Text(
                        ImageAssets.sciproDesription,
                        softWrap: true,
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          height: 2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/mainarchanaartist1.jpg'),
                        fit: BoxFit.cover),
                    color: Colors.blue,
                  ),
                ),
              ),
              //  Positioned(
              //   left: -100,
              //   bottom: -100,
              //   child: Container(
              //     height: 400,
              //     width: 400,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       image: DecorationImage(
              //           image:
              //               AssetImage('images/mainarchanaartist1.jpg'),
              //           fit: BoxFit.cover),
              //       color: Colors.blue,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
      mediumScreen: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        height: 500,
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GoogleMonstserratWidgets(
                      text: 'About Us',
                      fontsize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          'Qualified And Highly Equipped Tutors',
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Text(
                        ImageAssets.sciproDesription,
                        softWrap: true,
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          height: 2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/mainarchanaartist1.jpg'),
                        fit: BoxFit.cover),
                    color: Colors.blue,
                  ),
                ),
              ),
              //  Positioned(
              //   left: -100,
              //   bottom: -100,
              //   child: Container(
              //     height: 400,
              //     width: 400,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       image: DecorationImage(
              //           image:
              //               AssetImage('images/mainarchanaartist1.jpg'),
              //           fit: BoxFit.cover),
              //       color: Colors.blue,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
      largeScreen: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        height: 700,
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width / 15.3)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GoogleMonstserratWidgets(
                        text: 'About Us',
                        fontsize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: BoldTextWidget(
                            text: 'Qualified And Highly Equipped Tutors'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Text(
                          ImageAssets.sciproDesription,
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            height: 2,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/mainarchanaartist1.jpg'),
                        fit: BoxFit.cover),
                    color: Colors.blue,
                  ),
                ),
              ),
              //  Positioned(
              //   left: -100,
              //   bottom: -100,
              //   child: Container(
              //     height: 400,
              //     width: 400,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       image: DecorationImage(
              //           image:
              //               AssetImage('images/mainarchanaartist1.jpg'),
              //           fit: BoxFit.cover),
              //       color: Colors.blue,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
