import 'package:flutter/material.dart';
import 'package:scipro_website/view/home/home%20appbar/appbar.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../resources/assets_manager.dart';
import '../colors/colors.dart';
import '../fonts/google_poppins.dart';
import 'footer/footer.dart';
import 'home about us/about_us.dart';
import 'home new intro/new_intro.dart';
import 'industry oriented courses/industry_oriented_courses.dart';
import 'scipro offers/scipro_offers.dart';
import 'scipro top courses/top_courses.dart';

class SciproHomePage extends StatelessWidget {
  // late ScrollController _scrollController;

  SciproHomePage({Key? key}) : super(key: key) {
    // initialize scroll controllers
    // _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: cBlack,
        title:const Padding(
          padding: EdgeInsets.all(15),
          child: AppBarWidget(),
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveWebSite.isMobile(context)
                ? const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IntroHome(),
                      SciproOffers(),
                      HomeAboutUs(),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: SizedBox(height: 400, child: TopCourses()),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: IndustryOrientedCourses(),
                      ),
                      SizedBox(
                        height: 900,
                        width: 700,
                        child: FooterContainerWidget(),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      // const AppBarWidget(),
                      const IntroHome(),
                      const SciproOffers(),
                      const HomeAboutUs(),
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: SizedBox(
                          height: 900,
                          width: 1200,
                          child: TopCourses(),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: IndustryOrientedCourses(),
                      ),
                      SizedBox(
                          height:
                              ResponsiveWebSite.isTablet(context) ? 900 : 600,
                          child: const FooterContainerWidget()),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

List<Widget> AppBarList = [
  SizedBox(
    height: 50,
    child: Image.asset(
      ImageAssets.scipro,
      height: 100,
      width: 100,
    ),
  ), //////////////////////////////////////////////////////0
  const Icon(Icons.phone,
      color:
          cWhite), /////////////////////////////////////////////////////////////////////1
  GooglePoppinsWidgets(
    text: '+919048900024',
    fontsize: 14,
    color: cWhite,
    fontWeight: FontWeight.bold,
  ), //////////////////////////////////////////////////////////////////////////////////////2
  const Icon(Icons.mail,
      // color: Color.fromRGBO(255, 255, 255, 1),
      color:
          cWhite), /////////////////////////////////////////////////////////////////////////////////////////3
  GooglePoppinsWidgets(
    text: 'info@scipro.in',
    fontsize: 14,
    color: cWhite,
    fontWeight: FontWeight.bold,
  ),
];

