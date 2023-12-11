import 'package:flutter/material.dart';
import 'package:scipro_website/view/home/home%20appbar/appbar.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import 'footer/footer.dart';
import 'home about us/about_us.dart';
import 'home intro content/home_intro_content.dart';
import 'industry oriented courses/industry_oriented_courses.dart';
import 'scipro offers/scipro_offers.dart';
import 'scipro top courses/top_courses.dart';

class SciproHomePage extends StatelessWidget {
  const SciproHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: ColorManager.primary,
        body: SingleChildScrollView(
          child: Column(children: [
            ResponsiveWebSite.isMobile(context)? const Column(children: [
              AppBarWidget(),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: homeScreenPictureWidget(),
              ),
              SciproOffers(),
              HomeAboutUs(),
              TopCourses(),
              IndustryOrientedCourses(),
               SizedBox(height: 500,width: 700,child: FooterContainerWidget(),)
            ],)
                
                
               
              
                :  const Column(
                  children: [
                    AppBarWidget(),
                     homeScreenPictureWidget(),
                    SciproOffers(),
                    HomeAboutUs(),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 900,
                        width: 1200,
                     child:   TopCourses()),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: IndustryOrientedCourses(),
                    ),SizedBox(height: 500,child: FooterContainerWidget(),)
                  ],
                )
          ]),
        ));
  }
}


